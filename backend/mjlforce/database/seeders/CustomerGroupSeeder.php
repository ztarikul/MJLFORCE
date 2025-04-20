<?php

namespace Database\Seeders;

use App\Models\CustomerGroup;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CustomerGroupSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $groups = [
            [
                'name' => "Industrial",
                'sap_code' => "01",
            ],
            [
                'name' => "Direct",
                'sap_code' => "06"
            ],
            [
                'name' => "Distributor",
                'sap_code' => "05"
            ],
            [
                'name' => "Export-Deemed",
                'sap_code' => "09"
            ],
            [
                'name' => "Export",
                'sap_code' => "08"
            ],
            [
                'name' => "Marine",
                'sap_code' => "10"
            ],
            [
                'name' => "Retail Offline",
                'sap_code' => "02"
            ],
            [
                'name' => "Wholesale",
                'sap_code' => "04"
            ],
            [
                'name' => "Retail Online",
                'sap_code' => "03"
            ]
        ];

        foreach($groups as $group){
            CustomerGroup::create([
                'name' => $group['name'],
                'sap_code' => $group['sap_code']
            ]);
        }
        
    }
}
