<?php

use GuzzleHttp\Client;



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

