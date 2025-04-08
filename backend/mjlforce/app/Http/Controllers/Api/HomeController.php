<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function welcomeDashboard(){
        $employee =  Employee::select('id', 'user_id', 'name', 'card_id', 'sap_code')->where('user_id', auth()->id())->first();
        return response()->json(['employee' => $employee], 200);
    }

    public function sidebarUser(){
        $employee =  Employee::select('id', 'user_id', 'name', 'designation_id', 'business_team_id')->with(['designation:id,name', 'businessTeam:id,name'])->where('user_id', auth()->id())->first();
        return response()->json(['employee' => $employee], 200);
    }

}
