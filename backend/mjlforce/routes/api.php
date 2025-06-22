<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\CmaController;
use App\Http\Controllers\Api\HomeController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');



    Route::post('/login', [AuthController::class,'login']);

    Route::middleware(['auth:api'])->group(function () {
        Route::post('/logout', [AuthController::class, 'logout']);
        Route::post('/refresh', [AuthController::class, 'refresh']);
        Route::post('/me', [AuthController::class, 'me']);
        Route::get('/welcome_dashboad', [HomeController::class, 'welcomeDashboard']);
        Route::get('/sidebar_user', [HomeController::class, 'sidebarUser']);
        Route::post('/startday_attendance', [HomeController::class, 'startdayAttendance']);
        Route::get('/attendance_history', [HomeController::class, 'attendanceHistory']);

        Route::get('/visit_new_s2p', [CmaController::class, 'visitNewSoldToPary']);
        Route::post('/store_s2p', [CmaController::class, 'storeSoldToParty']);
        Route::get('/leads', [HomeController::class, 'leads']);
        Route::get('/leads_process', [CmaController::class, 'leadsProcess']);
        Route::post('/updateLeadProcess/{id}', [CmaController::class, 'updateLeadProcess']);
        Route::get('/create_sh2p', [HomeController::class, 'create_sh2p']);
        Route::post('/store_sh2p', [CmaController::class, 'storeShipToParty']);
        Route::get('/existing_visit', [HomeController::class, 'existingVisit']);
        Route::post('/store_existing_visit', [CmaController::class, 'storeExistingVisit']);
        Route::get('/other_visit', [HomeController::class, 'otherVisit']);
        Route::post('/store_other_visit', [CmaController::class, 'storeOtherVisit']);
        Route::get('/promotions', [HomeController::class, 'promotions']);
        Route::get('/promotional_items', [HomeController::class, 'promotionalItems']);
        Route::get('/cma_varification', [HomeController::class, 'cmaVarification']);
        Route::get('/cma_varification_process', [CmaController::class, 'cmaVarificationProcess']);
        Route::post('/varification', [CmaController::class, 'varification']);
        Route::get('/sales_vs_target', [CmaController::class, 'salesVsTarget']);


    });




