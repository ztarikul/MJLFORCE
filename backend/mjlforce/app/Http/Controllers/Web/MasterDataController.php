<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\BusinessTeam;
use App\Models\CustomerGroup;
use App\Models\CustomerType;
use App\Models\DistributionCh;
use App\Models\Region;
use App\Models\LocDivision;
use App\Models\LocDistrict;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use App\Models\ShipToParty;
use App\Models\SoldToParty;
use App\Models\SoldToPartySalesArea;
use App\Models\Territory;
use App\Models\TradeCategory;
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

    public function business_team_store(Request $request){
        $request->validate([
            'name' => 'required|unique:business_teams',
            'code' => 'nullable|unique:business_teams',
            'sap_code' => 'nullable|unique:business_teams'
        ]);

        $businessTeam = new BusinessTeam();
        $businessTeam->name = $request->name;
        $businessTeam->code = $request->code;
        $businessTeam->sap_code = $request->sap_code;
        $businessTeam->description = $request->description;
        $businessTeam->created_by = auth()->user()->id;
        $businessTeam->hostname = request()->ip();
        $businessTeam->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Business Team created successfully.',
            'redirect_url' => route('masterData.businessTeamIndex')
            
        ]);
    }

    public function business_team_edit($id){
        $businessTeam = BusinessTeam::find($id);

        return response()->json([
            'status' => 'success',
            'businessTeam' => $businessTeam
        ]);
    }

    public function business_team_update(Request $request, $id){
        $request->validate([
            'name' => 'required|unique:business_teams,name,' . $id,
            'code' => 'nullable|unique:business_teams,code,' . $id,
            'sap_code' => 'nullable|unique:business_teams,sap_code,' . $id
        ]);

        $businessTeam = BusinessTeam::find($id);
        $businessTeam->name = $request->name;
        $businessTeam->code = $request->code;
        $businessTeam->sap_code = $request->sap_code;
        $businessTeam->description = $request->description;
        $businessTeam->update();

        return response()->json([
            'status' => 'success',
            'message' => "Business Team updated successfully.",
            'redirect_url' => route('masterData.businessTeamIndex')
        ]);
    }

    public function business_team_delete($id){
        // dd($id);
        $businessTeam = BusinessTeam::find($id)->delete();
         return response()->json([
            'status' => 'success',
            'message' => "Business Team deleted successfully.",
            'redirect_url' => route('masterData.businessTeamIndex')
        ]);
    }


    public function regionsIndex(){
        $regions = Region::orderBy('name', 'asc')->get();
        return view('masterData.regions.index', compact('regions'));
    }

    public function regions_store(Request $request){
        $request->validate([
            'name' => 'required|unique:regions',
            'code' => 'nullable|unique:regions',
            'sap_code' => 'nullable|unique:regions'
        ]);

        $region = new Region();
        $region->name = $request->name;
        $region->code = $request->code;
        $region->sap_code = $request->sap_code;
        $region->description = $request->description;
        $region->created_by = auth()->user()->id;
        $region->hostname = request()->ip();
        $region->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Region created successfully.',
            'redirect_url' => route('masterData.regionsIndex')
            
        ]);
    }

    public function regions_edit($id){
        $region = Region::find($id);

        return response()->json([
            'status' => 'success',
            'region' => $region
        ]);
    }

    public function regions_update(Request $request, $id){
        $request->validate([
            'name' => 'required|unique:regions,name,' . $id,
            'code' => 'nullable|unique:regions,code,' . $id,
            'sap_code' => 'nullable|unique:regions,sap_code,' . $id
        ]);

        $region = Region::find($id);
        $region->name = $request->name;
        $region->code = $request->code;
        $region->sap_code = $request->sap_code;
        $region->description = $request->description;
        $region->update();

        return response()->json([
            'status' => 'success',
            'message' => "Region updated successfully.",
            'redirect_url' => route('masterData.regionsIndex')
        ]);
    }

    public function regions_delete($id){
        // dd($id);
        $distributionCh = Region::find($id)->delete();
         return response()->json([
            'status' => 'success',
            'message' => "Region deleted successfully.",
            'redirect_url' => route('masterData.regionsIndex')
        ]);
    }


    public function distributionChannelIndex(){
        $distributionChes = DistributionCh::orderBy('name', 'asc')->get();
        return view('masterData.distributionChannels.index', compact('distributionChes'));
    }

    public function distribution_ches_store(Request $request){
        $request->validate([
            'name' => 'required|unique:distribution_ches',
            'code' => 'nullable|unique:distribution_ches',
            'sap_code' => 'nullable|unique:distribution_ches'
        ]);

        $distributionCh = new DistributionCh();
        $distributionCh->name = $request->name;
        $distributionCh->code = $request->code;
        $distributionCh->sap_code = $request->sap_code;
        $distributionCh->description = $request->description;
        $distributionCh->created_by = auth()->user()->id;
        $distributionCh->hostname = request()->ip();
        $distributionCh->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Distribution Channel created successfully.',
            'redirect_url' => route('masterData.distributionChannelIndex')
            
        ]);
    }

    public function distribution_ches_edit($id){
        $distributionCh = DistributionCh::find($id);

        return response()->json([
            'status' => 'success',
            'distributionCh' => $distributionCh
        ]);
    }

    public function distribution_ches_update(Request $request, $id){
        $request->validate([
            'name' => 'required|unique:distribution_ches,name,' . $id,
            'code' => 'nullable|unique:distribution_ches,code,' . $id,
            'sap_code' => 'nullable|unique:distribution_ches,sap_code,' . $id
        ]);

        $distributionCh = DistributionCh::find($id);
        $distributionCh->name = $request->name;
        $distributionCh->code = $request->code;
        $distributionCh->sap_code = $request->sap_code;
        $distributionCh->description = $request->description;
        $distributionCh->update();

        return response()->json([
            'status' => 'success',
            'message' => "Distribution Channel updated successfully.",
            'redirect_url' => route('masterData.distributionChannelIndex')
        ]);
    }

    public function distribution_ches_delete($id){
        // dd($id);
        $distributionCh = DistributionCh::find($id)->delete();
         return response()->json([
            'status' => 'success',
            'message' => "Distribution Channel deleted successfully.",
            'redirect_url' => route('masterData.distributionChannelIndex')
        ]);
    }

    public function territoryIndex(){
        $territories = Territory::orderBy('name', 'asc')->get();
        $regions = Region::orderBy('name', 'asc')->get();
        return view('masterData.territories.index', compact('territories', 'regions'));
    }

    public function territories_store(Request $request){
        $request->validate([
            'name' => 'required|unique:territories',
            'code' => 'nullable|unique:territories',
            'sap_code' => 'nullable|unique:territories'
        ]);

        $territory = new Territory();
        $territory->name = $request->name;
        $territory->region_id = $request->region_id;
        $territory->code = $request->code;
        $territory->sap_code = $request->sap_code;
        $territory->description = $request->description;
        $territory->created_by = auth()->user()->id;
        $territory->hostname = request()->ip();
        $territory->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Territory created successfully.',
            'redirect_url' => route('masterData.territoryIndex')
            
        ]);
    }

    public function territories_edit($id){
        $territory = Territory::with('region')->find($id);
        $regions = Region::orderBy('name', 'asc')->get();
        return response()->json([
            'status' => 'success',
            'territory' => $territory,
            'regions' => $regions
        ]);
    }

    public function territories_update(Request $request, $id){
        $request->validate([
            'name' => 'required|unique:territories,name,' . $id,
            'code' => 'nullable|unique:territories,code,' . $id,
            'sap_code' => 'nullable|unique:territories,sap_code,' . $id
        ]);

        $territory = Territory::find($id);
        $territory->name = $request->name;
        $territory->region_id = $request->region_id;
        $territory->code = $request->code;
        $territory->sap_code = $request->sap_code;
        $territory->description = $request->description;
        $territory->update();

        return response()->json([
            'status' => 'success',
            'message' => "Territory updated successfully.",
            'redirect_url' => route('masterData.territoryIndex')
        ]);
    }

    public function territories_delete($id){
        // dd($id);
        $territory = Territory::find($id)->delete();
         return response()->json([
            'status' => 'success',
            'message' => "Territory deleted successfully.",
            'redirect_url' => route('masterData.territoryIndex')
        ]);
    }


    public function tradeCategoryIndex(){
        $tradeSubCategories = TradeSubCategory::orderBy('trade_category_id', 'asc')->get();
        return view('masterData.tradeCategories.index', compact('tradeSubCategories'));
    }
    public function soldToParties(){
       $soldToParties = SoldToParty::where('activeStatus', true)->orderBy('acc_name', 'asc')->get();
        
        return view('masterData.soldToParties.index', compact('soldToParties'));
    }
    public function shipToParties(){
       $shipToParties = ShipToParty::where('activeStatus', true)->orderBy('acc_name', 'asc')->get();
        
        return view('masterData.shipToParty.index', compact('shipToParties'));
    }

    public function detailsSoldToParties(Request $request, $id){

    
        $soldToParty = SoldToParty::findOrFail($id);
        $divisions = LocDivision::select('id', 'name')->orderBy('name', 'asc')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->orderBy('name', 'asc')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->orderBy('name', 'asc')->get();
        $postOffice = LocPostOffice::select('id', 'loc_division_id', 'loc_district_id', 'post_office')->orderBy('post_office', 'asc')->get();
        $salesTerritories = Territory::select('id', 'name', 'region_id')->get();
        $tradeCategories = TradeCategory::select('id', 'name', 'sap_code')->get();
        $tradeSubCategories = $soldToParty->tradeCategory->tradeSubCategories()->get();
        $customerTypes = CustomerType::select('id', 'name', 'sap_code')->orderBy('sap_code', 'asc')->get();
        $territories = Territory::select('id', 'name', 'sap_code')->orderBy('name', 'asc')->get();
        $fiPaymentTerms = [
         [ 'id' => 1, 'term' => "Z001", 'duration' => "At Sight" ], 
         [ 'id' => 2, 'term' => "Z002", 'duration' => "7 Days" ], 
         [ 'id' => 3, 'term' => "Z003", 'duration' => "15 Days" ], 
         [ 'id' => 4, 'term' => "Z004", 'duration' => "30 Days" ]
        ];
        $currencies = [
         [ 'id' => 1, 'name' => "BDT" ], 
         [ 'id' => 2, 'name' => "USD" ], 
        
        ];
        $accAssignmentGroups = [
         [ 'id' => 1, 'name' => "01" ], 
         [ 'id' => 2, 'name' => "02" ], 
         [ 'id' => 3, 'name' => "03" ], 
         [ 'id' => 4, 'name' => "04" ],
         [ 'id' => 4, 'name' => "06" ],
         [ 'id' => 4, 'name' => "10" ]
        ];

        if($request->ajax()){
            if($request->action === "tradeChange"){
                $tradeSubCategories = TradeCategory::find($request->trade_category)->tradeSubCategories()->get();
                return response()->json([
                    'tradeSubCategories' => $tradeSubCategories, 
                    'status' => 'success'
                ]);
            }
            if($request->action ===  "tradeSubChange"){
                $salesArea = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_sub_category)->first();
                return response()->json([
                    'customerGroup' => $salesArea->customerGroup()->first(), 
                    'distributionCh' => $salesArea->distributionCh()->first(),
                    'status' => 'success'
                ]);
            }
            
        }
        
      
        return view('masterData.soldToParties.details_soldToParty', [
            'soldToParty' => $soldToParty,
            'divisions' => $divisions,
            'districts' => $districts,
            'upazilas' => $upazilas,
            'postOffice' => $postOffice,
            'salesTerritories' => $salesTerritories,
            'tradeCategories' => $tradeCategories,
            'tradeSubCategories' => $tradeSubCategories,
            'customerTypes' => $customerTypes,
            'fiPaymentTerms' => $fiPaymentTerms,
            'currencies' => $currencies,
            'accAssignmentGroups' => $accAssignmentGroups,
            'territories' => $territories
        ]);
    }

    public function detailsShipToParties(Request $request, $id){

    
        $shipToParty = ShipToParty::findOrFail($id);
        $divisions = LocDivision::select('id', 'name')->orderBy('name', 'asc')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->orderBy('name', 'asc')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->orderBy('name', 'asc')->get();
        $postOffice = LocPostOffice::select('id', 'loc_division_id', 'loc_district_id', 'post_office')->orderBy('post_office', 'asc')->get();
        $salesTerritories = Territory::select('id', 'name', 'region_id')->get();
        $tradeCategories = TradeCategory::select('id', 'name', 'sap_code')->get();
        $tradeSubCategories = $shipToParty->soldToParty->tradeCategory->tradeSubCategories()->get();
        $customerTypes = CustomerType::select('id', 'name', 'sap_code')->orderBy('sap_code', 'asc')->get();
        $territories = Territory::select('id', 'name', 'sap_code')->orderBy('name', 'asc')->get();
        $fiPaymentTerms = [
         [ 'id' => 1, 'term' => "Z001", 'duration' => "At Sight" ], 
         [ 'id' => 2, 'term' => "Z002", 'duration' => "7 Days" ], 
         [ 'id' => 3, 'term' => "Z003", 'duration' => "15 Days" ], 
         [ 'id' => 4, 'term' => "Z004", 'duration' => "30 Days" ]
        ];
        $currencies = [
         [ 'id' => 1, 'name' => "BDT" ], 
         [ 'id' => 2, 'name' => "USD" ], 
        
        ];
        $accAssignmentGroups = [
         [ 'id' => 1, 'name' => "01" ], 
         [ 'id' => 2, 'name' => "02" ], 
         [ 'id' => 3, 'name' => "03" ], 
         [ 'id' => 4, 'name' => "04" ],
         [ 'id' => 4, 'name' => "06" ],
         [ 'id' => 4, 'name' => "10" ]
        ];

        if($request->ajax()){
            if($request->action === "tradeChange"){
                $tradeSubCategories = TradeCategory::find($request->trade_category)->tradeSubCategories()->get();
                return response()->json([
                    'tradeSubCategories' => $tradeSubCategories, 
                    'status' => 'success'
                ]);
            }
            if($request->action ===  "tradeSubChange"){
                $salesArea = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_sub_category)->first();
                return response()->json([
                    'customerGroup' => $salesArea->customerGroup()->first(), 
                    'distributionCh' => $salesArea->distributionCh()->first(),
                    'status' => 'success'
                ]);
            }
            
        }
        
      
        return view('masterData.shipToParty.details_shipToParty', [
            'shipToParty' => $shipToParty,
            'divisions' => $divisions,
            'districts' => $districts,
            'upazilas' => $upazilas,
            'postOffice' => $postOffice,
            'salesTerritories' => $salesTerritories,
            'tradeCategories' => $tradeCategories,
            'tradeSubCategories' => $tradeSubCategories,
            'customerTypes' => $customerTypes,
            'fiPaymentTerms' => $fiPaymentTerms,
            'currencies' => $currencies,
            'accAssignmentGroups' => $accAssignmentGroups,
            'territories' => $territories
        ]);
    }



}
