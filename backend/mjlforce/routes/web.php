<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Web\CmaController;
use App\Http\Controllers\Web\EmployeeController;
use App\Http\Controllers\Web\LocationController;
use App\Http\Controllers\Web\MasterDataController;
use App\Http\Controllers\Web\RoleController;
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
        Route::get('/sold_to_parties', [MasterDataController::class, 'soldToParties'])->name('soldToParties');

    });

    Route::group(['prefix' => 'cma', 'as' => 'cma.',], function () {
        Route::get('/new_soldToParty', [CmaController::class, 'newSoldToPartyIndex'])->name('newSoldToPartyIndex');
        Route::get('/soldToParty_request_form/{id}', [CmaController::class, 'soldToPartyRequestForm'])->name('soldToPartyRequestForm');
        Route::post('/soldToPartyMisToSAP/{id}', [CmaController::class, 'soldToPartyMisToSAP'])->name('soldToPartyMisToSAP');
        Route::get('/new_shipToParty', [CmaController::class, 'newShipToPartyIndex'])->name('newShipToPartyIndex');
        Route::get('/shipToParty_request_form/{id}', [CmaController::class, 'shipToPartyRequestForm'])->name('shipToPartyRequestForm');
        Route::post('/shipToPartyMisToSAP/{id}', [CmaController::class, 'shipToPartyMisToSAP'])->name('shipToPartyMisToSAP');

    });

     Route::group(['prefix' => 'roles', 'as' => 'roles.',], function () {
        Route::get('/', [RoleController::class, 'index'])->name('index');
        // Route::get('/create', [RoleController::class, 'create'])->name('create');
        // Route::post('/store', [RoleController::class, 'store'])->name('store');
        // Route::get('/show/{id}', [RoleController::class, 'show'])->name('show');
        // Route::get('/edit/{id}', [RoleController::class, 'edit'])->name('edit');
        // Route::post('/update/{id}', [RoleController::class, 'update'])->name('update');
        // Route::get('/destroy/{id}', [RoleController::class, 'destroy'])->name('destroy');

        // Route::get('permissions/', [RoleController::class, 'permission_index'])->name('permission_index');
        // Route::post('permissions_store/', [RoleController::class, 'permissions_store'])->name('permissions_store');
        // Route::get('permissions_edit/{id}', [RoleController::class, 'permissions_edit'])->name('permissions_edit');
        // Route::post('permissions_update/{id}', [RoleController::class, 'permissions_update'])->name('permissions_update');
        // Route::get('permissions_destroy/{id}', [RoleController::class, 'permissions_destroy'])->name('permissions_destroy');

        Route::get('userRolePermission/', [RoleController::class, 'userRolePermission_index'])->name('userRolePermission_index');
        // Route::get('userRolePermission_edit/{userId}', [RoleController::class, 'userRolePermission_edit'])->name('userRolePermission_edit');
        // Route::post('userRolePermission_update/{userId}', [RoleController::class, 'userRolePermission_update'])->name('userRolePermission_update');
    });
});

require __DIR__.'/auth.php';
