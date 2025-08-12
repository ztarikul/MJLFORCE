<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use App\Models\EmployeeActivityLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReportController extends Controller
{
    //

    public function activityLog(Request $request){
        $employees = Employee::select('id', 'user_id', 'name', 'card_id', 'sap_code')->where('user_id', auth()->id())->first()->employeesOfSupervisor()->get();

         return response()->json(['employees' => $employees], 200);
    }

    public function getActivityLog(Request $request){
        $activityLogs = [];

        if($request->has('report_type')){
            
            if($request->report_type == 'own'){
                $activityLogs = EmployeeActivityLog::with('employee:id,name')->where('employee_id', Employee::where('user_id', auth()->id())->first()->id)
                    ->whereBetween('date', [$request->start_date, $request->end_date])
                    ->orderBy('created_at', 'asc')
                    ->get();
            } 
            if($request->report_type == 'all_emp') {
                $activityLogs = EmployeeActivityLog::with('employee:id,name')->whereIn('employee_id', Employee::where('user_id', auth()->id())->first()->employeesOfSupervisor()->pluck('id'))
                    ->whereBetween('date', [$request->start_date, $request->end_date])
                    ->orderBy('created_at', 'asc')
                    ->get();
            }
        }else{
            $activityLogs = EmployeeActivityLog::with('employee:id,name')->where('employee_id', $request->employee_id)
                ->whereBetween('date', [$request->start_date, $request->end_date])
                ->orderBy('created_at', 'asc')
                ->get();

        }

        $activityLogs = $activityLogs->map(function ($log) {
            return [
                'id'             => $log->id,
                'employee_id'    => $log->employee_id,
                'employee_name'  => $log->employee->name ?? null,
                'date'           => $log->date,
                'action'         => $log->action,
                'activeStatus'   => $log->activeStatus,
                'address'        => $log->address,
                'hostname'       => $log->hostname,
                'lat'            => $log->lat,
                'long'           => $log->long,
                'log_type'       => $log->log_type,
                'remarks'        => $log->remarks,
                'created_at'     => $log->created_at,
                'updated_at'     => $log->updated_at,
                'created_by'     => $log->created_by,
            ];
        })->toArray();

        return response()->json(['activityLogs' => $activityLogs], 200);
    }

     public function visitLog(Request $request){
        $employees = Employee::select('id', 'user_id', 'name', 'card_id', 'sap_code')->where('user_id', auth()->id())->first()->employeesOfSupervisor()->get();

         return response()->json(['employees' => $employees], 200);
    }

    public function getVisitLog(Request $request){
        $visitLogs = EmployeeActivityLog::where('employee_id', $request->employee_id)
            ->where('log_type', 2)
            ->whereBetween('date', [$request->start_date, $request->end_date])
            ->orderBy('created_at', 'asc')
            ->get();

        return response()->json(['visitLogs' => $visitLogs], 200);
    }


     /**
     * Get the guard to be used during authentication.
     *
     * @return \Illuminate\Contracts\Auth\Guard
     */


    public function guard(){
        return Auth::guard('api');
    }

}
