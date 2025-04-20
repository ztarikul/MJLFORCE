<?php

namespace Database\Seeders;

use App\Models\Designation;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DesignationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $designations = [
            'Cheif Executive Officer',
            'Chief Operating Officer',
            'Senior General Manager',
            'General Manager',
            'Deputy General Manager',
            'Assistant General Manager',
            'Senior Manager',
            'Manager',
            'Deputy Manager',
            'Assistant Manager',
            'Sr. Executive',
            'Executive',
            'Officer',
            'Jr. Officer'
        ];

        foreach($designations as $designation){
            Designation::create([
                'name' => $designation
            ]);
        }
    }
}
