<?php
namespace App\Http\Controllers\reports;

use App\Http\Controllers\RootController;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

use App\Helpers\TaskHelper;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

use Illuminate\Validation\Rule;


class AnalysisReportController extends RootController
{
    public $api_url = 'reports/analysis';
    public $permissions;

    public function __construct()
    {
        parent::__construct();
        $this->permissions = TaskHelper::getPermissions($this->api_url, $this->user);
    }

    public function initialize(): JsonResponse
    {
        if ($this->permissions->action_0 == 1) {
            $response = [];
            $response['error'] ='';
            $response['permissions']=$this->permissions;
            $response['hidden_columns']=TaskHelper::getHiddenColumns($this->api_url,$this->user);
            $response['analysis_years'] = DB::table(TABLE_ANALYSIS_YEARS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['location_parts'] = DB::table(TABLE_LOCATION_PARTS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['location_areas'] = DB::table(TABLE_LOCATION_AREAS)
                ->select('id', 'name','part_id')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['location_territories'] = DB::table(TABLE_LOCATION_TERRITORIES)
                ->select('id', 'name','area_id')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['location_divisions'] = DB::table(TABLE_LOCATION_DIVISIONS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['location_districts'] = DB::table(TABLE_LOCATION_DISTRICTS)
                ->select('id', 'name', 'division_id')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();

            $response['location_upazilas'] = DB::table(TABLE_LOCATION_UPAZILAS)
                ->select('id', 'name','district_id')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['location_unions'] = DB::table(TABLE_LOCATION_UNIONS)
                ->select('id', 'name','upazila_id')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['crops'] = DB::table(TABLE_CROPS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['crop_types'] = DB::table(TABLE_CROP_TYPES)
                ->select('id', 'name','crop_id')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();

            $response['principals'] = DB::table(TABLE_PRINCIPALS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['competitors'] = DB::table(TABLE_COMPETITORS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            return response()->json($response);
        } else {
            return response()->json(['error' => 'ACCESS_DENIED', 'messages' => __('You do not have access on this page')]);
        }
    }

    public function getItems(Request $request): JsonResponse
    {
        if ($this->permissions->action_0 == 1) {
            $response = [];
            $response['error'] ='';
            $options = $request->input('options');
            $district_ids=[];
            $upazila_ids=[];
            if($options['upazila_id']>0){
                $upazila_ids[]=$options['upazila_id'];
                $district_ids[]=0;
                $result = DB::table(TABLE_LOCATION_UPAZILAS)->find($options['upazila_id']);
                if ($result) {
                    $district_ids[]=$result->district_id;
                }
            }
            else if($options['district_id']>0){
                $district_ids[]=$options['district_id'];
            }
            else if($options['division_id']>0){
                $results=DB::table(TABLE_LOCATION_DISTRICTS)->where('division_id',$options['division_id'])->get();
                if($results){
                    foreach ($results as $result){
                        $district_ids[]=$result->id;
                    }
                }
            }
            else if($options['territory_id']>0){
                $upazila_ids[0]=0;
                $district_ids[0]=0;
                $results=DB::table(TABLE_LOCATION_UPAZILAS)->select('district_id','id')->where('territory_id',$options['territory_id'])->get();
                if($results){
                    foreach ($results as $result){
                        $district_ids[$result->district_id]=$result->district_id;
                        $upazila_ids[$result->id]=$result->id;
                    }
                }
            }
            else if($options['area_id']>0){
                $query=DB::table(TABLE_LOCATION_UPAZILAS.' as upazilas');
                $query->select('upazilas.district_id');
                $query->distinct();
                $query->leftJoin(TABLE_LOCATION_TERRITORIES.' as territories', 'territories.id', '=', 'upazilas.territory_id');
                $query->where('territories.area_id','=',$options['area_id']);
                $results=$query->get();
                if($results){
                    foreach ($results as $result){
                        $district_ids[]=$result->district_id;
                    }
                }
            }
            else if($options['part_id']>0){
                $query=DB::table(TABLE_LOCATION_UPAZILAS.' as upazilas');
                $query->select('upazilas.district_id');
                $query->distinct();
                $query->leftJoin(TABLE_LOCATION_TERRITORIES.' as territories', 'territories.id', '=', 'upazilas.territory_id');
                $query->leftJoin(TABLE_LOCATION_AREAS.' as areas', 'areas.id', '=', 'territories.area_id');
                $query->where('areas.part_id','=',$options['part_id']);
                $results=$query->get();
                if($results){
                    foreach ($results as $result){
                        $district_ids[]=$result->district_id;
                    }
                }
            }
            $query=DB::table(TABLE_ANALYSIS_DATA.' as ad');
            $query->select('ad.*');
            $query->join(TABLE_CROP_TYPES.' as crop_types', 'crop_types.id', '=', 'ad.type_id');
            $query->addSelect('crop_types.crop_id');
            if($options['crop_id']>0){
                $query->where('crop_types.crop_id','=',$options['crop_id']);
                if($options['crop_type_id']>0){
                    $query->where('ad.type_id','=',$options['crop_type_id']);
                }
            }
            if(sizeof($district_ids)>0){
                $query->whereIn('ad.district_id',$district_ids);
            }
            $results=$query->get();

            if(sizeof($upazila_ids)>0){
                $items=[];
                $response['items']=$items;
            }
            else{
                $response['items']=$results;
            }
            return response()->json($response);
        } else {
            return response()->json(['error' => 'ACCESS_DENIED', 'messages' => __('You do not have access on this page')]);
        }
    }
}

