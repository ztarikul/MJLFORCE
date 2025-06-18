<?php

namespace Database\Seeders;

use App\Models\LeadStage;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LeadStageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $stages = [
            'Prospect',
            'Identify Account Need',
            'Formulate Offer',
            'Negotiate to Close',
            'Manage Implementation',
            'Loss',
            'Complete for CMA'
        ];

       
        foreach ($stages as $stage) {
            LeadStage::create([
                'stage' => $stage,

            ]);
        }
    }
}
