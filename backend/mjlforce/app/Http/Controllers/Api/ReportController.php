<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use App\Models\EmployeeActivityLog;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    //

    public function activityLog(Request $request){
        $employees = Employee::select('id', 'user_id', 'name', 'card_id', 'sap_code')->where('user_id', auth()->id())->first()->employeesOfSupervisor()->get();

         return response()->json(['employees' => $employees], 200);
    }

    public function getActivityLog(Request $request){
        $activityLogs = EmployeeActivityLog::where('employee_id', $request->employee_id)
            ->whereBetween('date', [$request->start_date, $request->end_date])
            ->orderBy('created_at', 'desc')
            ->get();

        return response()->json(['activityLogs' => $activityLogs], 200);
    }
}
