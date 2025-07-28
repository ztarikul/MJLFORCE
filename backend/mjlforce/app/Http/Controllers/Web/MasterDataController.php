<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\BusinessTeam;
use App\Models\CustomerGroup;
use App\Models\DistributionCh;
use App\Models\Region;
use App\Models\SoldToParty;
use App\Models\Territory;
use App\Models\TradeSubCategory;
use Illuminate\Container\Attributes\Auth;
use Illuminate\Http\Request;

class MasterDataController extends Controller
{
    //

    public function customerGroupIndex(){
        $customerGroups = CustomerGroup::orderBy('name', 'asc')->get();
        return view('masterData.customerGroup.index', compact('customerGroups'));
    }

    public function customerGroup_store(Request $request){
        $request->validate([
            'name' => 'required|unique:customer_groups',
            'code' => 'nullable|unique:customer_groups',
            'sap_code' => 'nullable|unique:customer_groups'
        ]);

        $customerGroup = new CustomerGroup();
        $customerGroup->name = $request->name;
        $customerGroup->code = $request->code;
        $customerGroup->sap_code = $request->sap_code;
        $customerGroup->description = $request->description;
        $customerGroup->created_by = auth()->user()->id;
        $customerGroup->hostname = request()->ip();
        $customerGroup->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Customer Group created successfully.',
            'redirect_url' => route('masterData.customerGroupIndex')
            
        ]);
    }

    public function customerGroup_edit($id){
        $customerGroup = CustomerGroup::find($id);

        return response()->json([
            'status' => 'success',
            'customerGroup' => $customerGroup
        ]);
    }

    public function customerGroup_update(Request $request, $id){
        $request->validate([
            'name' => 'required|unique:customer_groups,name,' . $id,
            'code' => 'nullable|unique:customer_groups,code,' . $id,
            'sap_code' => 'nullable|unique:customer_groups,sap_code,' . $id
        ]);

        $customerGroup = CustomerGroup::find($id);
        $customerGroup->name = $request->name;
        $customerGroup->code = $request->code;
        $customerGroup->sap_code = $request->sap_code;
        $customerGroup->description = $request->description;
        $customerGroup->update();

        return response()->json([
            'status' => 'success',
            'message' => "Customer Group updated successfully.",
            'redirect_url' => route('masterData.customerGroupIndex')
        ]);
    }

    public function customerGroup_delete($id){
        // dd($id);
        $customerGroup = CustomerGroup::find($id)->delete();
         return response()->json([
            'status' => 'success',
            'message' => "Customer Group deleted successfully.",
            'redirect_url' => route('masterData.customerGroupIndex')
        ]);
    }


    public function businessTeamIndex(){
        $businessTeams = BusinessTeam::orderBy('name', 'asc')->get();
        return view('masterData.businessTeam.index', compact('businessTeams'));
    }
    public function regionsIndex(){
        $regions = Region::orderBy('name', 'asc')->get();
        return view('masterData.regions.index', compact('regions'));
    }
    public function distributionChannelIndex(){
        $distributionChes = DistributionCh::orderBy('name', 'asc')->get();
        return view('masterData.distributionChannels.index', compact('distributionChes'));
    }
    public function territoryIndex(){
        $territories = Territory::orderBy('name', 'asc')->get();
        return view('masterData.territories.index', compact('territories'));
    }
    public function tradeCategoryIndex(){
        $tradeSubCategories = TradeSubCategory::orderBy('trade_category_id', 'asc')->get();
        return view('masterData.tradeCategories.index', compact('tradeSubCategories'));
    }
    public function soldToParties(){
       $soldToParties = SoldToParty::where('activeStatus', true)->orderBy('acc_name', 'asc')->get();
        
        return view('masterData.soldToParties.index', compact('soldToParties'));
    }
}
