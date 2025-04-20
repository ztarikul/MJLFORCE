<?php

namespace Database\Seeders;

use App\Models\Region;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use function PHPSTORM_META\map;

class RegionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $regions = [
            'Dhaka',
            'Chittagong',
            'Jessore',
            'Bogura'
        ];

        foreach($regions as $region){
            Region::create([
                'name' => $region
            ]);
        }
        
    }
}
