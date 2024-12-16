<?php
namespace App\Http\Controllers\research;

use App\Http\Controllers\RootController;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

use App\Helpers\TaskHelper;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

use Illuminate\Validation\Rule;


class ResearchSalesTeamController extends RootController
{
    public $api_url = 'research/research_sales_team';
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
            $response['crops'] = DB::table(TABLE_CROPS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['crop_types'] = DB::table(TABLE_CROP_TYPES.' as crop_types')
                ->select('crop_types.*')
                ->join(TABLE_CROPS.' as crops', 'crops.id', '=', 'crop_types.crop_id')
                ->addSelect('crops.name as crop_name')
                ->orderBy('crops.ordering', 'ASC')
                ->orderBy('crops.id', 'ASC')
                ->orderBy('crop_types.ordering', 'ASC')
                ->orderBy('crop_types.id', 'ASC')
                ->where('crop_types.status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['location_districts'] = DB::table(TABLE_LOCATION_DISTRICTS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            return response()->json($response);

        } else {
            return response()->json(['error' => 'ACCESS_DENIED', 'messages' => __('You do not have access on this page')]);
        }
    }

    public function getItem(Request $request,$analysisYearId, $itemId): JsonResponse
    {
        if ($this->permissions->action_0 == 1) {
            $response = [];
            $response['error'] ='';
            $response['location_upazilas'] = DB::table(TABLE_LOCATION_UPAZILAS)
                ->select('id', 'name')
                ->orderBy('ordering', 'ASC')
                ->where('district_id', $itemId)
                ->where('status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $results=DB::table(TABLE_LOCATION_UNIONS.' as unions')
                ->select('unions.*')
                ->join(TABLE_LOCATION_UPAZILAS.' as upazilas', 'upazilas.id', '=', 'unions.upazila_id')
                ->where('upazilas.district_id', $itemId)
                ->orderBy('unions.ordering', 'ASC')
                ->where('unions.status', SYSTEM_STATUS_ACTIVE)
                ->get();
            $response['location_unions']=[];
            foreach ($results as $result){
                $response['location_unions'][$result->upazila_id][]=$result;
            }
            $query=DB::table(TABLE_ANALYSIS_DATA.' as ad');
            $query->select('ad.*');
            $query->where('ad.analysis_year_id','=',$analysisYearId);
            $query->where('ad.district_id','=',$itemId);
            $response['data'] = $query->get()->toArray();
            return response()->json($response);
        } else {
            return response()->json(['error' => 'ACCESS_DENIED', 'messages' => $this->permissions]);
        }
    }
    public function saveItem(Request $request): JsonResponse
    {
        $itemId = $request->input('id', 0);
        //permission checking start

        if (($this->permissions->action_1 != 1) || ($this->permissions->action_2 != 1)) {
            return response()->json(['error' => 'ACCESS_DENIED', 'messages' => __('You do not have Edit access')]);
        }
        //permission checking passed
        $this->checkSaveToken();
        //Input validation start
        $validation_rule = [];
        $validation_rule['crop_type2_id'] = ['required','numeric'];
        $validation_rule['territory_id'] = ['required','numeric'];
        $validation_rule['market_size'] = ['nullable'];
        $validation_rule['sowing_periods'] = ['nullable'];
        $validation_rule['competitor_varieties_ids'] = ['nullable'];
        $validation_rule['reason_sales'] = ['nullable'];
        $itemNew = $request->input('item');
        if(isset($itemNew['sowing_periods'])){
            $itemNew['sowing_periods']=','.implode(',',$itemNew['sowing_periods']).',';
        }
        if(isset($itemNew['competitor_varieties_ids'])){
            $itemNew['competitor_varieties_ids']=','.implode(',',$itemNew['competitor_varieties_ids']).',';
        }

        $itemOld = [];
        $this->validateInputKeys($itemNew, array_keys($validation_rule));

        //edit change checking
        {
            $result = DB::table(TABLE_RESEARCH_CROPS)->select(array_keys($validation_rule))->addSelect('id')->where('territory_id',$itemNew['territory_id'])->where('crop_type2_id',$itemNew['crop_type2_id'])->first();
            if ($result) {
                $itemId=$result->id;
                $itemOld = (array)$result;
                foreach ($itemOld as $key => $oldValue) {
                    if (array_key_exists($key, $itemNew)) {
                        if ($oldValue == $itemNew[$key]) {
                            //unchanged so remove from both
                            unset($itemNew[$key]);
                            unset($itemOld[$key]);
                            unset($validation_rule[$key]);
                        }
                    } else {
                        //will not happen if it comes form vue. removing rule and key for not change
                        unset($validation_rule[$key]);
                        unset($itemOld[$key]);
                    }
                }
            }

        }
        //if itemNew Empty
        if (!$itemNew) {
            return response()->json(['error' => 'VALIDATION_FAILED', 'messages' => 'Nothing was Changed']);
        }
        $this->validateInputValues($itemNew, $validation_rule);
        //TODO validate crop_id
        //Input validation ends
        DB::beginTransaction();
        try {

            $time = Carbon::now();
            $dataHistory = [];
            $dataHistory['table_name'] = TABLE_RESEARCH_CROPS;
            $dataHistory['controller'] = (new \ReflectionClass(__CLASS__))->getShortName();
            $dataHistory['method'] = __FUNCTION__;
            $newId = $itemId;
            if ($itemId > 0) {
                $itemNew['sales_team_updated_by'] = $this->user->id;
                $itemNew['sales_team_updated_at'] = $time;
                DB::table(TABLE_RESEARCH_CROPS)->where('id', $itemId)->update($itemNew);
                $dataHistory['table_id'] = $itemId;
                $dataHistory['action'] = DB_ACTION_EDIT;
            } else {
                $itemNew['created_by'] = $this->user->id;
                $itemNew['created_at'] = $time;
                $newId = DB::table(TABLE_RESEARCH_CROPS)->insertGetId($itemNew);
                $dataHistory['table_id'] = $newId;
                $dataHistory['action'] = DB_ACTION_ADD;
            }
            unset($itemNew['updated_by'],$itemNew['created_by'],$itemNew['created_at'],$itemNew['updated_at']);

            $dataHistory['data_old'] = json_encode($itemOld);
            $dataHistory['data_new'] = json_encode($itemNew);
            $dataHistory['created_at'] = $time;
            $dataHistory['created_by'] = $this->user->id;

            $this->dBSaveHistory($dataHistory, TABLE_SYSTEM_HISTORIES);
            $this->updateSaveToken();
            DB::commit();

            return response()->json(['error' => '', 'messages' => 'Data (' . $newId . ')' . ($itemId > 0 ? 'Updated' : 'Created') . ')  Successfully']);
        }
        catch (\Exception $ex) {
            DB::rollback();
            return response()->json(['error' => 'DB_SAVE_FAILED', 'messages' => __('Failed to save.')]);
        }
    }
}

