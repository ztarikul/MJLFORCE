<?php

namespace Database\Seeders;

use App\Models\Territory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TerritoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $json = file_get_contents(public_path('data/territoty_list.json'));
        $data = json_decode($json, true);

        foreach($data as $territory){
            Territory::create([
                'name' => $territory['name'],
                'sap_code' => $territory['sap_code'],
            ]);
        }

    }
}
