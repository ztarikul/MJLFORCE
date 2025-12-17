<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\BusinessTeam;
use App\Models\Complaint;
use App\Models\Employee;
use App\Models\EmployeeActivityLog;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    //

    public function fileDownload(Request $request)
    {

        $file = asset("storage/" . $request->filePath);
        return response($file);
    }

    public function complaint_index()
    {
        $complaints = Complaint::orderBy('date', 'desc')->get();
        $complaints = $complaints->map(function ($item) {
            return [
                'id'             => $item->id,
                'employee_id'    => $item->employee_id,
                'site_name'      => $item->site_name,
                'site_address'    => $item->site_address,
                'employee_name'  => $item->employee->name ?? null,
                'complaint_type'  => $item->complaintType->name,
                'date'           => $item->date,
                'complaint'         => $item->complaint,
                'image_1'   => $item->image_1 ? asset('storage/' . $item->image_1) : '',
                'image_2'        => $item->image_2 ? asset('storage/' . $item->image_2) : '',
                'image_3'       => $item->image_3 ? asset('storage/' . $item->image_3) : '',
            ];
        })->toArray();
        return view('reports.complaint.index', compact('complaints'));
    }

    public function visits_index(Request $request)
    {
        if ($request->ajax()) {
            $employees = [];
            if ($request->has('business_team_id') && !empty($request->business_team_id)) {
                $employees = Employee::select('id', 'name')->where('business_team_id', $request->business_team_id)->orderBy('name', 'asc')->get();
            } else {
                $employees = Employee::select('id', 'name')->orderBy('name', 'asc')->get();
            }
            $business_teams = BusinessTeam::select('id', 'name')->orderBy('name', 'asc')->get();

            return response()->json(['employees' => $employees, 'business_teams' => $business_teams], 200);
        }
        return view('reports.visits.index');
    }

    public function visits_log(Request $request)
    {
        $logs = [];
        $report_type = $request->report_type == "visit" ? 2 : null;
        $employeeActivityLogs = EmployeeActivityLog::query()->whereBetween('date', [$request->start_date, $request->end_date])->orderBy('created_at', 'asc');
        if ($report_type) {
            $employeeActivityLogs->where('log_type', $report_type);
        }
        if ($request->employee_id) {
            // $business_teams = BusinessTeam::find($request->business_team_id);
            $logs = $employeeActivityLogs->with('employee:id,name')->where('employee_id', $request->employee_id)
                ->get();
        } else if ($request->business_team_id) {
            $business_teams = BusinessTeam::find($request->business_team_id);
            $employees = Employee::where('business_team_id', $business_teams->id)->pluck('id');
            $logs = $employeeActivityLogs->with('employee:id,name')->whereIn('employee_id', $employees)->get();
        } else {
            $logs = $employeeActivityLogs->with('employee:id,name')->get();
        }

        $logs = $logs->map(function ($log) {
            return [
                'id'             => $log->id,
                'employee_id'    => $log->employee_id,
                'employee_name'  => $log->employee->name ?? null,
                'date'           => $log->created_at->toDateTimeString(),
                'action'         => $log->action,
                'remarks'        => $log->remarks,
                'log_type'      => $log->log_type,
                'lat'            => $log->lat,
                'long'           => $log->long,
                'address'       => $log->address,
                'hostname'      => $log->hostname,
                'created_at'    => $log->created_at->toDateTimeString(),

            ];
        });

        $logs = collect($logs)->groupBy('employee_name')->collapse()->values()->toArray();
        return response()->json(['logs' => $logs], 200);
    }
}
