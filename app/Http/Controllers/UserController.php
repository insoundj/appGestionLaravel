<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class UserController extends Controller
{

    public function index(Request $request): view
    {
        //obtener el usuario autenticado
        $user = Auth::user();

        //obtener el rol del usuario
        $rol = $user->getRoleNames()->first();
        //obtener los permisos asociados al rol
        $permisos = $user->getAllPermissions();

        //lanzar la vista
        return view('usuario.index', [
            'rol' => $rol,
            'permisos' => $permisos,
        ]);
    }
    
}
