<?php

use App\Http\Controllers\DocumentosController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/***Rutas***/

Route::get('/', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    /*User*/
    Route::get('/user', [UserController::class, 'index'])->name('user.index');
    /*Documentos*/
    Route::get('/documentos', [DocumentosController::class, 'index'])->name('documentos.index');
    Route::get('/listar', [DocumentosController::class, 'listar'])->name('documentos.listar');    
});

require __DIR__.'/auth.php';
