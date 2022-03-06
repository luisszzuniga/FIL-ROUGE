<?php

use Inertia\Inertia;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\AdminMiddleware;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\PhotoController;
use App\Http\Controllers\PlateController;
use App\Http\Controllers\LoyaltyController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\LocationController;
use App\Http\Controllers\PlateSizeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->name('dashboard');


//FRONT
Route::get('/', [FrontController::class, 'index'])->name('index');

// ADMIN
Route::prefix('/admin')->middleware(AdminMiddleware::class)->group(function () {
    Route::get('/', [AdminController::class, 'index'])->name('admin.index');

    //PLATE SIZES
    Route::post('/add-plate-size', [PlateSizeController::class, 'store'])->name('admin.plate-size.add');
    Route::put('/update-plate-size/{id}', [PlateSizeController::class, 'update'])->name('admin.plate-size.update');
    Route::delete('/delete-plate-size/{id}', [PlateSizeController::class, 'destroy'])->name('admin.plate-size.delete');

    //PLATES
    Route::post('/add-plate', [PlateController::class, 'store'])->name('admin.plate.add');
    Route::put('/update-plate/{id}', [PlateController::class, 'update'])->name('admin.plate.update');
    Route::delete('/delete-plate/{id}', [PlateController::class, 'destroy'])->name('admin.plate.destroy');

    // CATEGORIES
    Route::post('/add-category', [CategoryController::class, 'store'])->name('admin.category.add');
    Route::put('/update-category/{id}', [CategoryController::class, 'update'])->name('admin.category.update');
    Route::delete('/delete-category/{id}', [CategoryController::class, 'destroy'])->name('admin.category.delete');

    // PHOTOS
    Route::get('/photos', [PhotoController::class, 'index'])->name('admin.photos.index');
    Route::post('/photos/add-photo', [PhotoController::class, 'store'])->name('admin.photos.add');
    Route::delete('/photos/delete-photo/{id}', [PhotoController::class, 'destroy'])->name('admin.photos.destroy');
    Route::put('/photos/update-photo-order', [PhotoController::class, 'order'])->name('admin.photos.order');

    //LOCATIONS
    Route::get('/locations', [LocationController::class, 'index'])->name('admin.locations.index');
    Route::put('/locations/update-location/{id}', [LocationController::class, 'update'])->name('admin.locations.update');

    //LOYALTY
    Route::get('/loyalty', [LoyaltyController::class, 'index'])->name('admin.loyalty.index');
    Route::get('/loyalty/search-user/{search}', [LoyaltyController::class, 'search'])->name('admin.loyalty.search');
    Route::put('/loyalty/change/{userID}', [LoyaltyController::class,'change'])->name('admin.loyalty.change');

    //ADMINS
    Route::get('/admins', [AdminController::class, 'adminsIndex'])->name('admin.admins.index');
});