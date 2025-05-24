<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Route::get('/', function () {
    // if(Auth::user()){
    //    return redirect()->route('dashboard');
    // }
    return view('auth.login');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth:web', 'verified'])->name('dashboard');



require __DIR__.'/auth.php';
