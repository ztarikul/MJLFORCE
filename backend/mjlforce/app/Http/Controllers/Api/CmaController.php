<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use Illuminate\Http\Request;

class CmaController extends Controller
{
    //
    public function visitNewSoldToPary(){
        $divisions = LocDivision::select('id', 'name')->get();
        $districts = LocDistrict::select('id', 'name')->get();
        $upazillas = LocUpazila::select('id', 'name')->get();
        $postOffice = LocPostOffice::select('id', 'post_office')->get();

        return response()->json(['divisions'=> $divisions, 'districts' => $districts, 'upazillas' => $upazillas, 'postOffice' => $postOffice], 200);
    } 
}
