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
        // dd($request->all());
        $request->validate([
            'name' => 'required|unique:territories',
            'code' => 'nullable|unique:territories',
            'sap_code' => 'nullable|unique:territories'
        ]);

        $employee = new Employee();
        $employee->name = $request->name;
        $employee->card_id = $request->card_id;
        $employee->emp_code = $request->emp_code;
        $employee->sap_code = $request->sap_code;
        $employee->gender = $request->gender;
        $employee->mobile = $request->mobile;
        $employee->email = $request->email;
        $employee->address = $request->address;
        $employee->doj = $request->doj;
        $employee->nkn_code = $request->nkn_code;
        $employee->designation_id = $request->designation_id;
        $employee->business_team_id = $request->business_team_id;
        $employee->territory_id = $request->territory_id;
        $employee->supervisor_id = $request->supervisor_id;
        $employee->created_by = auth()->user()->id;
        $employee->hostname = request()->ip();
        $employee->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Employee created successfully.',
            'redirect_url' => route('employees.index')
            
        ]);
    }

    public function edit($id){
        $employee = Employee::with('designation:id,name', 'businessTeam:id,name', 'territory:id,name', 'supervisorOfEmployee:id,name')->find($id);
        $supervisors = Employee::orderBy('name', 'asc')->get();
        $designations = Designation::orderBy('name', 'asc')->get();
        $businessTeams = BusinessTeam::orderBy('name', 'asc')->get();
        $territories = Territory::orderBy('name', 'asc')->get();

        return response()->json([
            'employee' => $employee,
            'designations' => $designations,
            'businessTeams' => $businessTeams,
            'territories' => $territories,
            'supervisors' => $supervisors,
            'status' => 'success',
        ], 200);
    }

    
}
