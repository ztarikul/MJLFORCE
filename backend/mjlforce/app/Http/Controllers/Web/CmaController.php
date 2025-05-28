<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\SoldToParty;
use Illuminate\Http\Request;

class CmaController extends Controller
{
    //

    public function newSoldToPartyIndex(){
        $soldToParties = SoldToParty::whereHas('currentProcess', function($query){
             $query->where('chk_to', 4);
        })->get();
        return view('cma.soldToParties.index', compact('soldToParties'));
    }

    public function soldToPartyRequestForm($id){
        $soldToParty = SoldToParty::findOrFail($id);
        return view('cma.soldToParties.soldToPartyRequestForm', compact('soldToParty'));
    }




}
