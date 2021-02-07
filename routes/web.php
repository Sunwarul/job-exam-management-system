<?php

use App\Http\Controllers\FormController;
use App\Http\Controllers\GuestPagesController;
use Illuminate\Support\Facades\Route;

// Welcome page
Route::get('/', [GuestPagesController::class, 'welcome'])->name('welcome');

// Job application form, register a user after it
Route::get('/apply-for-job', [GuestPagesController::class, 'apply'])->name('apply');

// Login, Logout, Forget, etc Default UI Functionalities
Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Admin backend, create job forms, verify payments, manage users, and whole application
Route::group(['middleware' => ['auth', 'admin'], 'prefix' => 'admin'], function () {
    Route::resource('forms', FormController::class);
});
