<?php

namespace App\Console\Commands;

use App\Models\SalesTargetVsAchievement;
use Carbon\Carbon;
use Exception;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;

class SalesVsTargetSync extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'salesTargetSync';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Sync Sales Vs Target Data from SAP';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        //

        try{
            
            $year = Carbon::now()->format('Y');

            $client = new Client();
            $response = $client->get('http://10.24.242.9:56000/RESTAdapter/SalesTargetAchievement', [
                'auth' => ['sappo_app_user', 'LpYUQ93ITgkE'], // Basic Auth
                'headers' => [
                    'Accept' => 'application/json',
                    'Content-Type' => 'application/json',
                ],
                'json' => [
                    'RECORD' => [
                        'YEAR' => $year,
                        'Emp_Code' => '',
                    ],
                ],
            ]);
            $records = json_decode($response->getBody(), true);
            

            foreach($records['RESPONSE'] as $data ){
                
               SalesTargetVsAchievement::updateOrCreate(
                    [
                        'emp_sap_code' => $data['Emp_Code'],
                        'year' => $year, 
                    ],
                    [
                        'emp_name' => $data['Emp_Name'],
                        'jan_target' => $data['Jan_Target'],
                        'jan_sales' => $data['Jan_Sales'],
                        'jan_percentage' => $data['Jan_Percentage'],
                        'feb_target' => $data['Feb_Target'],
                        'feb_sales' => $data['Feb_Sales'],
                        'feb_percentage' => $data['Feb_Percentage'],
                        'mar_target' => $data['Mar_Target'],
                        'mar_sales' => $data['Mar_Sales'],
                        'mar_percentage' => $data['Mar_Percentage'],
                        'apr_target' => $data['Apr_Target'],
                        'apr_sales' => $data['Apr_Sales'],
                        'apr_percentage' => $data['Apr_Percentage'],
                        'may_target' => $data['May_Target'],
                        'may_sales' => $data['May_Sales'],
                        'may_percentage' => $data['May_Percentage'],
                        'jun_target' => $data['Jun_Target'],
                        'jun_sales' => $data['Jun_Sales'],
                        'jun_percentage' => $data['Jun_Percentage'],
                        'jul_target' => $data['Jul_Target'],
                        'jul_sales' => $data['Jul_Sales'],
                        'jul_percentage' => $data['Jul_Percentage'],
                        'aug_target' => $data['Aug_Target'],
                        'aug_sales' => $data['Aug_Sales'],
                        'aug_percentage' => $data['Aug_Percentage'],
                        'sep_target' => $data['Sep_Target'],
                        'sep_sales' => $data['Sep_Sales'],
                        'sep_percentage' => $data['Sep_Percentage'],
                        'oct_target' => $data['Oct_Target'],
                        'oct_sales' => $data['Oct_Sales'],
                        'oct_percentage' => $data['Oct_Percentage'],
                        'nov_target' => $data['Nov_Target'],
                        'nov_sales' => $data['Nov_Sales'],
                        'nov_percentage' => $data['Nov_Percentage'],
                        'dec_target' => $data['Dec_Target'],
                        'dec_sales' => $data['Dec_Sales'],
                        'dec_percentage' => $data['Dec_Percentage'],
                        'total_target' => $data['Total_Target'],
                        'total_sales' => $data['Total_Sales'],
                        'total_percentage' => $data['Total_Percentage'],
                    ]
                );
               
            }
        }catch(Exception $e){
            print( $e->getMessage());
        }


    }
}
