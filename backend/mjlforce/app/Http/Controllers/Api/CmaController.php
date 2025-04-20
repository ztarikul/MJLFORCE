<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\LocDistrict;
use App\Models\LocDivision;
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
    public function visitNewSoldToPary(){
        $divisions = LocDivision::select('id', 'name')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->get();
        $postOffice = LocPostOffice::select('id', 'loc_upazila_id', 'post_office')->get();
        $salesTerritories = Territory::select('id', 'name', 'region_id')->get();
        $tradeCategories = TradeCategory::select('id', 'name')->get();
        $tradeSubCategories = TradeSubCategory::select('id', 'name', 'trade_category_id')->get();
        return response()->json(['divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice, 'salesTerritories' => $salesTerritories, 'tradeCategories' => $tradeCategories, 'tradeSubCategories' => $tradeSubCategories], 200);
    } 

    public function storeSoldToParty(Request $request){

        $request->validate([
            'name' => 'required',
            'address' => 'required',
            'division_id' => 'required',
            'district_id' => 'required',
            'upazila_id' => 'required',
            'post_office_id' => 'required',
            'territory_id' => 'required',
            'trade_category_id' => 'required',
            'trade_sub_category_id' => 'required',
        ]);

        $soldToParty = new SoldToParty();
        $soldToParty->customer_code = null;
        $soldToParty->customer_acc_group = $request->customer_type;
        $soldToParty->company_code = "1100";
        $soldToParty->sales_org = "1100";	
        $soldToParty->distribution_ch = "10";   
        $soldToParty->sales_division = "00";    //Common
        $soldToParty->acc_name = $request->account_name;
        $soldToParty->acc_name2 = $request->name;
        // $soldToParty->search_term = $request->name;
        // $soldToParty->search_term2 = $request->name;
        // $soldToParty->legacy_acc_code = null;
        $soldToParty->country = "BD"; // BD, CY, DE, SG, SN, VN,
        $soldToParty->region = null;
        $soldToParty->region_id = null;
        $soldToParty->district = LocDistrict::find($request->district_id)->name;
        $soldToParty->address = $request->address;
        $soldToParty->ceo = $request->ceo;
        $soldToParty->address_2 = $request->address_2;
        $soldToParty->address_3 = $request->address_3; // rest address after 60 char
        $soldToParty->lang = null;
        $soldToParty->phone = $request->owner_telephone;
        $soldToParty->mobile_phone = $request->owner_mobile;
        $soldToParty->fax = null;
        $soldToParty->email = $request->owner_email;
        $soldToParty->other_url = null;
        $soldToParty->postal_code = LocPostOffice::find($request->post_office_id)->post_code;
        $soldToParty->contact_person_name = $request->contact_person;
        $soldToParty->contact_person_tel = $request->telephone_co;
        $soldToParty->contact_person_mobile = $request->mobile_co;
        $soldToParty->group = $request->group;

        // $soldToParty->payment_mode = "1G"; //for rent it is blank

        $soldToParty->bin_no = $request->bin;
        // $soldToParty->vat_reg_num = $request->vat_reg_num;
        // $soldToParty->recon_acc = $request->recon_acc;
        // $soldToParty->fi_payment_terms = $request->fi_payment_terms;
        // $soldToParty->currency = $request->currency;
        // $soldToParty->cust_pricing_procedure = 1;
        // $soldToParty->shipping_condition = 01;
        // $soldToParty->delivering_plant = null;
        // $soldToParty->other_combination = "X";
        // $soldToParty->incoterms = null;
        // $soldToParty->incoterms_loc_1 = null;
        // $soldToParty->sd_payment_terms = null;
        // $soldToParty->acc_assignment_group = $request->acc_assignment_group;
        // $soldToParty->tax_classification = $request->tax_classification;
        $soldToParty->territory = Territory::find($request->territory)->name;
        $soldToParty->territory_id = $request->territory; //non sap

        $soldToParty->customer_group = TradeCategory::find($request->trade_category)->distributionCh->customerGroup->sap_code;
        $soldToParty->trade_category = TradeCategory::find($request->trade_category)->sap_code;
        $soldToParty->trade_sub_category = TradeSubCategory::find($request->trade_s_category)->sap_code;
        // $soldToParty->customer_group_3 = $request->customer_group_3;
        // $soldToParty->customer_group_4 = $request->customer_group_4;
        // $soldToParty->customer_group_5 = $request->customer_group_5;
        $soldToParty->bp_type = $request->bp_type;
        // $soldToParty->attr_2 = $request->attr_2;
        // $soldToParty->attr_3 = $request->attr_3;
        // $soldToParty->attr_4 = $request->attr_4;
        // $soldToParty->factory_address_2 = $request->factory_address_2;

        $soldToParty->loc_division_id = $request->loc_division_id;
        $soldToParty->loc_district_id = $request->loc_district_id;
        $soldToParty->loc_upazila_id = $request->loc_upazila_id;
        $soldToParty->loc_post_office_id = $request->loc_post_office_id;
        $soldToParty->image = $request->image;
        $soldToParty->lat = $request->lat;
        $soldToParty->long = $request->long;
        $soldToParty->employee_id =  auth()->user()->employee->sap_code;


        $soldToParty->created_by = auth()->user()->id;
        $soldToParty->hostname = gethostname();
        $soldToParty->save();


        return response()->json([
            'message' => 'Sold To Party created successfully',
            'soldToParty' => $soldToParty
        ], 201);


    }
}
