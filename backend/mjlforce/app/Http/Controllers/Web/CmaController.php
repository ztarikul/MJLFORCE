<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\CustomerType;
use App\Models\LocDivision;
use App\Models\LocDistrict;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use App\Models\SoldToParty;
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

    public function soldToPartyRequestForm($id){
        $divisions = LocDivision::select('id', 'name')->orderBy('name', 'asc')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->orderBy('name', 'asc')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->orderBy('name', 'asc')->get();
        $postOffice = LocPostOffice::select('id', 'loc_division_id', 'loc_district_id', 'post_office')->orderBy('post_office', 'asc')->get();
        $salesTerritories = Territory::select('id', 'name', 'region_id')->get();
        $tradeCategories = TradeCategory::select('id', 'name')->get();
        $tradeSubCategories = TradeSubCategory::select('id', 'name', 'trade_category_id')->get();
        $customerTypes = CustomerType::select('id', 'name', 'sap_code')->orderBy('sap_code', 'asc')->get();
        $soldToParty = SoldToParty::findOrFail($id);
        return view('cma.soldToParties.soldToPartyRequestForm', [
            'soldToParty' => $soldToParty,
            'divisions' => $divisions,
            'districts' => $districts,
            'upazilas' => $upazilas,
            'postOffice' => $postOffice,
            'salesTerritories' => $salesTerritories,
            'tradeCategories' => $tradeCategories,
            'tradeSubCategories' => $tradeSubCategories,
            'customerTypes' => $customerTypes
        ]);
    }




}
