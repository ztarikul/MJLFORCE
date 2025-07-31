<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\BusinessTeam;
use App\Models\Designation;
use App\Models\Employee;
use App\Models\Territory;
use Illuminate\Container\Attributes\Auth;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    //

    public function index(){
        $employees = Employee::orderBy('name', 'asc')->get();
        $designations = Designation::orderBy('name', 'asc')->get();
        $businessTeams = BusinessTeam::orderBy('name', 'asc')->get();
        $territories = Territory::orderBy('name', 'asc')->get();
        return view('employees.index', compact('employees'));
    }

    public function create()
    {
        $employees = Employee::orderBy('name', 'asc')->get();
        $designations = Designation::orderBy('name', 'asc')->get();
        $businessTeams = BusinessTeam::orderBy('name', 'asc')->get();
        $territories = Territory::orderBy('name', 'asc')->get();
        return response()->json([
            'employees' => $employees,
            'designations' => $designations,
            'businessTeams' => $businessTeams,
            'territories' => $territories,
            'status' => 'success',
        ], 200);
    }

     public function store(Request $request){
        dd($request->all());
        $request->validate([
            'name' => 'required|unique:territories',
            'code' => 'nullable|unique:territories',
            'sap_code' => 'nullable|unique:territories'
        ]);

        $employee = new Employee();
        $employee->name = $request->name;
        $employee->region_id = $request->region_id;
        $employee->code = $request->code;
        $employee->sap_code = $request->sap_code;
        $employee->description = $request->description;
        $employee->created_by = auth()->user()->id;
        $employee->hostname = request()->ip();
        $employee->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Employee created successfully.',
            'redirect_url' => route('employees.index')
            
        ]);
    }

    
}
