<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;

class RoleController extends Controller
{
    public function index()
    {
        //
        $roles = Role::orderBy('id', 'DESC')->get();
        return view('roles.index', compact('roles'));
    }

     public function userRolePermission_index(){
        $users = User::with('roles')->get();
        return view('roles.userRolePermission_index', compact('users'));
    }
}
