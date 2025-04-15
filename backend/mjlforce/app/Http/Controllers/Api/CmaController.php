<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use App\Models\Territory;
use Illuminate\Http\Request;

class CmaController extends Controller
{
    //
    public function visitNewSoldToPary(){
        $divisions = LocDivision::select('id', 'name')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->get();
        $postOffice = LocPostOffice::select('id', 'loc_upazila_id', 'post_office')->get();
        $salesTerritories = Territory::select('id', 'name', 'region_id')->get();

        return response()->json(['divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice, 'salesTerritories' => $salesTerritories], 200);
    } 
}
