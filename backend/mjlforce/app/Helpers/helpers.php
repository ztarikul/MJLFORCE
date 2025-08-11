<?php

use App\Models\Employee;
use App\Models\EmployeeActivityLog;
use GuzzleHttp\Client;
use Carbon\Carbon;



if (! function_exists('getReverseGeoLocation')) {
    function getReverseGeoLocation($lat, $long)
    {
        try{
            $apiKey = "pk.c0650c565137fc14c7357d022f922689";
            $apiUrl = "http://us1.locationiq.com/v1/reverse?key={$apiKey}&lat={$lat}&lon={$long}&format=json";
            $client = new Client();
            $response = $client->post($apiUrl, []);
            $locationResponse = json_decode($response->getBody(), true);
            return $locationResponse;

        }catch(Exception $e){
            return response()->json([
                'error' => true,
                'status' => 500,
                'message' => $e->getMessage()
            ], 500);
        }
        
        
    }
}

function splitByLastCharBeforeLimit($string, $limit, $char) {
    if (strlen($string) <= $limit) {
        return [$string, ''];
    }

    // Get the substring up to the limit
    $snippet = substr($string, 0, $limit);

    // Find the position of the last comma
    $lastCommaPos = strrpos($snippet, $char);

    if ($lastCommaPos === false) {
        // No comma found, just split at the limit
        return [substr($string, 0, $limit), substr($string, $limit)];
    }

    // Split at the last comma
    $firstPart = substr($string, 0, $lastCommaPos);
    $secondPart = ltrim(substr($string, $lastCommaPos + 1)); // trim leading space
    return [$firstPart, $secondPart];
}


if (!function_exists('storeEmployeeActivityLog')) {
    function storeEmployeeActivityLog(array $data){

        $log = EmployeeActivityLog::create([
            'employee_id' => Employee::select('id', 'user_id', 'sap_code', )->where('user_id', $data['user'])->first()->id,
            'date' => Carbon::now()->toDateString(),
            'action' => $data['action'],
            'remarks' => $data['remarks'],
            'log_type' => $data['log_type'],
            'address' => $data['address'] ?? null,
            'lat' => $data['lat'],
            'long' => $data['long'],
            'created_by' => auth()->user()->id,
            'hostname' => gethostname(),
        ]);
    }
}

