<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\BusinessTeam;
use App\Models\CustomerGroup;
use Illuminate\Http\Request;

class MasterDataController extends Controller
{
    //

    public function customerGroupIndex(){
        $customerGroups = CustomerGroup::orderBy('name', 'asc')->get();
        return view('masterData.customerGroup.index', compact('customerGroups'));
    }
    public function businessTeamIndex(){
        $businessTeams = BusinessTeam::orderBy('name', 'asc')->get();
        return view('masterData.businessTeam.index', compact('businessTeams'));
    }
}
