$(document).ready(function() {
	
	$("h3").hide();
	
	
	///  esta  funcion lo  que hace es  detectar    el nombre del usuario que se logueo y  lo lee 
	//y  lo  busca en la base de datos si lo encuentra lo que ahce es buscar     todos los proyectos 
	//en  donde el correo de usuaio sea  el mismo 
	
	
	var Msg = $("#nom").val();
	
	var correo = $("h3").text();
	
	var str2 = $("#nom").text();
	
	str2= str2.trim();
	
	coreo= correo.trim();
	var str3 = $("div#nom").text();
	
	
	
	
	
	console.log("   el correo del usuario logueado es",correo);
	
	
	console.log("  los  proyectos que  quieres mostrar son ",Msg);
	
	console.log("    el   correo  del  usuario logueado es  ",str2);
	console.log("  los  proyectos que  quieres mostrar son ",str3);
	console.log("  los  proyectos que  quieres mostrar son ",Msg);
	

	
	
	console.log("los correos  que quieres mostrar  son ",correo);
	
	
	var user = {
			"user" : correo,
			

		};
	
	 $.ajax({
           url: "http://localhost:8080/Manzana/obtenerproy", 
           type: "POST",
           //Qué espero recibir de la ruta
           contentType: "application/json",
           //Que tipo de datos te voy a enviar
           dataType: "json",
           data: JSON.stringify(user),

           //Servlet existe y me devolvió un JSON
           success: function(data, textStatus, jqXHR) {
               console.log("Si el acceso al servlet fue correcto");
               console.log(data); //data.dato
             
               for(var idx = 0; idx < data.length; idx++) 
                   
               
                   {
                   // Obtener el html actual
            	   
            	   console.log(data[idx].proyectos)
                   var htmlElement =
                           '<div id="mi-proy-' + '" class="container mi-post">' +
                              '<div class="row">' +
                                   '<div class="col-2">' + data[idx].proyectos +
                                       '<img src="img/carpeta.jpeg"   style = "height:100px; width 100px;">' +
                            
                                '</div>' +
                                
                                
                                
                                '<div class="col-3">' + 
                                '<b>POST ' + data[idx].id + '</b></div>' +
                              
                            '<button class="btn btn-outline-danger btn-sm verproy" data-numero="' + data[idx].id + '">ver</button>' +
                            
                                  
                                  
                                  
                               
                      
                               '<button class="btn btn-outline-danger btn-sm post-delete" data-numero="' + data[idx].id + '">eliminar</button>' +
                                      '</div>' +
                               
                               
                             '</div> '+
                             
                             '</div> '+
                             
                                  $("div#proyl").append(htmlElement);
                     }  
               
           },
           error: function(jqXHR, textStatus, errorThrown) {
               console.log(jqXHR);
               console.log(textStatus);
               console.log(errorThrown);
           }
       });
	
	 $("div#proyl").on("click", "button.verproy", function(event) {
	        // Entramos a ejecutar las acciones, sólo si el usuario acepta
	        
		  window.location.replace("http://localhost:8080/Manzana/vertareas.jsp");
		 
	});

	
	
	
});
