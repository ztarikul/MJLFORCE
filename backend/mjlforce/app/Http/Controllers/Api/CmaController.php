<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\ExistingVisit;
use App\Models\LeadStage;
use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use App\Models\OtherVisit;
use App\Models\ShipToParty;
use App\Models\ShipToPartyprocessLog;
use App\Models\SoldToParty;
use App\Models\SoldToPartyLeadLog;
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
        $divisions = LocDivision::select('id', 'name')->orderBy('name', 'asc')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->orderBy('name', 'asc')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->orderBy('name', 'asc')->get();
        $postOffice = LocPostOffice::select('id', 'loc_division_id', 'loc_district_id', 'post_office')->orderBy('post_office', 'asc')->get();
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
            $soldToParty->ceo = $request->owner_name;
            list($address2, $address3) = splitByLastCharBeforeLimit($address2, 40, ",");
            $soldToParty->address_2 = $address2;
            list($address3, $address4) = splitByLastCharBeforeLimit($address3, 40, ",");
            $soldToParty->address_3 = $address3; // rest address after 60 char
            $soldToParty->lang = "EN";
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
            $soldToParty->recon_acc = 12201000;
            $soldToParty->fi_payment_terms = "Z001";
            // $soldToParty->currency = $request->currency;
            $soldToParty->cust_pricing_procedure = 1;
            $soldToParty->shipping_condition = "01";
            // $soldToParty->delivering_plant = null;
            $soldToParty->other_combination = "X";
            $soldToParty->incoterms = "FOB";
            $soldToParty->incoterms_loc_1 = "NA";
            // $soldToParty->sd_payment_terms = null;
            // $soldToParty->acc_assignment_group = $request->acc_assignment_group;
            // $soldToParty->tax_classification = $request->tax_classification;
            $soldToParty->territory = Territory::find($request->territory)->sap_code;
          
            $soldToParty->customer_group = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_s_category)->first()->customerGroup()->first()->sap_code;
            $soldToParty->trade_category = TradeCategory::find($request->trade_category)->sap_code;
            $soldToParty->trade_sub_category = TradeSubCategory::find($request->trade_s_category)->sap_code;
            // $soldToParty->customer_group_3 = $request->customer_group_3;
            // $soldToParty->customer_group_4 = $request->customer_group_4;
            // $soldToParty->customer_group_5 = $request->customer_group_5;
            $soldToParty->bp_type = "Z001";
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
        $postOffice = LocPostOffice::select('id', 'loc_division_id', 'loc_district_id', 'post_office')->orderBy('post_office', 'asc')->get();
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

        $leadStages = LeadStage::all();

        $soldToParty = SoldToParty::with(['LocDivision.LocDistricts', 'LocDistrict.LocUpazilas', 'LocPostOffice', 'territorySToP', 'tradeCategory.tradeSubCategories', 'tradeSubCategory', 'currentLead'])->find($id);


        return response()->json(['soldToParty' => $soldToParty, 'divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice, 'salesTerritories' => $salesTerritories, 'tradeCategories' => $tradeCategories, 'tradeSubCategories' => $tradeSubCategories, 'customerTypes' => $customerTypes, 'leadStages' => $leadStages], 200);
    }

    public function updateLeadProcess(Request $request, $id){



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
            // 'customer_type' => 'required',
            // 'territory' => 'required',
            // 'trade_category' => 'required',
            // 'trade_s_category' => 'required',
            // 'remarks' => '',
        ]);
        try{
   
            $soldToParty = SoldToParty::findOrFail($id);
            
            $soldToParty->customer_acc_group = $request->customer_type;
            $soldToParty->distribution_ch = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_s_category)->first()->distributionCh->sap_code ;   

            list($acc_name1, $acc_name2) = splitByLastCharBeforeLimit($request->account_name, 40, " ");
            $soldToParty->acc_name = $acc_name1;
            $soldToParty->acc_name2 = $acc_name2;

            $soldToParty->district = LocDistrict::find($request->loc_district)->name;
            list($address1, $address2) = splitByLastCharBeforeLimit($request->office_address, 60, ",");
            $soldToParty->address = $address1;
            $soldToParty->ceo = $request->owner_name;
            list($address2, $address3) = splitByLastCharBeforeLimit($address2, 40, ",");
            $soldToParty->address_2 = $address2;
            list($address3, $address4) = splitByLastCharBeforeLimit($address3, 40, ",");
            $soldToParty->address_3 = $address3; // rest address after 60 char

            $soldToParty->phone = $request->owner_telephone;
            $soldToParty->mobile_phone = $request->owner_mobile;
     
            $soldToParty->email = $request->owner_email;
         
            $soldToParty->postal_code = $request->post_office ? LocPostOffice::find($request->post_office)->post_code : null;
            $soldToParty->contact_person_name = $request->contact_person;
            $soldToParty->contact_person_tel = $request->telephone_co;
            $soldToParty->contact_person_mobile = $request->mobile_co;
            $soldToParty->group = $request->group;



            $soldToParty->bin_no = $request->bin;

            $soldToParty->territory = Territory::find($request->territory)->sap_code;

            $soldToParty->customer_group = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_s_category)->first()->customerGroup()->first()->sap_code;
            $soldToParty->trade_category = TradeCategory::find($request->trade_category)->sap_code;
            $soldToParty->trade_sub_category = TradeSubCategory::find($request->trade_s_category)->sap_code;


            $soldToParty->loc_division_id = $request->loc_division;
            $soldToParty->loc_district_id = $request->loc_district;
            $soldToParty->loc_upazila_id = $request->loc_thana;
            $soldToParty->loc_post_office_id = $request->post_office;
      

            $soldToParty->is_eligible_discount = $request->special_discount === "on" ? true : false;

            $soldToParty->remarks = $request->remarks;
            $soldToParty->status = 2; //processing

            if($request->lead_stage_id === "7"){
                SoldToPartyProcessLog::create([
                    'sold_to_party_id' => $soldToParty->id,
                    'chk_from' => 2, //Leads
                    'chk_to' => 3, //SV
                    'status' => 2,
                    'remarks' => "Create CMA",
                ]);  
            }

            SoldToPartyLeadLog::create([
                'sold_to_party_id' => $soldToParty->id,
                'lead_stage_id' => $request->lead_stage_id,
                'stage' => LeadStage::find($request->lead_stage_id)->stage,
              
            ]);

            $soldToParty->update();
            $msg = 'Sold To Party updated successfully';
         
        }catch(Exception $e){
            $msg = $e->getMessage();
            

        }

        return response()->json([
            'msg' => $msg,
        ]);
    }


     public function storeShipToParty(Request $request){

        // return response()->json($request->all());
        $msg = "";
        
        $request->validate([
            'account_name' => 'required',
            'office_address' => 'required',
            // 'loc_division' => 'required',
            // 'loc_district' => 'required',
            // 'loc_thana' => 'required',
            // 'post_office' => 'nullable',
            'bin' => 'required',
            'contact_person' => 'required',
            'mobile_co' => 'required',
            'remarks' => 'nullable|string|max:500',

        ]);
        try{
   
            $soldToParty = SoldToParty::findOrFail($request->sold_to_party_id);
            $shipToParty = new ShipToParty();
            $shipToParty->sold_to_party_id = $request->sold_to_party_id;
            $shipToParty->customer_code = $soldToParty->customer_code;
            $shipToParty->customer_acc_group = $soldToParty->customer_acc_group;
            $shipToParty->company_code = "1100";
            $shipToParty->sales_org = "1100";	
            $shipToParty->distribution_ch = $soldToParty->distribution_ch;   
            $shipToParty->sales_division = "00";    //Common
            // list($acc_name1, $acc_name2) = splitByLastCharBeforeLimit($request->account_name, 40, " ");
            $shipToParty->acc_name = $soldToParty->acc_name;
            $shipToParty->acc_name2 = $soldToParty->acc_name2;
            // $shipToParty->search_term = $request->name;
            // $shipToParty->search_term2 = $request->name;
            // $shipToParty->legacy_acc_code = null;
            $shipToParty->country = "BD"; // BD, CY, DE, SG, SN, VN,
            $shipToParty->region =  $soldToParty->region;
            $shipToParty->region_id = $soldToParty->region_id;
            $shipToParty->district =  $soldToParty->district;
            list($address1, $address2) = splitByLastCharBeforeLimit($request->office_address, 60, ",");
            $shipToParty->address = $address1;
            $shipToParty->ceo = $soldToParty->ceo;;
            list($address2, $address3) = splitByLastCharBeforeLimit($address2, 40, ",");
            $shipToParty->address_2 = $address2;
            list($address3, $address4) = splitByLastCharBeforeLimit($address3, 40, ",");
            $shipToParty->address_3 = $address3; // rest address after 60 char
            // $shipToParty->lang = null;
            $shipToParty->phone =  $soldToParty->phone;
            $shipToParty->mobile_phone =  $soldToParty->mobile_phone;
            // $shipToParty->fax = null;
            $shipToParty->email =  $soldToParty->acc_nemailame;
            // $shipToParty->other_url = null;
            $shipToParty->postal_code = $request->post_office ? LocPostOffice::find($request->post_office)->post_code :  $soldToParty->postal_code;
            $shipToParty->contact_person_name = $request->contact_person;
            $shipToParty->contact_person_tel =  $soldToParty->contact_person_tel;
            $shipToParty->contact_person_mobile = $request->mobile_co;
            $shipToParty->group =  $soldToParty->group;

            // $shipToParty->payment_mode = "1G"; //for rent it is blank

            $shipToParty->bin_no = $request->bin;
            // $shipToParty->vat_reg_num = $request->vat_reg_num;
            // $shipToParty->recon_acc = $request->recon_acc;
            // $shipToParty->fi_payment_terms = $request->fi_payment_terms;
            // $shipToParty->currency = $request->currency;
            // $shipToParty->cust_pricing_procedure = 1;
            // $shipToParty->shipping_condition = 01;
            // $shipToParty->delivering_plant = null;
            // $shipToParty->other_combination = "X";
            // $shipToParty->incoterms = null;
            // $shipToParty->incoterms_loc_1 = null;
            // $shipToParty->sd_payment_terms = null;
            // $shipToParty->acc_assignment_group = $request->acc_assignment_group;
            // $shipToParty->tax_classification = $request->tax_classification;
            $shipToParty->territory = $soldToParty->territory;;
            $shipToParty->territory_id = $soldToParty->territory_id; //non sap

            $shipToParty->customer_group =  $soldToParty->customer_group;;
            $shipToParty->trade_category =  $soldToParty->trade_category;;
            $shipToParty->trade_sub_category =  $soldToParty->trade_sub_category;;
            // $shipToParty->customer_group_3 = $request->customer_group_3;
            // $shipToParty->customer_group_4 = $request->customer_group_4;
            // $shipToParty->customer_group_5 = $request->customer_group_5;
            $shipToParty->bp_type =  $soldToParty->bp_type;;
            // $shipToParty->attr_2 = $request->attr_2;
            // $shipToParty->attr_3 = $request->attr_3;
            // $shipToParty->attr_4 = $request->attr_4;
            // $shipToParty->factory_address_2 = $request->factory_address_2;

            $shipToParty->loc_division_id =  $request->loc_division ? $request->loc_division : $soldToParty->loc_division_id;
            $shipToParty->loc_district_id = $request->loc_district ? $request->loc_district : $soldToParty->loc_district_id;;
            $shipToParty->loc_upazila_id = $request->loc_thana ? $request->loc_thana : $soldToParty->loc_upazila_id;;
            $shipToParty->loc_post_office_id = $request->post_office ? $request->post_office : $soldToParty->loc_post_office_id;;
            // $shipToParty->image = $request->image;
            $shipToParty->lat = $request->lat;
            $shipToParty->long = $request->long;
            $shipToParty->employee_id =  auth()->user()->employee->id;
            
            $shipToParty->remarks = $request->remarks;
            $shipToParty->created_by = auth()->user()->id;
            $shipToParty->hostname = gethostname();
            $shipToParty->save();

            ShipToPartyprocessLog::create([
                'ship_to_party_id' => $shipToParty->id,
                'chk_from' => 1,
                'chk_to' => 2, //SV Varify
                'status' => 1,
                'remarks' => "Verification Processing",
            ]);
  
            $msg = 'Ship To Party created successfully';



         
            
        }catch(Exception $e){
            $msg = $e->getMessage();
            

        }
        return response()->json([
            'message' => $msg,
        ]);


    }

    public function storeExistingVisit(Request $request){
        // return response()->json($request->all());

        $request->validate([
            'sold_to_party_id' => 'required',
            'visit_purpose_id' => 'required',
            'other_purpose' => 'nullable|string|max:500',
            'sales_performance' => 'nullable|string',
            'stock_verification' => 'nullable|string',
            'mkt_mat_display' => 'nullable|string',
            'remarks' => 'nullable|string|max:500',
            'lat' => 'required',
            'long' => 'required',
        ]);

        try{
            $existingVisit = new ExistingVisit();
            $existingVisit->sold_to_party_id = $request->sold_to_party_id;
            $existingVisit->ship_to_party_id = $request->ship_to_party_id;
            $existingVisit->visit_purpose_id = $request->visit_purpose_id;
            $existingVisit->other_purpose = $request->other_purpose;
            $existingVisit->sales_performance = $request->sales_performance;
            $existingVisit->stock_verification = $request->stock_verification;
            $existingVisit->mkt_mat_display = $request->mkt_mat_display;
            $existingVisit->remarks = $request->remarks;
            $existingVisit->lat = $request->lat;
            $existingVisit->long = $request->long;
            $existingVisit->employee_id = auth()->user()->employee->id;
            $existingVisit->status = 1; //pending
            $existingVisit->activeStatus = true;
            $existingVisit->created_by = auth()->user()->id;
            $existingVisit->hostname = gethostname();
            $existingVisit->save();
            $msg = 'Existing Visit created successfully';
        }catch(Exception $e){
            $msg = $e->getMessage();
        }
        return response()->json([
            'message' => $msg,
        ]);
    }


       public function storeOtherVisit(Request $request){
        // return response()->json($request->all());

        $request->validate([
            'site_name' => 'required|string|max:255',
            'address' => 'required|string|max:500',
            'visit_purpose_id' => 'required',
            'other_purpose' => 'nullable|string|max:500',
            'loc_division' => 'required',
            'loc_district' => 'required',
            'loc_thana' => 'required',
            'post_office' => 'nullable',
            'remarks' => 'nullable|string|max:500',
            'long' => 'required',
            'lat' => 'required',
        ]);
        

        try{
            $otherVisit = new OtherVisit();
            $otherVisit->site_name = $request->site_name;
            $otherVisit->address = $request->address;
            $otherVisit->post_code = $request->post_code;
            $otherVisit->visit_purpose_id = $request->visit_purpose_id;
            $otherVisit->other_purpose = $request->other_purpose;
            $otherVisit->loc_division_id = $request->loc_division;
            $otherVisit->loc_district_id = $request->loc_district;
            $otherVisit->loc_upazila_id = $request->loc_thana;
            $otherVisit->loc_post_office_id = $request->post_office;
            $otherVisit->remarks = $request->remarks;
            $otherVisit->lat = $request->lat;
            $otherVisit->long = $request->long;
            $otherVisit->employee_id = auth()->user()->employee->id;
            $otherVisit->status = 1; //pending
            $otherVisit->created_by = auth()->user()->id;
            $otherVisit->hostname = gethostname();
            $otherVisit->save();
            $msg = 'Other Visit created successfully';

           
        }catch(Exception $e){
            $msg = $e->getMessage();
        }
        return response()->json([
            'message' => $msg,
        ]);
    }

}
