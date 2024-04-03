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
    Route::get('/getRol', [DocumentosController::class, 'getRol'])->name('documentos.getRol');
    Route::get('/documentos/listar', [DocumentosController::class, 'listar'])->name('documentos.listar');
    Route::get('/documentos/getDocumentos', [DocumentosController::class, 'getDocumentos'])->name('documentos.getDocumentos');
    Route::get('/documentos/crear', [DocumentosController::class, 'crear'])->name('documentos.crear'); 
    Route::post('/documentos/guardar', [DocumentosController::class, 'guardar'])->name('documentos.guardar'); 
    Route::get('/documentos/editar/{id}', [DocumentosController::class, 'editar'])->name('documentos.editar');
    Route::get('/documentos/eliminar/{id}', [DocumentosController::class, 'eliminar'])->name('documentos.eliminar');
    Route::post('/documentos/borrar', [DocumentosController::class, 'borrar'])->name('documentos.borrar'); 
    Route::get('/documentos/relevancia', [DocumentosController::class, 'relevancia'])->name('documentos.relevancia');
    Route::get('/relevanciaData', [DocumentosController::class, 'relevanciaData'])->name('documentos.relevanciaData');
    Route::get('/documentos/aprobados', [DocumentosController::class, 'aprobados'])->name('documentos.aprobados');   
    Route::get('/aprobadosData', [DocumentosController::class, 'aprobadosData'])->name('documentos.aprobadosData');
});

require __DIR__.'/auth.php';
