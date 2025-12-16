<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Web\CmaController;
use App\Http\Controllers\Web\EmployeeController;
use App\Http\Controllers\Web\LocationController;
use App\Http\Controllers\Web\MasterDataController;
use App\Http\Controllers\Web\PromotionController;
use App\Http\Controllers\Web\ReportController;
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
        Route::get('/create', [EmployeeController::class, 'create'])->name('create');
        Route::post('/store', [EmployeeController::class, 'store'])->name('store');
        Route::get('/edit/{id}', [EmployeeController::class, 'edit'])->name('edit');
        Route::post('/update/{id}', [EmployeeController::class, 'update'])->name('update');
        Route::get('/delete/{id}', [EmployeeController::class, 'delete'])->name('delete');
    });

    Route::group(['prefix' => 'masterData', 'as' => 'masterData.',], function () {
        Route::get('/customer_group', [MasterDataController::class, 'customerGroupIndex'])->name('customerGroupIndex');
        Route::post('/customerGroup_store', [MasterDataController::class, 'customerGroup_store'])->name('customerGroup_store');
        Route::get('/customerGroup_edit/{id}', [MasterDataController::class, 'customerGroup_edit'])->name('customerGroup_edit');
        Route::post('/customerGroup_update/{id}', [MasterDataController::class, 'customerGroup_update'])->name('customerGroup_update');
        Route::get('/customerGroup_delete/{id}', [MasterDataController::class, 'customerGroup_delete'])->name('customerGroup_delete');
        Route::get('/business_team', [MasterDataController::class, 'businessTeamIndex'])->name('businessTeamIndex');
        Route::post('/business_team_store', [MasterDataController::class, 'business_team_store'])->name('business_team_store');
        Route::get('/business_team_edit/{id}', [MasterDataController::class, 'business_team_edit'])->name('business_team_edit');
        Route::post('/business_team_update/{id}', [MasterDataController::class, 'business_team_update'])->name('business_team_update');
        Route::get('/business_team_delete/{id}', [MasterDataController::class, 'business_team_delete'])->name('business_team_delete');

        Route::get('/regions', [MasterDataController::class, 'regionsIndex'])->name('regionsIndex');
        Route::post('/regions_store', [MasterDataController::class, 'regions_store'])->name('regions_store');
        Route::get('/regions_edit/{id}', [MasterDataController::class, 'regions_edit'])->name('regions_edit');
        Route::post('/regions_update/{id}', [MasterDataController::class, 'regions_update'])->name('regions_update');
        Route::get('/regions_delete/{id}', [MasterDataController::class, 'regions_delete'])->name('regions_delete');

        Route::get('/distribution_ches', [MasterDataController::class, 'distributionChannelIndex'])->name('distributionChannelIndex');
        Route::post('/distribution_ches_store', [MasterDataController::class, 'distribution_ches_store'])->name('distribution_ches_store');
        Route::get('/distribution_ches_edit/{id}', [MasterDataController::class, 'distribution_ches_edit'])->name('distribution_ches_edit');
        Route::post('/distribution_ches_update/{id}', [MasterDataController::class, 'distribution_ches_update'])->name('distribution_ches_update');
        Route::get('/distribution_ches_delete/{id}', [MasterDataController::class, 'distribution_ches_delete'])->name('distribution_ches_delete');

        Route::get('/territories', [MasterDataController::class, 'territoryIndex'])->name('territoryIndex');
        Route::post('/territories_store', [MasterDataController::class, 'territories_store'])->name('territories_store');
        Route::get('/territories_edit/{id}', [MasterDataController::class, 'territories_edit'])->name('territories_edit');
        Route::post('/territories_update/{id}', [MasterDataController::class, 'territories_update'])->name('territories_update');
        Route::get('/territories_delete/{id}', [MasterDataController::class, 'territories_delete'])->name('territories_delete');



        Route::get('/trade_categories', [MasterDataController::class, 'tradeCategoryIndex'])->name('tradeCategoryIndex');
        Route::get('/sold_to_parties', [MasterDataController::class, 'soldToParties'])->name('soldToParties');
        Route::post('/sold_to_party_sync/{id}', [MasterDataController::class, 'soldToPartySync'])->name('soldToPartySync');
        Route::get('/details_sold_to_parties/{id}', [MasterDataController::class, 'detailsSoldToParties'])->name('detailsSoldToParties');
        Route::get('/shipToParties', [MasterDataController::class, 'shipToParties'])->name('shipToParties');
        Route::get('/details_ship_to_parties/{id}', [MasterDataController::class, 'detailsShipToParties'])->name('detailsShipToParties');
        Route::get('/sales_areas', [MasterDataController::class, 'salesAreaIndex'])->name('salesAreaIndex');
    });

    Route::group(['prefix' => 'cma', 'as' => 'cma.',], function () {
        Route::get('/new_soldToParty', [CmaController::class, 'newSoldToPartyIndex'])->name('newSoldToPartyIndex');
        Route::get('/soldToParty_request_form/{id}', [CmaController::class, 'soldToPartyRequestForm'])->name('soldToPartyRequestForm');
        Route::post('/soldToPartyMisToSAP/{id}', [CmaController::class, 'soldToPartyMisToSAP'])->name('soldToPartyMisToSAP');
        Route::get('/new_shipToParty', [CmaController::class, 'newShipToPartyIndex'])->name('newShipToPartyIndex');
        Route::get('/shipToParty_request_form/{id}', [CmaController::class, 'shipToPartyRequestForm'])->name('shipToPartyRequestForm');
        Route::post('/shipToPartyMisToSAP/{id}', [CmaController::class, 'shipToPartyMisToSAP'])->name('shipToPartyMisToSAP');
    });

    Route::group(['prefix' => 'offer_and_discount', 'as' => 'offer_and_discount.',], function () {
        Route::get('/promotions', [PromotionController::class, 'promotions_index'])->name('promotions');
        Route::get('/create_promotion', [PromotionController::class, 'create_promotion'])->name('createPromotion');
        Route::post('/store_promotion', [PromotionController::class, 'store_promotion'])->name('storePromotion');
        Route::get('/edit_promotion/{id}', [PromotionController::class, 'edit_promotion'])->name('editPromotion');
        Route::post('/update_promotion/{id}', [PromotionController::class, 'update_promotion'])->name('updatePromotion');
        Route::get('/delete_promotion/{id}', [PromotionController::class, 'delete_promotion'])->name('deletePromotion');
        Route::get('/promotional_items/{id}', [PromotionController::class, 'promotional_items'])->name('promotionalItems');
        Route::get('/create_promotional_items/{promotion_id}', [PromotionController::class, 'create_promotional_items'])->name('createPromotionalItems');
        Route::post('/store_promotional_items', [PromotionController::class, 'store_promotional_items'])->name('storePromotionalItems');
        Route::get('/delete_promotional_items/{id}', [PromotionController::class, 'delete_promotional_items'])->name('deletePromotionalItems');
    });

    Route::group(['prefix' => 'roles', 'as' => 'roles.',], function () {
        Route::get('/', [RoleController::class, 'index'])->name('index');
        Route::get('/create', [RoleController::class, 'create'])->name('create');
        Route::post('/store', [RoleController::class, 'store'])->name('store');
        Route::get('/show/{id}', [RoleController::class, 'show'])->name('show');
        Route::get('/edit/{id}', [RoleController::class, 'edit'])->name('edit');
        Route::post('/update/{id}', [RoleController::class, 'update'])->name('update');
        Route::get('/delete/{id}', [RoleController::class, 'delete'])->name('delete');

        Route::get('permissions/', [RoleController::class, 'permissions_index'])->name('permissions_index');
        Route::post('permissions_store/', [RoleController::class, 'permissions_store'])->name('permissions_store');
        Route::get('permissions_edit/{id}', [RoleController::class, 'permissions_edit'])->name('permissions_edit');
        Route::post('permissions_update/{id}', [RoleController::class, 'permissions_update'])->name('permissions_update');
        Route::get('permissions_destroy/{id}', [RoleController::class, 'permissions_destroy'])->name('permissions_destroy');

        Route::get('userRolePermission/', [RoleController::class, 'userRolePermission_index'])->name('userRolePermission_index');
        Route::get('userRolePermission_edit/{userId}', [RoleController::class, 'userRolePermission_edit'])->name('userRolePermission_edit');
        Route::post('userRolePermission_update/{userId}', [RoleController::class, 'userRolePermission_update'])->name('userRolePermission_update');
    });


    Route::group(['prefix' => 'users', 'as' => 'users.',], function () {
        Route::get('/', [UserController::class, 'index'])->name('index');
        Route::get('/create', [UserController::class, 'create'])->name('create');
        Route::post('/store', [UserController::class, 'store'])->name('store');
        Route::get('/show/{id}', [UserController::class, 'show'])->name('show');
        Route::get('/edit/{id}', [UserController::class, 'edit'])->name('edit');
        Route::post('/update/{id}', [UserController::class, 'update'])->name('update');
        Route::get('/delete/{id}', [UserController::class, 'delete'])->name('delete');
    });
    Route::group(['prefix' => 'reports', 'as' => 'reports.',], function () {
        Route::get('/fileDownload', [ReportController::class, 'fileDownload'])->name('fileDownload');
        Route::get('/complaint_index', [ReportController::class, 'complaint_index'])->name('complaintIndex');
        Route::get('/visits_index', [ReportController::class, 'visits_index'])->name('visitsIndex');
        Route::post('/visits_log', [ReportController::class, 'visits_log'])->name('visitsLog');
    });
});

require __DIR__ . '/auth.php';
