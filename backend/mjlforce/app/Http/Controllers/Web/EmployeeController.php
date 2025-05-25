<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    //

    public function index(){
        $employees = Employee::orderBy('name', 'asc')->get();
        return view('employees.index', compact('employees'));
    }
}
