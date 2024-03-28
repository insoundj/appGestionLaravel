<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Documentos') }} {{ '/' }} {{ __('Relevancia') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    @if(@Auth::user()->hasPermissionTo('ver'))

                        <div class="filtros">
                            <select id="filtro-relevancia">
                                <option value="">-Selecciona relevancia-</option>
                                <option value="Alta">Alta</option>
                                <option value="Media">Media</option>
                                <option value="Baja">Baja</option>
                            </select>

                            <input type="text" id="filtro-fecha-aprobacion" placeholder="Fecha de aprobación">
                            <input type="text" id="filtro-fecha-subida" placeholder="Fecha de subida">
                        </div>

                        <table id="datos">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Nombre</th>
                                    <th>Descripción</th>
                                    <th>Relevancia</th>
                                    <th>Fecha de aprobación</th> 
                                    <th>Fecha de subida</th>  
                                    <th>Documento</th>                             
                                </tr>
                            </thead>
                            <!--relleno dinámico-->
                        </table>
                    
                    @else
                        No tienes permisos para visualizar el contenido
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>