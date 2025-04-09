<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AttendanceHistory;
use App\Models\Employee;
use Carbon\Carbon;
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

    public function startdayAttendance(Request $request){
        
        $attendanceHistory = new AttendanceHistory();
        $attendanceHistory->card_id = $request->card_id;
        $attendanceHistory->date = Carbon::now()->toDateString();
        $attendanceHistory->time = Carbon::now()->toTimeString();
        $attendanceHistory->in_out = 1;
        $attendanceHistory->lat = $request->lat;
        $attendanceHistory->long = $request->long;
        $attendanceHistory->save();
        return response()->json(['status' => 1, 'msg' => 'Attendance placed successfuly'], 201);
    }

    public function attendanceHistory(){

        $employee = Employee::select('id', 'name', 'card_id')->find(1);
        $attendanceHistory =  $employee->attendanceHistory()->where('date', Carbon::today()->toDateString())->first();

        return response()->json($attendanceHistory);
    }

}
