<?php

namespace Database\Seeders;

use App\Models\Employee;
use App\Models\SoldToParty;
use Exception;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Throwable;

class SoldToPartySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        
            $json = file_get_contents(public_path('data/soldToParty.json'));
            $soldToParties = json_decode($json, true);
            foreach($soldToParties as $data){
                
                // DB::beginTransaction();
                try{
                    $validator = Validator::make($data, [
                        'Customer_Code' => 'unique:sold_to_parties,customer_code',
                        // Add other validation rules as needed
                    ]);

                    if ($validator->fails()) {
                        throw new Exception('Duplicate Customer_Code: ' . $data['Customer_Code']);
                    }

                    SoldToParty::create([
                        'customer_code' => trim($data['Customer_Code'] ?? '') === '' ? null : $data['Customer_Code'],
                        'customer_acc_group' => trim($data['Account_Group'] ?? '') === '' ? null : $data['Account_Group'],
                        'company_code' => trim($data['Company_Code'] ?? '') === '' ? null : $data['Company_Code'],
                        'sales_org' => trim($data['Sales_Organization'] ?? '') === '' ? null : $data['Sales_Organization'],
                        'distribution_ch' => trim($data['Distribution_Channel'] ?? '') === '' ? null : $data['Distribution_Channel'],
                        'sales_division' => trim($data['Division'] ?? '') === '' ? null : $data['Division'],
                        'acc_name' => trim($data['Customer_Name'] ?? '') === '' ? null : $data['Customer_Name'],
                        'acc_name2' => trim($data['Customer_Name2'] ?? '') === '' ? null : $data['Customer_Name2'],
                        'search_term' => trim($data['Search_Term_1'] ?? '') === '' ? null : $data['Search_Term_1'],
                        'search_term2' => trim($data['Search_Term_2'] ?? '') === '' ? null : $data['Search_Term_2'],
                        'legacy_acc_code' => trim($data['demo_data'] ?? '') === '' ? null : $data['demo_data'],
                        'country' => trim($data['Country'] ?? '') === '' ? null : $data['Country'],
                        'region' => trim($data['Region'] ?? '') === '' ? null : $data['Region'],
                        'district' => trim($data['City'] ?? '') === '' ? null : $data['City'],
                        'address' => trim($data['Street'] ?? '') === '' ? null : $data['Street'],
                        'ceo' => trim($data['C_O'] ?? '') === '' ? null : $data['C_O'],
                        'address_2' => trim($data['Street_3'] ?? '') === '' ? null : $data['Street_3'],
                        'address_3' => trim($data['Street_4'] ?? '') === '' ? null : $data['Street_4'],
                        'lang' => trim($data['Language_Code'] ?? '') === '' ? null : $data['Language_Code'],
                        'phone' => trim($data['Telephone'] ?? '') === '' ? null : $data['Telephone'],
                        'mobile_phone' => trim($data['Mobile_Phone'] ?? '') === '' ? null : $data['Mobile_Phone'],
                        'email' => trim($data['E_Mail_Address'] ?? '') === '' ? null : $data['E_Mail_Address'],
                        'other_url' => trim($data['URI_address'] ?? '') === '' ? null : $data['URI_address'],
                        'postal_code' => trim($data['Postal_Code'] ?? '') === '' ? null : $data['Postal_Code'],
                        'contact_person_name' => trim($data['Contact_Person_C_O'] ?? '') === '' ? null : $data['Contact_Person_C_O'],
                        'contact_person_tel' => trim($data['Contact_Person_Telephone'] ?? '') === '' ? null : $data['Contact_Person_Telephone'],
                        'contact_person_mobile' => trim($data['Contact_Person_Mobile_Phone'] ?? '') === '' ? null : $data['Contact_Person_Mobile_Phone'],
                        'group' => trim($data['Group'] ?? '') === '' ? null : $data['Group'],
                        'bin_no' => trim($data['BIN_No'] ?? '') === '' ? null : $data['BIN_No'],
                        'vat_reg_num' => trim($data['demoVAT_Reg_No_data'] ?? '') === '' ? null : $data['demoVAT_Reg_No_data'],
                        'recon_acc' => trim($data['Reconcillation_Account'] ?? '') === '' ? null : $data['Reconcillation_Account'],
                        'fi_payment_terms' => trim($data['FI_Payment_Term'] ?? '') === '' ? null : $data['FI_Payment_Term'],
                        'currency' => trim($data['Currency'] ?? '') === '' ? null : $data['Currency'],
                        'cust_pricing_procedure' => trim($data['Customer_Pricing'] ?? '') === '' ? null : $data['Customer_Pricing'],
                        'shipping_condition' => trim($data['Shipping_Condition'] ?? '') === '' ? null : $data['Shipping_Condition'],
                        'delivering_plant' => trim($data['Delivering_Plant'] ?? '') === '' ? null : $data['Delivering_Plant'],
                        'other_combination' => trim($data['Order_Combination'] ?? '') === '' ? null : $data['Order_Combination'],
                        'incoterms' => trim($data['Incoterms'] ?? '') === '' ? null : $data['Incoterms'],
                        'incoterms_loc_1' => trim($data['Incoterms_Location1'] ?? '') === '' ? null : $data['Incoterms_Location1'],
                        'sd_payment_terms' => trim($data['SD_Payment_Term'] ?? '') === '' ? null : $data['SD_Payment_Term'],
                        'acc_assignment_group' => trim($data['Account_Assignment'] ?? '') === '' ? null : $data['Account_Assignment'],
                        'tax_classification' => trim($data['Tax_Classification'] ?? '') === '' ? null : $data['Tax_Classification'],
                        'territory' => trim($data['Sales_District'] ?? '') === '' ? null : $data['Sales_District'],
                        'customer_group' => trim($data['Customer_Group'] ?? '') === '' ? null : $data['Customer_Group'],
                        'trade_category' => trim($data['Customer_Group1'] ?? '') === '' ? null : $data['Customer_Group1'],
                        'trade_sub_category' => trim($data['Customer_Group2'] ?? '') === '' ? null : $data['Customer_Group2'],
                        'customer_group_3' => trim($data['Customer_Group3'] ?? '') === '' ? null : $data['Customer_Group3'],
                        'customer_group_4' => trim($data['Customer_Group4'] ?? '') === '' ? null : $data['Customer_Group4'],
                        'customer_group_5' => trim($data['Customer_Group5'] ?? '') === '' ? null : $data['Customer_Group5'],
                        'bp_type' => trim($data['Account_Group'] ?? '') === '' ? null : $data['Account_Group'],
                        'attr_2' => trim($data['Attribute_2'] ?? '') === '' ? null : $data['Attribute_2'],
                        'attr_3' => trim($data['Attribute_3'] ?? '') === '' ? null : $data['Attribute_3'],
                        'attr_4' => trim($data['Attribute_4'] ?? '') === '' ? null : $data['Attribute_4'],
                        'attr_5' => trim($data['Attribute_5'] ?? '') === '' ? null : $data['Attribute_5'],
                        'employee_id' => trim($data['Sales_Employee'] ?? '') === '' ? null : Employee::where('sap_code', $data['Sales_Employee'])->value('id'),
                    // Optional fields can be added later if needed
                    // 'status' => 1,
                    // 'remarks' => null,
                    // 'activeStatus' => true,
                 
                    ]);
                        // DB::commit();

                }catch(Exception $e){
                    // DB::rollBack();
                    // Handle exception if needed
                    echo "Error: " . $e->getMessage();
                    continue;
                }    
            }
    }
}
