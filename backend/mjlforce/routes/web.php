<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Web\LocationController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Route::get('/', function () {
    // if(Auth::user()){
    //    return redirect()->route('dashboard');
    // }
    return view('auth.login');
});



Route::group(['middleware' => ['auth']], function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::group(['prefix' => 'locations', 'as' => 'locations.',], function () {
        Route::get('/', [LocationController::class, 'index'])->name('index');

    });
});

require __DIR__.'/auth.php';
