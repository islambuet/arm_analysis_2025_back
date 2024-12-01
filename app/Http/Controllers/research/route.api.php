<?php

use App\Http\Controllers as Controllers;
use Illuminate\Support\Facades\Route;
$url='research/crop_sales_team';
$controllerClass= Controllers\research\CropSalesTeamController::class;
/** @noinspection DuplicatedCode */
Route::middleware('logged-user')->group(function()use ($url,$controllerClass){
    Route::match(['GET','POST'],$url.'/initialize', [$controllerClass, 'initialize']);
    Route::match(['GET','POST'],$url.'/get-items', [$controllerClass, 'getItems']);
    Route::match(['GET','POST'],$url.'/get-item/{itemId}', [$controllerClass, 'getItem']);
    Route::match(['GET','POST'],$url.'/get-item-by-croptype2_id-territory_id/{crop_type2_id}/{territory_id}', [$controllerClass, 'getItemByTerritoryIdCropType2Id']);
    Route::post($url.'/save-item', [$controllerClass, 'saveItem']);
});
$url='research/crop_business_team';
$controllerClass= Controllers\research\CropBusinessTeamController::class;
/** @noinspection DuplicatedCode */
Route::middleware('logged-user')->group(function()use ($url,$controllerClass){
    Route::match(['GET','POST'],$url.'/initialize', [$controllerClass, 'initialize']);
    Route::match(['GET','POST'],$url.'/get-items', [$controllerClass, 'getItems']);
    Route::match(['GET','POST'],$url.'/get-item/{itemId}', [$controllerClass, 'getItem']);
    Route::post($url.'/save-item', [$controllerClass, 'saveItem']);
});
