<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Documentos') }} {{ '/' }} {{ __('Listado') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    @if(@Auth::user()->hasPermissionTo('crear'))                   

                        <div class="formulario">
                            <h1 class="m-3 fs-2">Crear documento</h1>
                            <form action="{{ route('documentos.guardar') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                    
                                <div class="row m-4">
                                    <label for="nombre">Nombre:</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre" required>
                                </div>
                    
                                <div class="row m-4">
                                    <label for="descripcion">Descripción:</label>
                                    <textarea class="form-control" id="descripcion" name="descripcion" rows="4" required></textarea>
                                </div>
                    
                                <div class="row m-4">
                                    <label for="relevancia">Relevancia:</label>
                                    <select class="form-control" id="relevancia" name="relevancia" required>
                                        <option value="">Selecciona una opción</option>
                                        <option value="Baja">Baja</option>
                                        <option value="Media">Media</option>
                                        <option value="Alta">Alta</option>
                                    </select>
                                </div>
                    
                                <div class="row m-4">
                                    <label for="documento_pdf">Documento PDF:</label>
                                    <input type="file" class="form-control-file" id="documento_pdf" name="documento_pdf" accept=".pdf" required>
                                </div>
                    
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </form>
                        </div>                        
                    
                    @else
                        No tienes permisos para visualizar el contenido
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>