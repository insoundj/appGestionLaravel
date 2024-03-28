<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Usuario') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    @if ($rol)
                        <strong>Rol:</strong> {{ $rol }}                    
                        <br><br>
                        <strong>Permisos:</strong>
                        <ul>
                        @foreach ($permisos as $permiso)
                            <li>- {{ $permiso->name }}</li>
                        @endforeach                    
                        </ul>
                        <br><br>                         
                    @else
                        No tienes ningún rol asociado
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>