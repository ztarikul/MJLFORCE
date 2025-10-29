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

    public function userRolePermission_edit($userId){
        $user = User::find($userId);
        $roles = Role::orderBy('name', 'asc')->get();
        $permissions = Permission::orderBy('name', 'asc')->get();
        $userRoles = $user->roles->pluck('name')->all();
        $userPermissionsViaRoles = $user->getPermissionsViaRoles()->pluck('name')->all();
        $userDirectPermissions = $user->getDirectPermissions()->pluck('name')->all();

        return response()->json([
            'status' => 'success',
            'user' => $user,
            'roles' => $roles,
            'permissions' => $permissions,
            'userRoles' => $userRoles,
            'userPermissionsViaRoles' => $userPermissionsViaRoles,
            'userDirectPermissions' => $userDirectPermissions
        ]);
    }

    public function userRolePermission_update(Request $request, $userId){

      
        $permissions = $request->input('permission');
        $roles = $request->input('role');
        $user = User::find($userId);

        if($request->has('permission')){
            $getPermissions = Permission::whereIn('name', $permissions)->get();
            if($getPermissions->isNotEmpty()){
                $guard = $getPermissions->first()->guard_name;
                $user->guard_name = $guard;
                $user->syncPermissions($getPermissions);
            }
            
        }else{
            $getRoles = Role::whereIn('name', $roles)->get();
            if($getRoles->isNotEmpty()){
                $guard = $getRoles->first()->guard_name;
                $user->guard_name = $guard;
                $user->syncPermissions([]);
                $user->syncRoles($roles);
            }
            
        }

        return response()->json([
            'status' => 'success',
            'message' => 'User roles and permissions updated successfully',
            'redirect_url' => route('roles.userRolePermission_index')
        ]);
    }

    public function permissions_index(){
        $permissions = Permission::orderBy('name', 'asc')->get();
        return view('roles.permission_index', compact('permissions'));
    }

    
    public function permissions_store(Request $request){
        $request->validate([
            'name' => 'required|unique:permissions',
            'guard_name' => 'required'
        ],
        [
            'name.required' => "Permission name is required",
            'name.unique' => "Name is already taken!",
            'guard_name' => "Guard is required"
        ]);

        $permission = new Permission();
        $permission->name = $request->name;
        $permission->guard_name = $request->guard_name;
        $permission->save();

        return response()->json(['status' => 'success', 'msg' => "Permission is created successfully", 'redirect_url' => route('roles.permissions_index')]);
    }

    public function permissions_edit($id){
        $permission = Permission::find($id);
        return response()->json(['status' => 'success', 'permission' => $permission]);
    }

    public function permissions_update(Request $request, $id){

        $request->validate([
            'name' => 'required|unique:permissions,name,' . $id,
            'guard_name' => 'required'
        ],
        [
            'name.required' => "Permission name is required",
            'name.unique' => "Name is already taken!",
            'guard_name' => "Guard is required"
        ]);

        $permission = Permission::find($id);
        $permission->name = $request->name;
        $permission->guard_name = $request->guard_name;
        $permission->update();

        return response()->json(['status' => 'success', 'msg' => "Permission has been updated", 'redirect_url' => route('roles.permissions_index')]);
    }

    
    public function permissions_destroy($id)
    {
        //
        $permission = Permission::find($id)->delete();
        return response()->json(['status' => 'success', 'msg' => "Permission has been deleted", 'redirect_url' => route('roles.permissions_index')]);
    }

  
}
