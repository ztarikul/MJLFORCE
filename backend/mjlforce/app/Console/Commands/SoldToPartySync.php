<?php

namespace App\Console\Commands;

use App\Models\Employee;
use App\Models\SoldToParty;
use Exception;
use Illuminate\Console\Command;
use GuzzleHttp\Client;

class SoldToPartySync extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'soldToPartySync';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        //
        try {


            $client = new Client();
            $response = $client->get('http://10.24.242.9:56000/RESTAdapter/CustomerList', [
                'auth' => ['sappo_app_user', 'LpYUQ93ITgkE'], // Basic Auth
                'headers' => [
                    'Accept' => 'application/json',
                    'Content-Type' => 'application/json',
                ],
                'json' => [
                    'RECORD' => [
                        "Customer_Code" => "",
                        "Account_Group" => "Z001"
                    ],
                ],
            ]);
        } catch (Exception $e) {
            print($e->getMessage());
        }

        $json = json_decode($response->getBody(), true);
        $records = collect($json['RESPONSE'])->unique('Customer_Code')->sortBy('Customer_Code')->values()->all();

        foreach ($records as $data) {

            try {
                $soldToParty =  SoldToParty::firstOrNew(
                    [
                        'customer_code' => trim($data['Customer_Code'] ?? '') === '' ? null : $data['Customer_Code'],
                    ],
                    [
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
                        'omera_employee_id' => trim($data['Omera_Sales_Person'] ?? '') === '' ? null : Employee::where('sap_code', $data['Omera_Sales_Person'])->value('id'),
                        // Optional fields can be added later if needed
                        // 'status' => 1,
                        // 'remarks' => null,
                        // 'activeStatus' => true,

                    ]
                );
                $soldToParty->save();
            } catch (Exception $e) {
                print($e->getMessage());
                continue;
            }
        }
    }
}
