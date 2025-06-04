<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Web\CmaController;
use App\Http\Controllers\Web\EmployeeController;
use App\Http\Controllers\Web\LocationController;
use App\Http\Controllers\Web\MasterDataController;
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

    Route::group(['prefix' => 'employees', 'as' => 'employees.',], function () {
        Route::get('/', [EmployeeController::class, 'index'])->name('index');

    });

    Route::group(['prefix' => 'masterData', 'as' => 'masterData.',], function () {
        Route::get('/customer_group', [MasterDataController::class, 'customerGroupIndex'])->name('customerGroupIndex');
        Route::get('/business_team', [MasterDataController::class, 'businessTeamIndex'])->name('businessTeamIndex');
        Route::get('/regions', [MasterDataController::class, 'regionsIndex'])->name('regionsIndex');
        Route::get('/distribution_ches', [MasterDataController::class, 'distributionChannelIndex'])->name('distributionChannelIndex');
        Route::get('/territories', [MasterDataController::class, 'territoryIndex'])->name('territoryIndex');
        Route::get('/trade_categories', [MasterDataController::class, 'tradeCategoryIndex'])->name('tradeCategoryIndex');

    });

    Route::group(['prefix' => 'cma', 'as' => 'cma.',], function () {
        Route::get('/new_soldToParty', [CmaController::class, 'newSoldToPartyIndex'])->name('newSoldToPartyIndex');
        Route::get('/soldToParty_request_form/{id}', [CmaController::class, 'soldToPartyRequestForm'])->name('soldToPartyRequestForm');
        Route::post('/soldToPartyMisToSAP/{id}', [CmaController::class, 'soldToPartyMisToSAP'])->name('soldToPartyMisToSAP');

    });
});

require __DIR__.'/auth.php';
