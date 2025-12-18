<?php

use App\Models\Blog;
use App\Models\About;
use App\Models\Destination;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\Faq\FaqController;
use App\Http\Controllers\Blog\BlogController;
use App\Http\Controllers\Home\HomeController;
use App\Http\Controllers\About\AboutController;
use App\Http\Controllers\Contact\ContactController;
use App\Http\Controllers\Packages\PackageController;
use App\Http\Controllers\Destination\DestinationController;
use App\Http\Controllers\Mediacenter\MediacenterController;
use App\Http\Controllers\TripBooking\TripBookingController;

// Artisan Route
Route::get('/clear-cache', function () {
    Artisan::call('cache:clear');
    Artisan::call('config:cache');
    Artisan::call('route:clear');
    Artisan::call('migrate');

    return "Cache Cleared Successfully";
});

Route::get('/optimize-clear', function () {
    Artisan::call('optimize:clear');

    return "Optimize Cleared Successfully";
});


Route::get('/storage-link', function () {
    Artisan::call('storage:link');
    return "Storage Linked";
});

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/faq',[FaqController::class,'index'])->name('faq');

Route::get('/contact',[ContactController::class,'index'])->name('contact');
Route::post('/send',[ContactController::class,'send'])->name('send');

Route::get('/about',[AboutController::class,'index'])->name('about');

Route::get('/destination',[DestinationController::class,'index'])->name('destination');
Route::get('/destination/{slug}',[DestinationController::class,'show'])->name('destinationshow');

Route::get('/packages',[PackageController::class,'index'])->name('packages');
Route::get('/packages/{slug}',[PackageController::class,'show'])->name('packageshow');
Route::post('/tripbooking',[TripBookingController::class, 'tripbooking'])->name('tripbooking');



Route::get('/blog', [BlogController::class, 'index'])->name('blog');
Route::get('/blog/{slug}',[BlogController::class,'show'])->name('blogDetails');
Route::get('/mediacenter', [MediacenterController::class, 'index'])->name('mediacenter');



