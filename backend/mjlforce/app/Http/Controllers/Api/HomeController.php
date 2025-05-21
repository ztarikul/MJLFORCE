<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use App\Models\AttendanceHistory;
use App\Models\Employee;
use App\Models\Promotion;
use App\Models\ShipToParty;
use App\Models\SoldToParty;
use App\Models\VisitPurpose;
use Carbon\Carbon;
use Exception;
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
        $msg = "";
        try{
            $lat = $request->lat;
            $long = $request->long;
    
            if($lat == null || $long == null){
                return response()->json(['msg' => "Location is not found, Turn on your location and try again"], 422);
            }
    
          
            $attendanceHistory = new AttendanceHistory();
            $attendanceHistory->card_id = $request->card_id;
            $attendanceHistory->date = Carbon::now()->toDateString();
            $attendanceHistory->time = Carbon::now()->toTimeString();
            $attendanceHistory->in_out = 1;
            $attendanceHistory->lat = $request->lat;
            $attendanceHistory->long = $request->long;
    

            $locationResponse = getReverseGeoLocation($lat, $long);
            if(isset($locationResponse->original) && $locationResponse->original['error']){
                $attendanceHistory->verification = $locationResponse->original['status'] . "api error";
                $attendanceHistory->street_name =  "Not Found!";
            }else{
                $attendanceHistory->verification = "succeess";
                $attendanceHistory->street_name =  $locationResponse['display_name'];
            }
            $attendanceHistory->save();
            $msg = 'Attendance placed successfuly';
        }catch(Exception $e){
            $msg = $e->getMessage();
        }
       

       
        return response()->json(['status' => 1, 'msg' => $msg, 'location_name' => $locationResponse], 201);
    }

    public function attendanceHistory(){
        $attendanceHistory = [];
        try{
            $employee = Employee::select('id', 'user_id', 'name', 'card_id')->where('user_id', auth()->id())->first();
            if(!empty($employee)){
                
                $attendanceHistory =  $employee->attendanceHistory()->where('date', Carbon::today()->toDateString())->get();
            }
        }catch(Exception $e){
            
        }
        

        return response()->json($attendanceHistory);
    }

    public function leads(){
       $leads = [];
        try{
            $employee = Employee::select('id', 'user_id', 'name', 'card_id', )->where('user_id', auth()->id())->first();
            if(!empty($employee)){
                $soldToPaties = SoldToParty::select('id', 'acc_name', 'address', 'created_at')->where('employee_id', $employee->id)->latest()->get();
               
                foreach($soldToPaties as $idx => $soldToParty){
                     
                    if($soldToParty->currentProcess->chk_to === 2){
                        $leads[] = [
                            'id' => $soldToParty->id,
                            'acc_name' => $soldToParty->acc_name,
                            'address' => $soldToParty->address,
                            'created_at' => $soldToParty->created_at
                        ];
                    }
                    
                }
            }
        }catch(Exception $e){
            
        }
        
        return response()->json(['leads' => $leads], 200);
    }

       public function create_sh2p(Request $request){
        $employee = Employee::select('id', 'user_id', 'name', 'card_id', )->where('user_id', auth()->id())->first();
        $divisions = LocDivision::select('id', 'name')->orderBy('name', 'asc')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->orderBy('name', 'asc')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->orderBy('name', 'asc')->get();
        $postOffice = LocPostOffice::select('id', 'loc_upazila_id', 'post_office')->orderBy('post_office', 'asc')->get();
        if($request->query('sold_to_party_id')){
          
             $soldToParty = SoldToParty::select('id', 'acc_name', 'acc_name2', 'address', 'address_2', 'address_3', 'contact_person_name', 'contact_person_mobile', 'bin_no', 'created_at')->findOrFail($request->query('sold_to_party_id'));
              return response()->json(['soldToParty' => $soldToParty], 200);
        }

        $soldToParties = SoldToParty::select('id', 'acc_name', 'address', 'created_at')->withCount('shipToParties')->where('employee_id', $employee->id)->orderBy('acc_name', 'asc')->get();

        return response()->json(['soldToParties' => $soldToParties, 'divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice], 200);
    }

    public function existingVisit(Request $request){
       $employee = Employee::select('id', 'user_id', 'name', 'card_id', )->where('user_id', auth()->id())->first();
        if($request->query('sold_to_party_id')){
            
                $shipToParties = ShipToParty::select('id', 'customer_code', 'acc_name', 'created_at')->where('sold_to_party_id', $request->query('sold_to_party_id'))->whereHas('currentProcess', function($query){
                     $query->where('chk_to', 5);
                })->get();
                return response()->json(['shipToParties' => $shipToParties], 200);
        }

        //sold_to_party those are approved.
        $soldToParties = SoldToParty::select('id', 'acc_name', 'address', 'created_at')->whereHas('currentProcess', function($query){
            $query->where('chk_to', 5);
        })->where('employee_id', $employee->id)->orderBy('acc_name', 'asc')->get();

        $visitPurposes = VisitPurpose::all();
        

        return response()->json(['soldToParties' => $soldToParties, 'visitPurposes' => $visitPurposes], 200);
    }

    public function otherVisit(Request $request){
        
        $divisions = LocDivision::select('id', 'name')->orderBy('name', 'asc')->get();
        $districts = LocDistrict::select('id', 'loc_division_id', 'name')->orderBy('name', 'asc')->get();
        $upazilas = LocUpazila::select('id', 'loc_district_id', 'name')->orderBy('name', 'asc')->get();
        $postOffice = LocPostOffice::select('id', 'loc_upazila_id', 'post_office')->orderBy('post_office', 'asc')->get();
        $visitPurposes = VisitPurpose::all();

         return response()->json(['divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice, 'visitPurposes' => $visitPurposes], 200);
    }

    public function promotions(){
        $Promotions = Promotion::with('items')->orderBy('start_from', 'asc')->get();

        return response()->json(['promotions' => $Promotions], 200);
    }

}
