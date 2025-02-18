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
            $response['location_districts'] = DB::table(TABLE_LOCATION_DISTRICTS)
                ->select('id', 'name')
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
            $query=DB::table(TABLE_ANALYSIS_DATA.' as ad');
            $query->select('ad.*');
            $query->join(TABLE_CROP_TYPES.' as crop_types', 'crop_types.id', '=', 'ad.type_id');
            $query->join(TABLE_CROPS.' as crops', 'crops.id', '=', 'crop_types.crop_id');
            $query->addSelect('crops.id as crop_id');
            if($options['crop_id']>0){
                $query->where('crop_types.crop_id','=',$options['crop_id']);
                if($options['crop_type_id']>0){
                    $query->where('ad.type_id','=',$options['crop_type_id']);
                }
            }
            if($options['district_id']>0){
                $query->where('ad.district_id','=',$options['district_id']);
//                if($options['upazila_id']>0){
//                    $query->where('ad.upazila_id','=',$options['upazila_id']);
//                }
            }
            $query->orderBy('crops.ordering', 'ASC');
            $query->orderBy('crops.id', 'ASC');
            $query->orderBy('crop_types.ordering', 'ASC');
            $query->orderBy('crop_types.id', 'ASC');
            $query->orderBy('ad.district_id', 'ASC');
            $response['items']=$query->get();
            //$response['items']=$options;
            return response()->json($response);
        } else {
            return response()->json(['error' => 'ACCESS_DENIED', 'messages' => __('You do not have access on this page')]);
        }
    }
}

