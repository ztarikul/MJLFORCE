<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\CustomerType;
use App\Models\LocDivision;
use App\Models\LocDistrict;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use App\Models\SoldToParty;
use App\Models\SoldToPartySalesArea;
use App\Models\Territory;
use App\Models\TradeCategory;
use App\Models\TradeSubCategory;
use Illuminate\Http\Request;

class CmaController extends Controller
{
    //

    public function newSoldToPartyIndex(){
        $soldToParties = SoldToParty::whereHas('currentProcess', function($query){
             $query->where('chk_to', 4);
        })->get();
        return view('cma.soldToParties.index', compact('soldToParties'));
    }

    public function soldToPartyRequestForm(Request $request, $id){

    
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
            if($request->has('trade_category')){
                $tradeSubCategories = TradeCategory::where('sap_code', $request->trade_category)->first()->tradeSubCategories()->get();
                return response()->json([
                    'tradeSubCategories' => $tradeSubCategories, 
                    'status' => 'success'
                ]);
            }
            if($request->has('trade_sub_category')){
                $customerGroup = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_sub_category)->first()->customerGroup()->first()->sap_code;
                return response()->json([
                    'customerGroup' => $customerGroup, 
                    'status' => 'success'
                ]);
            }
            
        }
        
      
        return view('cma.soldToParties.soldToPartyRequestForm', [
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




}
