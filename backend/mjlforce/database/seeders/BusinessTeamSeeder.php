<?php

namespace Database\Seeders;

use App\Models\BusinessTeam;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BusinessTeamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        $businessTeams = [
            'Industrial',
            'Automotive',
            "Omera"
        ];

        foreach($businessTeams as $team){
            BusinessTeam::create([
                'name' => $team,

            ]);
        }
    }
}
