var act= 1;

$(document).ready(function(){//Entra hasta que la pagina se cargó

    var arregloDeObjetos = [];//Guardar registros del formulario

    $("span#add") //Selector
    .on( 
        "click",         //Evento a manejar
        function( event ){    //Función manejadora

            //alert("Hola");

            var saveAdd = $("input#inputNombreMiembro").val(); //Estamos apuntando al textarea. Devuelve un string
            saveAdd =  $.trim(saveAdd); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

            if(saveAdd=="")
            	{
            	
            	   alert("  por  favor  pon texto  para   agregar un nuevo   usuario al proyecto ")
            	
            	}
            
            if(saveAdd!="")
            {
            	
            	
            	
            	saveAdd = {"correo":saveAdd};
            	//Ajax para verificar si existe el id del miembro en la bd.
            	  $.ajax({
  	                url: "http://localhost:8080/Manzana/BuscarProyecto", 
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
  	              	var texto = $("textarea#exampleFormControlTextarea2").val();
  	              	
  	              	console.log("el campo  que se contiene  es",texto);
  	              	texto=texto.trim();
  	              
  	              
  	               
  	               if(texto==""   &&  data.result==1 )
  	            	   {
  	            		data.correo=data.correo.trim();
  	            		    
  	            	 var html = $("textarea#exampleFormControlTextarea2").html();
	  	                $("textarea#exampleFormControlTextarea2").append(
	  	        
	  	                        data.correo+"\n"
	  	                       
	  	                );
	  	              alert("usuario encontrado  y agregado correctamente" );
  	            		   
  	            	   }
  	               
  	               else
  	            	   
  	            	   {
  	            	   
  	            	   
  	            	//	data.correo=data.correo.trim();
  	            	   
  	            	 textos  = texto.split("\n");
    	                 
  	            	   
  	               
  	               console.log("pos",textos[0]+textos[1]+textos[2])
  	               
  	               
  	               var x;
  	               for( x in textos)
  	            	   {
  	            	   
  	            	   console.log("los correos son ", textos[x])
  	            	   
  	            	   
  	            	   console.log("los correos son ", textos.length)
  	            	   
  	            	   
  	            	   
  	            	   
  	                    if((data.result==1    &&   data.correo==textos[x])  || data.result==0  )
  	                    	{
  	                   
  	                    	
  	  	                
  	  	            console.log("el usuario buscado no existe o  ya ah sido agregado anteriormente");
              		alert("Id de usuario no existe");
              		$("input#inputNombreMiembro").val("");
              		
              		act=0;
  	  	            break;
  	  	            
  	  	            
  	                    	}
  	            	   } 
  	                    if(act==1)	
  	               
  	                    	{
  	                   	var texto = $("textarea#exampleFormControlTextarea2").val();
	                    	
	                    	console.log("usuario encontrado  y agregado correctamente ");
	                    	alert("usuario encontrado  y agregado correctamente" );
	  	                  var html = $("textarea#exampleFormControlTextarea2").html();
	  	                $("textarea#exampleFormControlTextarea2").append(
	  	        
	  	                        data.correo+"\n"
	  	                        
	  	                       
	  	                        
	  	                        
	  	                       
	  	                );
	  	    
	  	                $("input#inputNombreMiembro").val("");
                    			
  	                    	}
  	                    
  	                    act=1;
  	                    
  	            	   }
  	            	   
  	                    
  	                },
  	                error: function(jqXHR, textStatus, errorThrown) {
  	                    console.log(jqXHR);
  	                    console.log(textStatus);
  	                    console.log(errorThrown);
  	                }
  	            });
            	
            	
            	

            }
            else
            {
                alert("Introduce un nombre válido");
            }


            

        });  //Funcion para manejar un evento

    $("button#add-info") //Selector
    .on( 
        "click",         //Evento a manejar
        function( event ){    //Función manejadora

            var saveName = $("input#inputNombreProyecto").val(); //Estamos apuntando al textarea. Devuelve un string
            saveName =  $.trim(saveName); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

            var saveDesc = $("textarea#exampleFormControlTextarea1").val(); //Estamos apuntando al textarea. Devuelve un string
            saveDesc =  $.trim(saveDesc); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

            var saveStart = $("input#inputStartDate").val(); //Estamos apuntando al textarea. Devuelve un string
            saveStart =  $.trim(saveStart); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

            var saveEnd = $("input#inputEndDate").val(); //Estamos apuntando al textarea. Devuelve un string
            saveEnd =  $.trim(saveEnd); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

            var saveAddall = $("textarea#exampleFormControlTextarea2").val(); //Estamos apuntando al textarea. Devuelve un string
            saveAddall =  $.trim(saveAddall); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

            if(saveName !== "" && saveDesc !== "" && saveStart !== "" && saveEnd !== "" && saveAddall !== "")
            {
                console.log(saveName);
                console.log(saveDesc);
                console.log(saveStart);
                console.log(saveEnd);
                console.log(saveAddall);
                
    			
    			//Objeto a enviar al servlet
    			var nuevaPublicacion = {
    					"nombreproyecto": saveName,
    					"descripcion": saveDesc,
    					"fechainicio": saveStart,
    					"fechafin": saveEnd,
    					"estado": "1",
    					"miembros": saveAddall
    			
    			};
    			

    			//alert(nuevaPublicacion);
    			console.log(nuevaPublicacion);  			
    			
    			//Insertar nueva publicacion.

                var html = $("div#posts").html();
                $("div#posts").prepend(

                    '<label class = "form-control-label" for = "textoPost">¿Deseas agregar el siguiente registro?</label>'+
                    
                    
                    '<textarea class = "form-control" id="textoPost">'+
                        
                        'Nombre de Proyecto: '+saveName+'\n'+
                        'Descripcion: '+saveDesc+'\n'+
                        'Fecha de Inicio: '+saveStart+'\n'+
                        'Fecha de Termino: '+saveEnd+'\n'+
                        'Miembros: '+"\n"+saveAddall+
                        
                                              '</textarea>'
                );
                
                $.ajax({
	                url: "http://localhost:8080/Manzana/AgregarProyecto", 
	                type: "POST",
	                //Qué espero recibir de la ruta
	                contentType: "application/json",
	                //Que tipo de datos te voy a enviar
	                dataType: "json",
	                data: JSON.stringify(nuevaPublicacion),

	                //Servlet existe y me devolvió un JSON
	                success: function(data, textStatus, jqXHR) {
	                    console.log("Si el acceso al servlet fue correcto");
	                    console.log(data); //data.dato
	                    
	                    
	                },
	                error: function(jqXHR, textStatus, errorThrown) {
	                    console.log(jqXHR);
	                    console.log(textStatus);
	                    console.log(errorThrown);
	                }
	            });
                
                

            }
            else
            {
                
               //alert("Debes completar todos los campos para poder continuar.");
               var html = $("div#posts").html();
               $("div#posts").prepend(

                
                   '<textarea class = "form-control" id="textoPost">'+
                       
                   'Debes completar todos los campos para poder continuar.'+
                       
                                             '</textarea>'
                      


               );
               
                
            }
            

    		
    		
    		
    		

            
    });  //Funcion para manejar un evento

});
