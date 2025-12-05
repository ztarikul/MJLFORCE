<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{
    //

    public function index(){
        $users = User::orderBy('username', 'asc')->get();
        $employees = Employee::whereNull('user_id')->orderBy('name', 'asc')->get();
        $roles = Role::orderBy('name', 'asc')->get();
        return view('users.index', compact('users', 'employees', 'roles'));
    }

    public function store(Request $request){
        $request->validate([
            'username' => 'required|unique:users,username',
            'email' => 'required|email|unique:users,email',
            'employee_id' => 'required',
            'password' => 'required|min:6|confirmed',
            'role_id' => 'required',
        ]);

        $user = User::create([
            'username' => $request->username,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        $employee = Employee::find($request->employee_id);
        $employee->user_id = $user->id;
        $employee->update();

        $role = Role::find($request->role_id);
        $user->assignRole(Role::findByName($role->name, $role->guard_name));

        return response()->json([
            'status' => 'success',
            'message' => 'User created successfully.',
            'redirect_url' => route('users.index'),
            // 'user' => $user,
        ]);
    }

    public function edit($id){
        return response()->json(['status' => "success"]);
        
    }

}
