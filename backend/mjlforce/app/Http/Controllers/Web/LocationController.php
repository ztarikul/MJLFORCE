<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\LocPostOffice;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    //

    public function index(){

        $postCodes = LocPostOffice::orderBy('loc_division_id', 'asc')->get();
        return view('locations.index', compact('postCodes'));
    }
}
