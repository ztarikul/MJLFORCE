<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Mail\ComplaintRaiseMail;
use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\LocPostOffice;
use App\Models\LocUpazila;
use App\Models\AttendanceHistory;
use App\Models\Complaint;
use App\Models\ComplaintType;
use App\Models\Employee;
use App\Models\OtherVisitSite;
use App\Models\Promotion;
use App\Models\PromotionItems;
use App\Models\SalesTargetVsAchievement;
use App\Models\ShipToParty;
use App\Models\SoldToParty;
use App\Models\VisitPurpose;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{
    //
    public function welcomeDashboard(){
        $employee =  Employee::select('id', 'user_id', 'name', 'card_id', 'sap_code')->where('user_id', auth()->id())->first();
        return response()->json(['employee' => $employee], 200);
    }

    public function sidebarUser(){
        
        $employee =  Employee::select('id', 'user_id', 'sap_code', 'name', 'designation_id', 'business_team_id')->where('user_id', auth()->id())->first();
        $salesTargets = SalesTargetVsAchievement::where('emp_sap_code', $employee->sap_code)->where('year', Carbon::now()->year)->first();
        $total_sales_target = 0;
        $total_sales = 0;
        if($salesTargets){
            $total_sales_target = number_format($salesTargets->total_target, 3);  //Barrel conversion
            $total_sales = number_format($salesTargets->total_sales, 3); //Barrel conversion
            // $total_sales_target = number_format($salesTargets->total_target * 0.0062898108, 3);  //Barrel conversion
            // $total_sales = number_format($salesTargets->total_sales * 0.0062898108, 3); //Barrel conversion
        }
        $sidebarUser = [
            'employee_name' => $employee->name,
            'employee_designation' => $employee->designation?->name,
            'employee_businessTeam' => $employee->businessTeam?->name,
            'total_sales_target' =>$total_sales_target,
            'total_sales' => $total_sales,
            'total_customer' => $employee->soldToParties()->count(),
            'updated_at' => $salesTargets?->updated_at->toDateTimeString()
        ];
        return response()->json(['sidebarUser' => $sidebarUser], 200);
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
                $attendanceHistory->verification = "success";
                $attendanceHistory->street_name =  $locationResponse['display_name'];
            }
            $attendanceHistory->save();
            $msg = 'Attendance placed successfuly';

             $activityLog = [
                'user' => auth()->id(),
                'action' => "attendance",
                'remarks' => "Day Started" . Carbon::now()->toDateTimeString(),
                'log_type' => 2,// General actions
                'lat' => $request->lat,
                'long' => $request->long,

            ];

            storeEmployeeActivityLog($activityLog);
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
        $postOffice = LocPostOffice::select('id', 'loc_division_id', 'loc_district_id', 'post_office')->orderBy('post_office', 'asc')->get();
        if($request->query('sold_to_party_id')){
          
             $soldToParty = SoldToParty::select('id', 'acc_name', 'acc_name2', 'address', 'address_2', 'address_3', 'contact_person_name', 'contact_person_mobile', 'bin_no', 'loc_division_id', 'loc_district_id', 'loc_upazila_id', 'loc_post_office_id', 'created_at')->with(['LocDivision.LocDistricts', 'LocDistrict.LocUpazilas', 'LocDistrict.LocPostOffices', 'LocPostOffice'])->findOrFail($request->query('sold_to_party_id'));
              return response()->json(['soldToParty' => $soldToParty], 200);
        }

        $soldToParties = SoldToParty::select('id', 'acc_name', 'address', 'created_at')->withCount('shipToParties')->where('employee_id', $employee->id)->orderBy('acc_name', 'asc')->get();

        return response()->json(['soldToParties' => $soldToParties, 'divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice], 200);
    }

    public function existingVisit(Request $request){
       $employee = Employee::select('id', 'user_id', 'name', 'card_id', )->where('user_id', auth()->id())->first();
        if($request->query('sold_to_party_id')){
            
                $shipToParties = ShipToParty::select('id', 'customer_code', 'acc_name', 'address', 'created_at')->where('sold_to_party_id', $request->query('sold_to_party_id'))->whereHas('currentProcess', function($query){
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
        $postOffice = LocPostOffice::select('id', 'loc_division_id', 'loc_district_id', 'post_office')->orderBy('post_office', 'asc')->get();

        $visitPurposes = VisitPurpose::all();

         return response()->json(['divisions'=> $divisions, 'districts' => $districts, 'upazilas' => $upazilas, 'postOffice' => $postOffice, 'visitPurposes' => $visitPurposes], 200);
    }

    public function promotions(){
        $Promotions = Promotion::orderBy('start_from', 'asc')->get();

        return response()->json(['promotions' => $Promotions], 200);
    }

    public function promotionalItems(Request $request){
        $id = $request->query('id'); 
        $promotionalItems = PromotionItems::where('promotion_id', $id)->where('activeStatus', true)->get();
        return response()->json(['promotionalItems' => $promotionalItems], 200);
    }

    public function cmaVarification(){
        $soldToParties = SoldToParty::select('id', 'acc_name', 'address', 'created_at')->whereHas('currentProcess', function($query){
            $query->where('chk_to', 3); // SV check
        })->orderBy('created_at', 'asc')->get();
        $shipToParties = ShipToParty::select('id', 'sold_to_party_id', 'acc_name', 'address', 'created_at')->whereHas('currentProcess', function($query){
            $query->where('chk_to', 3); //SV check
        })->orderBy('created_at', 'asc')->get();

        $cmas = $soldToParties->merge($shipToParties)->sortBy('created_at')->values();

        return response()->json(['cmas' => $cmas], 200);


    }

    public function complaint(Request $request){
        $employee = Employee::select('id', 'user_id', 'name', 'card_id', )->where('user_id', auth()->id())->first();
        $complaintTypes = ComplaintType::select('id', 'name')->where('activeStatus', true)->orderBy('code', 'asc')->get();
        $soldToParties = SoldToParty::select('id', 'acc_name', 'customer_code', 'employee_id')->where('employee_id', $employee->id)->get();
        $otherVisitSites = OtherVisitSite::select('id', 'site_name', 'address', 'employee_id')->where('employee_id', $employee->id)->get();


        return response()->json(['soldToParties' => $soldToParties, 'complaintTypes' => $complaintTypes, 'otherVisitSites' => $otherVisitSites], 200);
    }

    public function storeComplaint(Request $request){
        return response($request->all());
        $msg = '';
        $status = '';
        $request->validate([
            'complaint_type' => "required",
            'complaint' => "required",
          
        ]);

        try{
            $complaint = new Complaint();
            $site_name = '';
            $site_address = '';
            $phone = '';
            if($request->has('sold_to_party_id')){
                $soldToParty = SoldToParty::select('id', 'acc_name', 'address')->findOrFail($request->sold_to_party_id);
                $site_name = $soldToParty->acc_name;
                $site_address = $soldToParty->address;
                $phone = $soldToParty->contact_person_mobile;
                
            }else{
                $otherVisitSite = OtherVisitSite::select('id', 'site_name', 'address')->findOrFail($request->other_visit_site_id);
                $site_name = $otherVisitSite->site_name;
                $site_address = $otherVisitSite->address;
                $phone = $otherVisitSite->phone;
            }
           
            $complaint->site_name = $site_name;
            $complaint->site_address = $site_address;
            $complaint->phone = $phone;
            $complaint->sold_to_party_id = $request->sold_to_party_id;
            $complaint->other_visit_site_id = $request->other_visit_site_id;
            $complaint->complaint_type_id = $request->complaint_type;
            $complaint->phone = $request->phone;
            $complaint->complaint_type = ComplaintType::find($request->complaint_type)->name;
            $complaint->complaint = $request->complaint;
            $complaint->employee_id = auth()->user()->employee->id;
            $complaint->lat = $request->lat;
            $complaint->long = $request->long;
            $complaint->created_by = auth()->user()->id;
            $complaint->hostname = gethostname();
            $complaint->date = Carbon::now()->toDateString();

             if ($request->hasFile('files')) {
                foreach ($request->file('files')  as $idx => $file) {
                    $fileName = $idx .'-'.$site_name . '-' . time() . '.' . $file->getClientOriginalExtension();
                    $image_url = $file->storeAs('complaints', $fileName, 'public');
                    $column = 'image_' . ($idx + 1); // image_1, image_2, image_3
                    $complaint->$column = $image_url;
                }
            }

            // ComplaintRaise Email Generates Here...

            $complaint->save();

            $msg = "Complaint submitted successfully";
            $status = "success";

             $activityLog = [
                'user' => auth()->id(),
                'action' => "complaint",
                'remarks' => "New complaint noted, customer name: " . $soldToParty->acc_name,
                'log_type' => 2,// General actions
                'lat' => $request->lat,
                'long' => $request->long,

            ];

            storeEmployeeActivityLog($activityLog);

        }catch(Exception $e){
            $msg = $e->getMessage();
            
        }

         return response()->json([
            'message' => $msg,
            'status' => $status
        ]);
    }
}
