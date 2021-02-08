<?php

use App\Http\Controllers\ApplicationFormController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\GuestPagesController;
use App\Http\Controllers\SongsController;
use Illuminate\Support\Facades\Route;

// Welcome page
Route::get('/', [GuestPagesController::class, 'welcome'])->name('welcome');

// Show job application form and register user after submitting it
Route::get('/apply-for-job', [ApplicationFormController::class, 'create'])->name('application.index');
Route::post('/apply-for-job-post', [ApplicationFormController::class, 'store'])->name('application.store');

// Login, Logout, Forget, etc Default UI Functionalities
Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Admin backend, create job forms, verify payments, manage users, and whole application
Route::group(['middleware' => ['auth', 'admin'], 'prefix' => 'admin'], function () {
    Route::resource('forms', FormController::class);
});
