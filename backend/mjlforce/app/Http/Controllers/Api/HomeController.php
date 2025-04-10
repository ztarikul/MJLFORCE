<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AttendanceHistory;
use App\Models\Employee;
use Carbon\Carbon;
use GuzzleHttp\Client;
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

        
        if($request->lat == null || $request->long == null){
            return response()->json(['msg' => "Location is not found, Turn on your location and try again"], 422);
        }

        
        // $attendanceHistory = new AttendanceHistory();
        // $attendanceHistory->card_id = $request->card_id;
        // $attendanceHistory->date = Carbon::now()->toDateString();
        // $attendanceHistory->time = Carbon::now()->toTimeString();
        // $attendanceHistory->in_out = 1;
        // $attendanceHistory->lat = $request->lat;
        // $attendanceHistory->long = $request->long;



        // $apiKey = "pk.c0650c565137fc14c7357d022f922689";
        // $apiUrl = "https://us1.locationiq.com/v1/reverse?key={$apiKey}&lat={$lat}&lon=-{$long}&format=json";
        // $client =  new Client();
        // $response = $client->get($apiUrl);
        // $attendanceHistory->save();
        return response()->json(['status' => 1, 'msg' => 'Attendance placed successfuly'], 201);
    }

    public function attendanceHistory(){

        $employee = Employee::select('id', 'user_id', 'name', 'card_id')->where('user_id', auth()->id())->first();
        $attendanceHistory =  $employee->attendanceHistory()->where('date', Carbon::today()->toDateString())->get();

        return response()->json($attendanceHistory);
    }

}
