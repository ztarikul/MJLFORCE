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
        $permissions = Permission::orderBy('name', 'asc')->get();
        return view('roles.index', compact('roles', 'permissions'));
    }

    public function store(Request $request){
        dd($request);
        $role = Role::create([
            'name' => $request->name,
            'guard_name' => $request->guard_name
        ]);

        $role->syncPermissions($request->input('permission'));

        return response()->json([
            'status' => 'success',
            'message' => 'Role created successfully',
            'redirect_url' => route('roles.index')
        ]);
    }

    public function edit($id){
        $role = Role::find($id);
        $permissions = Permission::orderBy('name', 'asc')->get();
        $rolePermissions = $role->permissions->pluck('name')->toArray();
        return response()->json([
            'status' => 'success',
            'role' => $role,
            'permissions' => $permissions,
            'rolePermissions' => $rolePermissions
        ]);

    }

    public function update(Request $request, $id){
        // dd($request->input('permission'));
        $role = Role::find($id);
        $role->name = $request->name;
        $role->guard_name = $request->guard_name;
        $role->save();

        // if($request->has('permission')){

        // }
        $role->syncPermissions($request->input('permission'));

        return response()->json([
            'status' => 'success',
            'message' => 'Role updated successfully',
            'redirect_url' => route('roles.index')
        ]);
    }

    public function delete($id){
        $role = Role::find($id)->delete();
        return response()->json([
            'status' => 'success',
            'message' => 'Role deleted successfully',
            'redirect_url' => route('roles.index')
        ]);
    }

     public function userRolePermission_index(){
        $users = User::with('roles')->get();
        return view('roles.userRolePermission_index', compact('users'));
    }

  
}
