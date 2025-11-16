<?php

namespace Database\Seeders;

use App\Models\Complaint;
use App\Models\Employee;
use App\Models\ShipToParty;
use App\Models\ShipToPartyprocessLog;
use App\Models\SoldToParty;
use App\Models\SoldToPartyProcessLog;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;

class MyCustomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        Schema::disableForeignKeyConstraints();
        // SoldToParty::truncate();
        // Employee::truncate();
        // ShipToParty::truncate();
        // ShipToPartyprocessLog::truncate();
        // Complaint::truncate();
        Schema::enableForeignKeyConstraints();


        // $soldToParties = ShipToParty::pluck('id');
      
        // foreach ($soldToParties as $party) {
        //     // For each SoldToParty, create a SoldToPartyLeadLog entry
        //     ShipToPartyprocessLog::create([
        //         'ship_to_party_id' => $party, 
        //         'chk_from' => 4,
        //         'chk_to' => 5,
        //         'status' => 2,
        //     ]);
        // }


        // $soldToParties = SoldToParty::pluck('id');
      
        // foreach ($soldToParties as $party) {
        //     // For each SoldToParty, create a SoldToPartyLeadLog entry
        //     SoldToPartyProcessLog::create([
        //         'sold_to_party_id' => $party, 
        //         'chk_from' => 4,
        //         'chk_to' => 5,
        //         'status' => 2,
        //     ]);
        // }

    }
}
