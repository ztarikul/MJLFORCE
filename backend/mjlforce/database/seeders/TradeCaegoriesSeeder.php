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
                'customer_group_id' => 1
            ],
            [
                'name' => "FCD/FMD/RCD/LCC",
                'sap_code' => "002",
                'customer_group_id' => 2
            ],
            [
                'name' => "General Manufacturing",
                'sap_code' => "003",
                'customer_group_id' => 1
            ],
            [
                'name' => "Inland Marine",
                'sap_code' => "004",
                'customer_group_id' => 1
            ],
            [
                'name' => "JOCL Distributors",
                'sap_code' => "005",
                'customer_group_id' => 3
            ],
            [
                'name' => "Local Export",
                'sap_code' => "006",
                'customer_group_id' => 4
            ],
            [
                'name' => "Marine FG",
                'sap_code' => "007",
                'customer_group_id' => 6
            ],
            [
                'name' => "Metals",
                'sap_code' => "008",
                'customer_group_id' => 1
            ],
            [
                'name' => "Nepal Export",
                'sap_code' => "009",
                'customer_group_id' => 5
            ],
            [
                'name' => "Off-Highway",
                'sap_code' => "010",
                'customer_group_id' => 2
            ],
            [
                'name' => "On-Highway",
                'sap_code' => "011",
                'customer_group_id' => 2
            ],
            [
                'name' => "Paper",
                'sap_code' => "012",
                'customer_group_id' => 1
            ],
            [
                'name' => "Process",
                'sap_code' => "013",
                'customer_group_id' => 1
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
