<?php

return [
    'paths' => ['api/*'], // JWT API endpoints

    'allowed_methods' => ['*'], // GET, POST, PUT, DELETE, etc.

    'allowed_origins' => ['*'], // React front-end

    'allowed_origins_patterns' => [],

    'allowed_headers' => ['*'], // Allow Authorization header for JWT

    'exposed_headers' => ['Authorization'], // Optional: expose Authorization header

    'max_age' => 0,

    'supports_credentials' => false, // JWT doesn’t need cookies
];
