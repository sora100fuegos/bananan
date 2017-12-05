$(document).ready(function() {
	
	
	
	
	
	
	var Msg = $("#Usuario").val();
	
	
	console.log("  los  proyectos que  quieres mostrar son S",Msg);
	
	
	 $.ajax({
           url: "http://localhost:8080/Manzana/obtenerproy", 
           type: "POST",
           //Qué espero recibir de la ruta
           contentType: "application/json",
           //Que tipo de datos te voy a enviar
           dataType: "json",
           data: JSON.stringify(saveAdd),

           //Servlet existe y me devolvió un JSON
           success: function(data, textStatus, jqXHR) {
               console.log("Si el acceso al servlet fue correcto");
               console.log(data); //data.dato
             
               if(data.result==1)
               	{
               	console.log("usuario encontrado  y agregado correctamente ");
	                  var html = $("textarea#exampleFormControlTextarea2").html();
	                $("textarea#exampleFormControlTextarea2").append(
	        
	                        data.correo+"\n"
	                       
	                );
	    
	                $("input#inputNombreMiembro").val("");
               	}
               else
               	{
         			console.log("el usuario buscado no existe");
               		alert("Id de usuario no existe o  ya ah sido agregado a este correo");
               		$("input#inputNombreMiembro").val("");
               	}

               
               
           },
           error: function(jqXHR, textStatus, errorThrown) {
               console.log(jqXHR);
               console.log(textStatus);
               console.log(errorThrown);
           }
       });
	
	

	
	
	
});
