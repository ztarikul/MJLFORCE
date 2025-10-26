<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthController extends Controller
{
    //
    // public function __construct()
    // {
    //     $this->middleware('auth:api', ['except' => ['login']]);
    // }

    /**
     * Get a JWT token via given credentials.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        // return response()->json($request);

        $request->validate([
            'username' => 'required',
            'password' => 'required'
        ]);

        $credentials = $request->only('username', 'password');

        if (!$token = JWTAuth::attempt($credentials)) {
            return response()->json(['error' => 'Wrong Credentials'], 401);
        }

        
        $activityLog = [
            'user' => auth()->id(),
            'action' => "Login",
            'remarks' => "App login",
            'log_type' => 1,//authenticate
            'lat' => $request->lat,
            'long' => $request->long,

        ];
        
        storeEmployeeActivityLog($activityLog);

        return $this->respondWithToken($token);
    }

    /**
     * Get the authenticated User
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        $user = auth()->user();
        $employee = Employee::with(['designation:id,name',  'businessTeam:id,name', 'region:id,name', 'territory:id,name', 'supervisorOfEmployee:id,name'])->where('user_id', $user->id)->first();

        return response()->json([
            'user' => $user,
            'employee' => $employee,
        ]);
        
    }

    /**
     * Log the user out (Invalidate the token)
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        $this->guard()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken($this->guard()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => 60 * 60 * 60,
            'user' => auth()->user(),
            'user_roles' => auth()->user()->getRoleNames(),
            'user_permissions' => auth()->user()->getAllPermissions()->pluck('name'),
            'is_supervisor' => auth()->user()->employee ? (auth()->user()->employee->employeesOfSupervisor->count() > 0 ? true : false) : false,
           
        ]);
    }

    public function passwordChange(Request $request)
    {
        // return response()->json($request->all());
        $request->validate([
            'old_password' => 'required',
            'password' => 'required|confirmed|min:6',
        ]);

        $user = auth('api')->user();

        if (!Hash::check($request->old_password, $user->password)) {
            return response()->json(['error' => 'Old password is incorrect'], 422);
        }

        $user->password = Hash::make($request->password);
        $user->save();

        return response()->json(['message' => 'Password changed successfully']);
    }

   

    public function checkIn(Request $request){
        //  return response()->json($request->all());
        $lat = $request->lat;
        $long = $request->long;

        if($lat == null || $long == null){
            return response()->json(['msg' => "Location is not found, Turn on your location and try again"], 422);
        }

        $locationResponse = getReverseGeoLocation($lat, $long);
        if(isset($locationResponse->original) && $locationResponse->original['error']){
             return response()->json(['msg' => $locationResponse->original['status'] . "api error"], 422);
        }else{
            
            $activityLog = [
                'user' => auth()->id(),
                'action' => "checked-in",
                'remarks' => "Checked-in "  . Carbon::now()->toDateTimeString(),
                'address' => $locationResponse['display_name'],
                'log_type' => 2,// General actions
                'lat' => $request->lat,
                'long' => $request->long,

            ];
        }
        storeEmployeeActivityLog($activityLog);


    }

     /**
     * Get the guard to be used during authentication.
     *
     * @return \Illuminate\Contracts\Auth\Guard
     */

    public function guard(){
        return Auth::guard('api');
    }
}
