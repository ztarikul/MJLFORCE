<?php

namespace Database\Seeders;

use App\Models\TradeCategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TradeCaegoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $categories = [
            [
                'name' => "Energy",
                'sap_code' => "001",
            ],
            [
                'name' => "FCD/FMD/RCD/LCC",
                'sap_code' => "002",
               
            ],
            [
                'name' => "General Manufacturing",
                'sap_code' => "003",
               
            ],
            [
                'name' => "Inland Marine",
                'sap_code' => "004",
                
            ],
            [
                'name' => "JOCL Distributors",
                'sap_code' => "005",
                
            ],
            [
                'name' => "Local Export",
                'sap_code' => "006",
                
            ],
            [
                'name' => "Marine FG",
                'sap_code' => "007",
                
            ],
            [
                'name' => "Metals",
                'sap_code' => "008",
               
            ],
            [
                'name' => "Nepal Export",
                'sap_code' => "009",
                
            ],
            [
                'name' => "Off-Highway",
                'sap_code' => "010",
                
            ],
            [
                'name' => "On-Highway",
                'sap_code' => "011",
                
            ],
            [
                'name' => "Paper",
                'sap_code' => "012",
                
            ],
            [
                'name' => "Process",
                'sap_code' => "013",
               
            ],
            [
                'name' => "Retail",
                'sap_code' => "014"
            ]
            ];

            foreach($categories as $category){
                TradeCategory::create([
                    'name' => $category['name'],
                    'sap_code' => $category['sap_code'],
                ]);
            }
    }
}
