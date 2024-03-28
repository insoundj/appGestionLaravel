<?php

use App\Http\Controllers\apiDocumentosController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/***EndPoints***/

Route::get('/getDocumentosPorRelevancia', [apiDocumentosController::class, 'getDocumentosPorRelevancia'])->name('api.getDocumentosPorRelevancia');
