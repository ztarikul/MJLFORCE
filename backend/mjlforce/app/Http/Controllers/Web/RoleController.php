<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleController extends Controller
{
    public function index()
    {
        //
        $roles = Role::orderBy('id', 'DESC')->get();
        $permissions = Permission::orderBy('id', 'DESC')->get();
        return view('roles.index', compact('roles', 'permissions'));
    }

      public function store(Request $request){
        dd($request->input('permission'));
        $role = Role::create([
            'name' => $request->name,
            'guard_name' => $request->guard_name
        ]);

        $role->syncPermissions($request->input('permission'));

        return response()->json([
            'status' => 'success',
            'message' => 'Role created successfully',
        ]);
    }

     public function userRolePermission_index(){
        $users = User::with('roles')->get();
        return view('roles.userRolePermission_index', compact('users'));
    }

  
}
