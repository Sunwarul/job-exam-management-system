<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FormController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SongsController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\GuestPagesController;
use App\Http\Controllers\ApplicationController;
use App\Http\Controllers\ApplicationFormController;

// Welcome page
Route::get('/', [GuestPagesController::class, 'welcome'])->name('welcome');


// Show job application form and register user after submitting it, upload photo & signature.
Route::get('/application-form', [ApplicationFormController::class, 'create'])->name('application_form.index');
Route::post('/application-form', [ApplicationFormController::class, 'store'])->name('application_form.store');


// Login, Logout, Forget, etc Default UI Functionalities
Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


// Admin backend, create job forms, verify payments, manage users, and other administrative tasks
Route::group(['middleware' => ['auth', 'admin'], 'prefix' => 'admin'], function () {
    Route::resource('forms', FormController::class);
    Route::resource('users', UserController::class);
    Route::resource('applications', ApplicationController::class);
    Route::resource('payments', PaymentController::class);
});
