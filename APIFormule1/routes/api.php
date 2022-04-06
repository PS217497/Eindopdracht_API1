<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ConstructorController;
use App\Http\Controllers\DriverController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();f
});
Route::apiResource('constructors', ConstructorController::class)->parameters(['constructors' => 'constructor']);
Route::apiResource('drivers', DriverController::class)->parameters(['drivers' => 'driver']);

Route::get('constructors/{id}/drivers', [DriverController::class, 'indexFunctie']);
Route::delete('constructors/{id}/drivers', [DriverController::class, 'destroyFunctie']);
