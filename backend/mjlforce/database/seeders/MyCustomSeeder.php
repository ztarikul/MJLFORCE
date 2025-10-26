<?php

namespace Database\Seeders;

use App\Models\ShipToParty;
use App\Models\ShipToPartyprocessLog;
use App\Models\SoldToParty;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MyCustomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        $soldToParties = ShipToParty::pluck('id');
      
        foreach ($soldToParties as $party) {
            // For each SoldToParty, create a SoldToPartyLeadLog entry
            ShipToPartyprocessLog::create([
                'ship_to_party_id' => $party, 
                'chk_from' => 4,
                'chk_to' => 5,
                'status' => 2,
            ]);
        }


    }
}
