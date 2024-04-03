//resources/js/main.js

//---documentReadyOpen
$(document).ready(function() {

    //variable que muestra los botones de editar,eliminar si es administrador
    var verActions;

    //obtengo el rol de forma asíncrona
    async function getRol(){
        try{
            let request = await fetch('/getRol');
            if (!request.ok) {
                throw new Error(`HTTP error! Status: ${request.status}`);
            }

            return request.json()

        } catch (error){
            console.error('Error:', error);            
        }
    }
    
    //manejo la respuesta asíncrona para gestionar el rol y pintar la tabla
    getRol()
        //OK
        .then(response => {
            console.log(response.rol);
            (response.rol == 'Administración') ? verActions = true : verActions = false;           
            
            //dataTable listado documentos. Route: resources/views/documentos/index
            let botones;
            let tabla = $('#datos').DataTable({
                ajax: {
                    url: "/documentos/getDocumentos",
                    dataSrc: "datos",
                },  
                columns: [
                    { data: 'id', visible: false}, //0
                    { data: 'nombre' }, //1
                    { data: 'descripcion' }, //2
                    { data: 'relevancia' }, //3
                    { data: 'fecha_aprobacion', //4
                        render: function(data) {
                            if(data){
                                return new Date(data).toLocaleDateString()
                            }else{
                                return ''
                            }                          
                        }                                        
                    },
                    { data: 'fecha_subida', //5
                        render: function(data) {
                            return new Date(data).toLocaleDateString() 
                        } 
                    },
                    { data: 'documento_pdf', //6
                        render: function(data) {
                            return `<a title="Ver ${data}" href="/storage/${data}">${data}</a>`; 
                        }                 
                    },               
                    { data: null, visible: verActions, //7                   
                        render: function(row) {
                            botones = `<div class='botones'>
                                            <a title="Editar" href="/documentos/editar/${row.id}">Editar</a> 
                                            <a title="Borrar" href="/documentos/eliminar/${row.id}">Eliminar</a>
                                    </div>`;
                            return botones; 
                        }                 
                    }                                                                                    
                ],
                order: [
                    [0, 'asc']
                ]                                
            });
    
            //filtro relevancia
            $('#filtro-relevancia').on('change', function() {
                let relevancia = $(this).val();
                tabla.column(3).search(relevancia).draw(); 
            });
        
            //filtro fecha aprobación
            $('#filtro-fecha-aprobacion').on('input', function() {
                let fAprobacion = $(this).val();
                tabla.column(4).search(fAprobacion).draw(); 
            });
            
            //filtro fecha subida
            $('#filtro-fecha-subida').on('input', function() {
                let fSubida = $(this).val();
                tabla.column(5).search(fSubida).draw(); 
            });


        //KO
        })
        .catch(error => {
            console.error("Error obtener rol:", error)
        });



//---documentReadyClose
});



//funcion pintar grafico
//Route: resources/views/documentos/relevancia
//Route: resources/views/documentos/aprobados 
function printGraphic(url, type, description){
    //contexto del canvas
    const canvas = document.getElementById('canvas').getContext('2d');

    //fetch() para obtener JSON
    fetch(url)
        .then(response => {
            if (!response.ok) {
                throw new Error('Hubo un problema al obtener los datos.');
            }
            //Parsear respuesta como JSON
            return response.json();
        })
        .then(data => {
            //crear el grafico
            new Chart(canvas, {
                type: type, 
                data: {
                    labels: data.etiquetas, // Etiquetas
                    datasets: [{
                        label: description, // Etiqueta del dataset
                        data: data.datos, // Datos numéricos
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.5)', //azul
                            'rgba(255, 99, 132, 0.5)', //Rojo
                            'rgba(255, 205, 86, 0.5)', //amarillo
                            'rgba(75, 192, 192, 0.5)', //verde                                        
                            'rgba(255, 159, 64, 0.5)', //Naranja                                         
                            'rgba(153, 102, 255, 0.5)', //morado                                                                           
                            'rgba(201, 203, 207, 0.5)' //gris
                        ],
                        borderColor: [
                            'rgb(54, 162, 235)', //azul
                            'rgb(255, 99, 132)', //rojo
                            'rgb(255, 205, 86)', //amarillo
                            'rgb(75, 192, 192)', //verde                                        
                            'rgb(255, 159, 64)', //naranja                                        
                            'rgb(153, 102, 255)', //morado                                                                        
                            'rgb(201, 203, 207)' //gris
                        ],
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,                    
                }
            });
        })
        .catch(error => {
            console.error('Error al solicitar los datos JSON:', error);
        });
}

