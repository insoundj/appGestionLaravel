<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Documentos') }} {{ '/' }} {{ __('Por relevancia') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    @if(@Auth::user()->hasPermissionTo('ver'))

                        <div class="contenidoGrafico">
                            <canvas id="canvas"></canvas>
                        </div>

                        <script>
                            printGraphic('/relevanciaData', 'pie', 'Cantidad');
                        </script>
                    
                    @else
                        No tienes permisos para visualizar el contenido
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>