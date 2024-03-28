<?php

namespace App\Http\Controllers;


use App\Models\Documentos;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Http\JsonResponse;


class DocumentosController extends Controller
{
    public function index(): View
    {

        return view('documentos.index');     

    }

    public function listar()
    {
        $userRol = Auth::user()->getRoleNames()->first();

        if($userRol){

            $listarDocumentos = Documentos::all();

            return new JsonResponse([
                "datos" => $listarDocumentos
            ]);
            
        }else{

            return view('dashboard');

        }    

    }    
}
