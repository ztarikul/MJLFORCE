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
                
            ],
            [
                'name' => "Direct",
                'sap_code' => "15",
                
            ],
            [
                'name' => "Distributor",
                'sap_code' => "14",
                
            ],
            [
                'name' => "Export-Deemed",
                'sap_code' => "20",
                
            ],
            [
                'name' => "Export",
                'sap_code' => null,
                
            ],
            [
                'name' => "Marine",
                'sap_code' => "30"
            ],
            [
                'name' => "Retail Offline",
                'sap_code' => "11"
            ],
            [
                'name' => "Wholesale",
                'sap_code' => "13"
            ],
            [
                'name' => "Retail Online",
                'sap_code' => "12"
            ],
            [
                'name' => "MJL Online",
                'sap_code' => "16"
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
