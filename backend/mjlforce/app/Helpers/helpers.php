<?php

use GuzzleHttp\Client;
use Exception;


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

