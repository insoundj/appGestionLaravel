<?php

namespace App\Http\Controllers;

use App\Models\Documentos;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class apiDocumentosController extends Controller
{
    
    public function getDocumentosPorRelevancia(): JsonResponse
    {
        //obtener cantidad de documentos por relevancia
        $sql = Documentos::select('relevancia', DB::raw('COUNT(*) as cantidad'))
        ->groupBy('relevancia')
        ->orderBy('relevancia')
        ->get();          

        //devolver json 
        return new JsonResponse($sql);           
    }

}
