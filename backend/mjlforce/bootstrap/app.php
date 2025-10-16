<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Http\Middleware\HandleCors;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        // $middleware->append(\App\Http\Middleware\CorsMiddleware::class);
        $middleware->appendToGroup('api', \Illuminate\Http\Middleware\HandleCors::class);
        // $middleware->prepend(HandleCors::class);
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })
    ->withSchedule(function (Illuminate\Console\Scheduling\Schedule $schedule) {
        $schedule->command('salesTargetSync')->dailyAt('01:00:00');
    })
    
    ->create();
