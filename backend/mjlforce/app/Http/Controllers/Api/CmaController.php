<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use App\Models\SoldToParty;
use App\Models\SoldToPartyProcessLog;
use App\Models\SoldToPartySalesArea;
use App\Models\Territory;
use App\Models\TradeCategory;
use App\Models\TradeSubCategory;
use Exception;
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
        $customerTypes = [
            ['id' => 1, 'name' => "Domestic", 'sap_code' => "Z001"],
            ['id' => 2, 'name' => "Marine Bonded", 'sap_code' => "Z002"],
            ['id' => 3, 'name' => "Export(Deemed)", 'sap_code' => "Z002"],
            ['id' => 4, 'name' => "Service (Oil Tanker)", 'sap_code' => "Z004"],
            ['id' => 6, 'name' => "Service(Rent)", 'sap_code' => "Z005"],
            ['id' => 7, 'name' => "OTC", 'sap_code' => "Z011"],
            ['id' => 8, 'name' => "Other Customer", 'sap_code' => "Z014"],
        ];
        return response()->json(['divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice, 'salesTerritories' => $salesTerritories, 'tradeCategories' => $tradeCategories, 'tradeSubCategories' => $tradeSubCategories, 'customerTypes' => $customerTypes], 200);
    } 

    public function storeSoldToParty(Request $request){
        $msg = "";
        
        $request->validate([
            'account_name' => 'required',
            'office_address' => 'required',
            'loc_division' => 'required',
            'loc_district' => 'required',
            'loc_thana' => 'required',
            'post_office' => 'nullable',
            'bin' => 'required',
            'contact_person' => 'required',
            'mobile_co' => 'required',
            'telephone_co' => 'required',
            'owner_name' => 'required',
            'owner_telephone' => 'required',
            'owner_mobile' => 'required',
            'customer_type' => 'required',
            'territory' => 'required',
            'trade_category' => 'required',
            'trade_s_category' => 'required',
            'remarks' => 'nullable|string|max:500',

        ]);
        try{
   

            $soldToParty = new SoldToParty();
            $soldToParty->customer_code = null;
            $soldToParty->customer_acc_group = $request->customer_type;
            $soldToParty->company_code = "1100";
            $soldToParty->sales_org = "1100";	
            $soldToParty->distribution_ch = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_s_category)->first()->distributionCh->sap_code ;   
            $soldToParty->sales_division = "00";    //Common
            list($acc_name1, $acc_name2) = splitByLastCharBeforeLimit($request->account_name, 40, " ");
            $soldToParty->acc_name = $acc_name1;
            $soldToParty->acc_name2 = $acc_name2;
            // $soldToParty->search_term = $request->name;
            // $soldToParty->search_term2 = $request->name;
            // $soldToParty->legacy_acc_code = null;
            $soldToParty->country = "BD"; // BD, CY, DE, SG, SN, VN,
            $soldToParty->region = null;
            $soldToParty->region_id = null;
            $soldToParty->district = LocDistrict::find($request->loc_district)->name;
            list($address1, $address2) = splitByLastCharBeforeLimit($request->office_address, 60, ",");
            $soldToParty->address = $address1;
            $soldToParty->ceo = $request->ceo;
            list($address2, $address3) = splitByLastCharBeforeLimit($address2, 40, ",");
            $soldToParty->address_2 = $address2;
            list($address3, $address4) = splitByLastCharBeforeLimit($address3, 40, ",");
            $soldToParty->address_3 = $address3; // rest address after 60 char
            // $soldToParty->lang = null;
            $soldToParty->phone = $request->owner_telephone;
            $soldToParty->mobile_phone = $request->owner_mobile;
            // $soldToParty->fax = null;
            $soldToParty->email = $request->owner_email;
            // $soldToParty->other_url = null;
            $soldToParty->postal_code = $request->post_office ? LocPostOffice::find($request->post_office)->post_code : null;
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

            $soldToParty->customer_group = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_s_category)->first()->customerGroup()->first()->sap_code;
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

            $soldToParty->loc_division_id = $request->loc_division;
            $soldToParty->loc_district_id = $request->loc_district;
            $soldToParty->loc_upazila_id = $request->loc_thana;
            $soldToParty->loc_post_office_id = $request->post_office;
            $soldToParty->image = $request->image;
            $soldToParty->lat = $request->lat;
            $soldToParty->long = $request->long;
            $soldToParty->employee_id =  auth()->user()->employee->id;
            $soldToParty->is_eligible_discount = $request->special_discount === "on" ? true : false;

            $soldToParty->remarks = $request->remarks;
            $soldToParty->created_by = auth()->user()->id;
            $soldToParty->hostname = gethostname();
            $soldToParty->save();
  
            $msg = 'Sold To Party created successfully';



            SoldToPartyProcessLog::create([
                'sold_to_party_id' => $soldToParty->id,
                'chk_from' => 1,
                'chk_to' => 2, //Leads
                'status' => 1,
                'remarks' => "Leads Processing",
            ]);
            
        }catch(Exception $e){
            $msg = $e->getMessage();
            

        }
        return response()->json([
            'message' => $msg,
        ]);


    }


    public function leadsProcess(Request $request){
        $id = $request->query('id');  
        $divisions = LocDivision::select('id', 'name')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->get();
        $postOffice = LocPostOffice::select('id', 'loc_upazila_id', 'post_office')->get();
        $salesTerritories = Territory::select('id', 'name', 'region_id')->get();
        $tradeCategories = TradeCategory::select('id', 'name')->get();
        $tradeSubCategories = TradeSubCategory::select('id', 'name', 'trade_category_id')->get();
        $customerTypes = [
            ['id' => 1, 'name' => "Domestic", 'sap_code' => "Z001"],
            ['id' => 2, 'name' => "Marine Bonded", 'sap_code' => "Z002"],
            ['id' => 3, 'name' => "Export(Deemed)", 'sap_code' => "Z002"],
            ['id' => 4, 'name' => "Service (Oil Tanker)", 'sap_code' => "Z004"],
            ['id' => 6, 'name' => "Service(Rent)", 'sap_code' => "Z005"],
            ['id' => 7, 'name' => "OTC", 'sap_code' => "Z011"],
            ['id' => 8, 'name' => "Other Customer", 'sap_code' => "Z014"],
        ];


        $soldToParty = SoldToParty::with('division', 'district', 'upazila', 'post_office')->find($id);


        return response()->json(['soldToParty' => $soldToParty, 'divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice, 'salesTerritories' => $salesTerritories, 'tradeCategories' => $tradeCategories, 'tradeSubCategories' => $tradeSubCategories, 'customerTypes' => $customerTypes], 200);
    }
}
