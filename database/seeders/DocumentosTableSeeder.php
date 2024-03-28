<?php

namespace Database\Seeders;

use App\Models\Documentos;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DocumentosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for($i=1; $i<=50; $i++){

            $relevancia = ['Alta','Media','Baja'];
            $claveAleatoria = array_rand($relevancia);
            $valorRelevancia = $relevancia[$claveAleatoria];

            $numAleatorioSubida = rand(366,730);
            $numAleatorioAprobacion = rand(1,365);

            $documento = [
                'nombre' => 'Documento '.$i,
                'descripcion' => 'Descripción del Documento '.$i,
                'relevancia' => $valorRelevancia,
                'fecha_aprobacion' => now()->subDays($numAleatorioAprobacion),
                'fecha_subida' => now()->subDays($numAleatorioSubida),
                'documento_pdf' => 'documento'.$i.'.pdf',
            ];
            Documentos::create($documento);
        }    
    }
}
