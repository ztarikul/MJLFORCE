<?php

namespace Database\Seeders;

use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $json = file_get_contents(public_path('data/bd-divisions.json'));
        $data = json_decode($json, true);

        foreach($data as $division){
            LocDivision::create([
                'name' => $division['name'],
                'bn_name' => $division['bn_name'],
                'lat' => $division['lat'],
                'long' => $division['long'],
            ]);
        }

        $json = file_get_contents(public_path('data/bd-districts.json'));
        $data = json_decode($json, true);

        foreach($data as $district){
            LocDistrict::create([
                'loc_division_id' => $district['division_id'],
                'name' => $district['name'],
                'bn_name' => $district['bn_name'],
                'lat' => $district['lat'],
                'long' => $district['long'],
            ]);
        }

        $json = file_get_contents(public_path('data/bd-upazilas.json'));
        $data = json_decode($json, true);

        foreach($data as $upazila){
            LocUpazila::create([
                'loc_district_id' => $upazila['district_id'],
                'name' => $upazila['name'],
                'bn_name' => $upazila['bn_name'],
            ]);
        }

        $json = file_get_contents(public_path('data/dhaka-city.json'));
        $data = json_decode($json, true);

        foreach($data as $upazila){
            LocUpazila::create([
                'loc_district_id' => $upazila['district_id'],
                'name' => $upazila['name'],
                'bn_name' => $upazila['bn_name'],
            ]);
        }

        $json = file_get_contents(public_path('data/bd-postcodes.json'));
        $data = json_decode($json, true);
        // dd($data);
        foreach($data as $post){
            LocPostOffice::create([
                'loc_division_id' => $post['division_id'],
                'loc_district_id' => $post['district_id'],
                'post_office' => $post['postOffice'],
                'post_code' => $post['postCode'],
            ]);
        }
    }
}
