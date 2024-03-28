<?php

namespace App\Http\Controllers;


use App\Models\Documentos;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;
use Illuminate\Http\JsonResponse;


class DocumentosController extends Controller
{
    private $userRol;

    public function __construct()
    {
        $this->userRol = Auth::user()->getRoleNames()->first();
    }

    public function getRol(): JsonResponse
    {
        return new JsonResponse([
            "rol" => $this->userRol
        ]);
    }

    public function listar(): View
    {
        return view('documentos.listar');     
    }

    public function crear(): View
    {
        return view('documentos.crear');     
    }    

    public function editar($id)
    {
        //check rol usuario
        if($this->userRol){

            $datos = Documentos::find($id)->toArray();

            return view('documentos.editar', [
                'datos' => $datos
            ]); 
        }        
    }
    
    public function eliminar($id)
    {
        //check rol usuario
        if($this->userRol){

            $datos = Documentos::find($id)->toArray();

            return view('documentos.eliminar', [
                'datos' => $datos
            ]);  
        }       
    }    

    public function getDocumentos()
    {
        //check rol usuario
        if($this->userRol){

            $listarDocumentos = Documentos::all();

            return new JsonResponse([
                "datos" => $listarDocumentos
            ]);

        }else{

            return view('dashboard');
        }    
    }   
    
    public function relevancia(): View
    {
        return view('documentos.relevancia');   
    }

    public function relevanciaData()
    {
        //check rol usuario
        if($this->userRol){
            //obtener cantidad de documentos por relevancia
            $sql = Documentos::select('relevancia', DB::raw('COUNT(*) as cantidad'))
            ->groupBy('relevancia')
            ->orderBy('relevancia')
            ->get();
            
            $etiquetas = []; //relevancia
            $datos = []; //cantidad
            foreach( $sql as $valor){
                $etiquetas[] = $valor->relevancia;
                $datos[] = $valor->cantidad;
            }            

            //devolver json formateado para grafico
            return new JsonResponse([
                'etiquetas' => $etiquetas,
                'datos' =>  $datos
            ]);
        
        }else{

            return view('dashboard');
        }     
    }    
    
    public function aprobados(): View
    {
        return view('documentos.aprobados');     
    } 
    
    public function aprobadosData()
    {
        //check rol usuario
        if($this->userRol){

            $dateLastYear = now()->subYear();

            //obtener cantidad de documentos aprobados por mes del último año
            $sql = Documentos::select(DB::raw('MONTH(fecha_aprobacion) as mes'), DB::raw('COUNT(*) as cantidad'))
                ->where('fecha_aprobacion', '>=', $dateLastYear)
                ->whereNotNull('fecha_aprobacion')
                ->groupBy(DB::raw('MONTH(fecha_aprobacion)'))
                ->orderBy('mes','ASC')
                ->get();

            $etiquetas = []; //meses
            $datos = []; //cantidad
            foreach ($sql as $valor) {
                $etiquetas[] = $valor->mes;
                $datos[] = $valor->cantidad;
            }         

            //devolver json formateado para grafico
            return new JsonResponse([
                'etiquetas' => $etiquetas,
                'datos' =>  $datos
            ]);
        
        }else{

            return view('dashboard');
        }     
    }
    
}
