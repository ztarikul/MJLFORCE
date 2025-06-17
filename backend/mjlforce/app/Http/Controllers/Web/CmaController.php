<?php

namespace App\Http\Controllers\Web;

use App\Exports\SoldToPartyToSapExport;
use App\Http\Controllers\Controller;
use App\Models\CustomerType;
use App\Models\LocDivision;
use App\Models\LocDistrict;
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
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;

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



    public function soldToPartyMisToSAP(Request $request, $id){
        // dd($request->all());
        $msg = '';
        try{
            $soldToParty = SoldToParty::findOrFail($id);            
            $soldToParty->customer_acc_group = $request->customer_type;
            $soldToParty->company_code = $request->company_code;
            $soldToParty->sales_org = $request->sales_org;
            $soldToParty->distribution_ch = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_sub_category)->first()->distributionCh->sap_code ;   
            $soldToParty->sales_division = $request->sales_division;   //Common
            
            $soldToParty->acc_name = $request->acc_name;
            $soldToParty->acc_name2 = $request->acc_name2;
            $soldToParty->search_term = $request->search_term;
            $soldToParty->search_term2 = $request->search_term2;
            $soldToParty->legacy_acc_code = $request->legacy_acc_code;
            $soldToParty->country = $request->country; // BD, CY, DE, SG, SN, VN,
            $soldToParty->region = $request->region;
            $soldToParty->region_id = null;
            $soldToParty->district = $request->district;
            $soldToParty->address = $request->address;
            $soldToParty->ceo = $request->ceo;
            $soldToParty->address_2 = $request->address_2;
            $soldToParty->address_3 = $request->address_3;
            $soldToParty->lang = $request->lang;
            $soldToParty->phone = $request->phone;
            $soldToParty->mobile_phone = $request->mobile_phone;
            $soldToParty->fax = $request->fax;
            $soldToParty->email = $request->email;
            $soldToParty->other_url = $request->other_url;
            $soldToParty->postal_code = $request->postal_code;
            $soldToParty->contact_person_name = $request->contact_person_name;
            $soldToParty->contact_person_tel = $request->contact_person_tel;
            $soldToParty->contact_person_mobile = $request->contact_person_mobile;
            $soldToParty->group = $request->group;

            $soldToParty->payment_mode = $request->payment_mode; //for rent it is blank otherwise 1G

            $soldToParty->bin_no = $request->bin_no;
            $soldToParty->vat_reg_num = $request->vat_reg_num;
            $soldToParty->recon_acc = $request->recon_acc;
            $soldToParty->fi_payment_terms = $request->fi_payment_terms;
            $soldToParty->currency = $request->currency;
            $soldToParty->cust_pricing_procedure = $request->cust_pricing_procedure;
            $soldToParty->shipping_condition = $request->shipping_condition;
            $soldToParty->delivering_plant = $request->delivering_plant;
            $soldToParty->other_combination = $request->other_combination;
            $soldToParty->incoterms = $request->incoterms;
            $soldToParty->incoterms_loc_1 = $request->incoterms_loc_1;
            $soldToParty->sd_payment_terms = $request->sd_payment_terms;
            $soldToParty->acc_assignment_group = $request->acc_assignment_group;
            $soldToParty->tax_classification = $request->tax_classification;
            $soldToParty->territory = Territory::find($request->territory)->sap_code;
          
            $soldToParty->customer_group = SoldToPartySalesArea::where('trade_category_id', $request->trade_category)->where('trade_sub_category_id', $request->trade_sub_category)->first()->customerGroup()->first()->sap_code;
            $soldToParty->trade_category = TradeCategory::find($request->trade_category)->sap_code;
            $soldToParty->trade_sub_category = TradeSubCategory::find($request->trade_sub_category)->sap_code;
            $soldToParty->customer_group_3 = $request->customer_group_3;
            $soldToParty->customer_group_4 = $request->customer_group_4;
            $soldToParty->customer_group_5 = $request->customer_group_5;
            $soldToParty->bp_type = $request->bp_type;
            $soldToParty->attr_2 = $request->attr_2;
            $soldToParty->attr_3 = $request->attr_3;
            $soldToParty->attr_4 = $request->attr_4;
            $soldToParty->factory_address_2 = $request->factory_address_2;

            // $soldToParty->update();

            // SoldToPartyProcessLog::create([
            //     'sold_to_party_id' => $soldToParty->id,
            //     'chk_from' => 4, //MIS
            //     'chk_to' => 5, //SAP
            //     'status' => 1,
            //     'remarks' => "Send to SAP",
            // ]);

            $filename = 'Customer_Master_Information_' .$soldToParty->acc_name . '_' . now()->format('Y_m_d_His') . '.xlsx';
            Excel::store(new SoldToPartyToSapExport($soldToParty->id), 'exports/CMA/' . $filename);

            $url = Storage::url('exports/' . $filename);
  
            $msg = 'Sold To Party has been sent to the SAP';

        }catch(Exception $e){
            $msg = $e->getMessage();
        }

        return response()->json([
            'status' => 'success',
            'message' => $msg,
            'redirect' => route('cma.newSoldToPartyIndex')
        ]);
    }




}
