<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AttendanceHistory;
use App\Models\Complaint;
use App\Models\Employee;
use App\Models\EmployeeActivityLog;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class ReportController extends Controller
{
    //

    public function activityLog(Request $request)
    {
        $employees = Employee::select('id', 'user_id', 'name', 'card_id', 'sap_code')->where('user_id', auth()->id())->first()->employeesOfSupervisor()->get();

        return response()->json(['employees' => $employees], 200);
    }

    public function getActivityLog(Request $request)
    {
        $activityLogs = [];
        if ($request->has('report_type')) {
            if ($request->report_type == 'own') {
                $activityLogs = EmployeeActivityLog::with('employee:id,name')->where('employee_id', Employee::where('user_id', auth()->id())->first()->id)
                    ->whereBetween('date', [$request->start_date, $request->end_date])
                    ->orderBy('created_at', 'asc')
                    ->get();
            }
            if ($request->report_type == 'all_emp') {
                $activityLogs = EmployeeActivityLog::with('employee:id,name')->whereIn('employee_id', Employee::where('user_id', auth()->id())->first()->employeesOfSupervisor()->pluck('id'))
                    ->whereBetween('date', [$request->start_date, $request->end_date])
                    ->orderBy('created_at', 'asc')
                    ->get();
            }
        } else {
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
        });

        $activityLogs = collect($activityLogs)->groupBy('employee_name')->collapse()->values()->toArray();

        return response()->json(['activityLogs' => $activityLogs], 200);
    }

    public function visitLog(Request $request)
    {
        $employees = Employee::select('id', 'user_id', 'name', 'card_id', 'sap_code')->where('user_id', auth()->id())->first()->employeesOfSupervisor()->get();

        return response()->json(['employees' => $employees], 200);
    }

    public function getVisitLog(Request $request)
    {

        $visitLogs = [];
        if ($request->has('report_type')) {
            if ($request->report_type == 'own') {
                $visitLogs = EmployeeActivityLog::with('employee:id,name')->where('employee_id', Employee::where('user_id', auth()->id())->first()->id)->where('log_type', 2)
                    ->whereBetween('date', [$request->start_date, $request->end_date])
                    ->orderBy('created_at', 'asc')
                    ->get();
            }
            if ($request->report_type == 'all_emp') {
                $visitLogs = EmployeeActivityLog::with('employee:id,name')->whereIn('employee_id', Employee::where('user_id', auth()->id())->first()->employeesOfSupervisor()->pluck('id'))
                    ->where('log_type', 2)
                    ->whereBetween('date', [$request->start_date, $request->end_date])
                    ->orderBy('created_at', 'desc') 
                    ->get();
                   
            }
        } else {
            $visitLogs = EmployeeActivityLog::with('employee:id,name')->where('employee_id', $request->employee_id)
                ->where('log_type', 2)
                ->whereBetween('date', [$request->start_date, $request->end_date])
                ->orderBy('created_at', 'asc')
                ->get();
        }

        $visitLogs = $visitLogs->map(function ($log) {
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
        });

        $visitLogs = collect($visitLogs)->groupBy('employee_name')->collapse()->values()->toArray();

        return response()->json(['visitLogs' => $visitLogs], 200);
    }


    public function complaintReport(Request $request)
    {
        $employees = Employee::select('id', 'user_id', 'name', 'card_id', 'sap_code')->where('user_id', auth()->id())->first()->employeesOfSupervisor()->get();

        return response()->json(['employees' => $employees], 200);
    }

    public function getComplaintReport(Request $request)
    {

        $complaints = [];
        if ($request->has('report_type')) {
            if ($request->report_type == 'own') {
                $complaints = Complaint::with('employee:id,name')->where('employee_id', Employee::where('user_id', auth()->id())->first()->id)
                    ->whereBetween('date', [$request->start_date, $request->end_date])
                    ->orderBy('date', 'asc')
                    ->get();
            }
            if ($request->report_type == 'all_emp') {
                $complaints = Complaint::with('employee:id,name')->whereIn('employee_id', Employee::where('user_id', auth()->id())->first()->employeesOfSupervisor()->pluck('id'))
                    ->whereBetween('date', [$request->start_date, $request->end_date])
                    ->orderBy('date', 'asc')
                    ->get();
            }
        } else {
            $complaints = Complaint::with('employee:id,name')->where('employee_id', $request->employee_id)
                ->whereBetween('date', [$request->start_date, $request->end_date])
                ->orderBy('date', 'asc')
                ->get();
        }

        $complaints = $complaints->map(function ($item) {
            return [
                'id'             => $item->id,
                'employee_id'    => $item->employee_id,
                'site_name'      => $item->site_name,
                'site_address'    => $item->site_address,
                'employee_name'  => $item->employee->name ?? null,
                'complaint_type'  => $item->complaint_type,
                'date'           => $item->date,
                'complaint'         => $item->complaint,
                'image_1'   => $item->image_1 ? asset('storage/' . $item->image_1) : null,
                'image_2'        => $item->image_2 ? asset('storage/' . $item->image_2) : null,
                'image_3'       => $item->image_3 ? asset('storage/' . $item->image_3) : null,
            ];
        })->toArray();

        return response()->json(['complaints' => $complaints], 200);
    }


    public function attendanceToHrm(Request $request)
    {
        $datetime = $request->query('datetime');

        $date = Carbon::parse($datetime)->toDateString();
        $time = Carbon::parse($datetime)->toTimeString();
        $attendance_histories = AttendanceHistory::where('date', $date)->where('time', '>', $time)->orderBy('time', 'asc')->get();
        return response()->json(['date' => $date, 'time' => $time, 'attendance_histories' => $attendance_histories], 200);
    }


    /**
     * Get the guard to be used during authentication.
     *
     * @return \Illuminate\Contracts\Auth\Guard
     */

    public function guard()
    {
        return Auth::guard('api');
    }
}
