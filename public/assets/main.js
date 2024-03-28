//resources/js/main.js

//---documentReadyOpen
$(document).ready(function() {

//dataTable listado documentos. Route: resources/views/documentos/index
    let tabla = $('#datos').DataTable({
            ajax: {
                url: "/listar",
                dataSrc: "datos",
            },  
            columns: [
                { data: 'id', visible: false}, //0
                { data: 'nombre' }, //1
                { data: 'descripcion' }, //2
                { data: 'relevancia' }, //3
                { data: 'fecha_aprobacion', //4
                    render: function(data) {
                        return new Date(data).toLocaleDateString() 
                    }                                        
                },
                { data: 'fecha_subida', //5
                    render: function(data) {
                        return new Date(data).toLocaleDateString() 
                    } 
                },
                { data: 'documento_pdf' }, //6                                                                     
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



//graficoCircular documentos por relevancia. Route: resources/views/documentos/relevancia







//graficoLineal documentos aprobados por mes. Route: resources/views/documentos/aprobados









//---documentReadyClose
});
