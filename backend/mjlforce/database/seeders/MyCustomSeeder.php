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

        // Schema::disableForeignKeyConstraints();
        // // SoldToParty::truncate();
        // // Employee::truncate();
        // // ShipToParty::truncate();
        // // ShipToPartyprocessLog::truncate();
        // // Complaint::truncate();
        // Schema::enableForeignKeyConstraints();


        // $soldToParties = ShipToParty::where('id', '>', '2844')->pluck('id');

        // print_r($soldToParties->toArray());
        // // die();
        // foreach ($soldToParties as $party) {
        //     // For each SoldToParty, create a SoldToPartyLeadLog entry
        //     ShipToPartyprocessLog::create([
        //         'ship_to_party_id' => $party,
        //         'chk_from' => 4,
        //         'chk_to' => 5,
        //         'status' => 2,
        //     ]);
        // }


        // $soldToParties = SoldToParty::where('id', '>', '3912')->pluck('id');

        // print_r($soldToParties->toArray());

        // foreach ($soldToParties as $party) {
        //     // For each SoldToParty, create a SoldToPartyLeadLog entry
        //     SoldToPartyProcessLog::create([
        //         'sold_to_party_id' => $party,
        //         'chk_from' => 4,
        //         'chk_to' => 5,
        //         'status' => 2,
        //     ]);
        // }




        $salesData = [
            ["sold_to_party" => "11000395", "salesperson" => "EM00010165"],
            ["sold_to_party" => "11000542", "salesperson" => "EM00010165"],
            ["sold_to_party" => "11001195", "salesperson" => "EM00010165"],
            ["sold_to_party" => "11002015", "salesperson" => "EM00010165"],
            ["sold_to_party" => "11002016", "salesperson" => "EM00010165"],
            ["sold_to_party" => "11003310", "salesperson" => "EM00010165"],
            ["sold_to_party" => "11000133", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11000723", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11000838", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001283", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001284", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001314", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001315", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001343", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001500", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001503", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001896", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11002421", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11002821", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11003020", "salesperson" => "EM00010151"],
            ["sold_to_party" => "11001255", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001270", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001271", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001273", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001290", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001297", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001305", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001309", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001334", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001338", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11002103", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11002187", "salesperson" => "EM00010228"],
            ["sold_to_party" => "11001292", "salesperson" => "EM00010238"],
            ["sold_to_party" => "11001304", "salesperson" => "EM00010238"],
            ["sold_to_party" => "11001287", "salesperson" => "EM00010274"],
            ["sold_to_party" => "11001288", "salesperson" => "EM00010274"],
            ["sold_to_party" => "11001289", "salesperson" => "EM00010274"],
            ["sold_to_party" => "11001434", "salesperson" => "EM00010274"],
            ["sold_to_party" => "11002319", "salesperson" => "EM00010274"],
            ["sold_to_party" => "11002365", "salesperson" => "EM00010274"],
            ["sold_to_party" => "11002520", "salesperson" => "EM00010274"],
            ["sold_to_party" => "11001243", "salesperson" => "EM00010415"],
            ["sold_to_party" => "11001277", "salesperson" => "EM00010415"],
            ["sold_to_party" => "11001328", "salesperson" => "EM00010415"],
            ["sold_to_party" => "11001522", "salesperson" => "EM00010415"],
            ["sold_to_party" => "11001554", "salesperson" => "EM00010415"],
            ["sold_to_party" => "11002923", "salesperson" => "EM00010415"],
            ["sold_to_party" => "11002931", "salesperson" => "EM00010415"],
            ["sold_to_party" => "11000724", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11001477", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11001621", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11002067", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11002328", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11002366", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11002388", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11003487", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11003619", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11003747", "salesperson" => "EM00010229"],
            ["sold_to_party" => "11000553", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11000684", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11000752", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001050", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001279", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001319", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001339", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001499", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001614", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001620", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001768", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11001903", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11002304", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11003158", "salesperson" => "EM00010237"],
            ["sold_to_party" => "11000458", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11001142", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11001285", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11001308", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11001316", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11001327", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11001331", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11002946", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11003498", "salesperson" => "EM00010389"],
            ["sold_to_party" => "11000187", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001109", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001131", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001269", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001274", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001281", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001291", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001317", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001324", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001340", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001347", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001349", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001558", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11002260", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11002959", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11003097", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11003240", "salesperson" => "EM00010166"],
            ["sold_to_party" => "11001152", "salesperson" => "EM00010272"],
            ["sold_to_party" => "11001276", "salesperson" => "EM00010272"],
            ["sold_to_party" => "11001322", "salesperson" => "EM00010272"],
            ["sold_to_party" => "11001346", "salesperson" => "EM00010272"],
            ["sold_to_party" => "11002281", "salesperson" => "EM00010272"],
            ["sold_to_party" => "11000433", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11000831", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11001365", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11001389", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11001420", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11001501", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11001604", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11002077", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11002305", "salesperson" => "EM00010233"],
            ["sold_to_party" => "11001306", "salesperson" => "EM00010293"],
            ["sold_to_party" => "11002354", "salesperson" => "EM00010293"],
            ["sold_to_party" => "11003016", "salesperson" => "EM00010293"],
            ["sold_to_party" => "11003207", "salesperson" => "EM00010293"]
        ];

        foreach ($salesData as $data) {
            $soldToParty = SoldToParty::where('customer_code', $data['sold_to_party'])->first();
            $employee = Employee::where('sap_code', $data['salesperson'])->first();

            if ($soldToParty && $employee) {
                $soldToParty->omera_employee_id = $employee->id;
                $soldToParty->update();
            }
        }
    }
}
