<?php

namespace Database\Seeders;

use App\Models\DistributionCh;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DistributionChannelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $distCh = [
            [
                'name' => "Industrial",
                'sap_code' => "10",
                'customer_group_id' => 1
            ],
            [
                'name' => "Direct",
                'sap_code' => "15",
                'customer_group_id' => 2
            ],
            [
                'name' => "Distributor",
                'sap_code' => "14",
                'customer_group_id' => 3
            ],
            [
                'name' => "Export-Deemed",
                'sap_code' => "20",
                'customer_group_id' => 4
            ],
            [
                'name' => "Export",
                'sap_code' => "10",
                'customer_group_id' => 5
            ],
            [
                'name' => "Marine",
                'sap_code' => 6
            ],
            [
                'name' => "Retail Offline",
                'sap_code' => 7
            ],
            [
                'name' => "Wholesale",
                'sap_code' => 8
            ],
            [
                'name' => "Retail Online",
                'sap_code' => 9
            ],
            [
                'name' => "MJL Online",
                'sap_code' => 9
            ]
        ];

        foreach($distCh as $ch){
            DistributionCh::create([
                'name' => $ch['name'],
                'sap_code' => $ch['sap_code'],
            ]);
        }
    }



}
