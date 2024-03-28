<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Documentos extends Model
{
    use HasFactory;

    protected $fillable = [
        'nombre',
        'descripcion',
        'relevancia',
        'fecha_aprobacion',
        'fecha_subida',
        'documento_pdf',
    ];
    
}
