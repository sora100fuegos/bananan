$(document).ready(function() {//Entra hasta que la pagina se cargó

	$("button#add-user")
	//Selector
	.on("click", //Evento a manejar
	function(event) {
		var estadoEmail=1;

		saveName = $("input#nombre").val(); //Estamos apuntando al textarea. Devuelve un string
		saveName = $.trim(saveName); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.
        console.log("el nombre es",saveName);
		saveCorreo = $("input#correo").val(); //Estamos apuntando al textarea. Devuelve un string
		saveCorreo = $.trim(saveCorreo); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.
		console.log("el correo es ",saveCorreo);
		saveContrasena = $("input#contrasena").val(); //Estamos apuntando al textarea. Devuelve un string
		saveContrasena = $.trim(saveContrasena); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.
		console.log("la contrasena es ",saveContrasena);
		var nuevaPublicacion = {
			"nombre" : saveName,
			"correo" : saveCorreo,
			"contrasena" : saveContrasena,
		//saveAddall

		};

		//alert(nuevaPublicacion);
		//alert(nuevaPublicacion);
		
		//Verificar correo:
		
		var testEmail =  /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

		  console.log( testEmail.test(saveCorreo));
		  
		  

		if (saveName !== "" && saveCorreo !== "" && saveContrasena !== ""&&   testEmail.test(saveCorreo) ) {
			console.log(saveName);
			console.log(saveCorreo);
			console.log(saveContrasena);

			//Insertar nueva publicacion.

			$.ajax({
				url : "http://localhost:8080/Manzana/AgregarUsuario",
				type : "POST",
				//Qué espero recibir de la ruta
				contentType : "application/json",
				//Que tipo de datos te voy a enviar
				dataType : "json",
				data : JSON.stringify(nuevaPublicacion),

				//Servlet existe y me devolvió un JSON
				success : function(data, textStatus, jqXHR) {
					console.log("Si el acceso al servlet fue correcto");
					//setTimeout(console.log(data), 10000);
					console.log(data); //data.dato
					//alert("Usuario agregado correctamente");
					if(data.status==0)
						
						{
						   alert("usuario   registrado correctamente ") ;
						}
					else
						{
						alert("  el usuario ya existe   por   favor utilia otro correo"); 
						
						}

				},
				error : function(jqXHR, textStatus, errorThrown) {
					//console.log(data);
					console.log(jqXHR);
					console.log(textStatus);
					console.log(errorThrown);
				}
			});

		} else {
			if(estadoEmail!=0)
			alert("Debes completar todos los campos para poder continuar.");

		}

	}); //Funcion para manejar un evento

	$("button#login-usell")
	//Selector
	.on("click", //Evento a manejar
	function(event) {

		saveCorreo1 = $("input#correologin").val(); //Estamos apuntando al textarea. Devuelve un string
		saveCorreo1 = $.trim(saveCorreo1); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.
		//saveCorreo1 = utf8_encode(saveCorreo1);

		saveContrasena1 = $("input#contrasenalogin").val(); //Estamos apuntando al textarea. Devuelve un string
		saveContrasena1 = $.trim(saveContrasena1); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

		var nuevaPublicacion = {
			"correo" : saveCorreo1,
			"contrasena" : saveContrasena1,
		//saveAddall

		};

		//alert(nuevaPublicacion);
		//alert(nuevaPublicacion);

		if (saveCorreo1 !== "" && saveContrasena1 !== "") {
			console.log(saveCorreo1);
			console.log(saveContrasena1);

			//Insertar nueva publicacion.

			$.ajax({
				url : "http://localhost:8080/Manzana/Loguear",
				type : "POST",
				//Qué espero recibir de la ruta
				contentType : "application/json",
				//Que tipo de datos te voy a enviar
				dataType : "json",
				data : JSON.stringify(nuevaPublicacion),

				//Servlet existe y me devolvió un JSON
				success : function(data, textStatus, jqXHR) {
					console.log("Si el acceso al servlet fue correcto");
					console.log(data); //data.dato
					if(data.correo=="error"||data.contrasena=="error")
						{
							alert("Usuario y/o contraseña incorrecta");
							
							
						}
					else
						
						{
						//alert("Acceso correcto");
						 alert('upring suario  logueado  correctamente ');
	                	  
						 var datoslog = {
									"correo" : data.correo,
									"contrasena" : data.contrasena,
								//saveAddall

								};

						 
						// window.location.replace("http://localhost:8080/Manzana/dashboardNuevo.html");
						 
						
						 
						 
						 
						}

				},
				error : function(jqXHR, textStatus, errorThrown) {
					//console.log(data);
					console.log(jqXHR);
					console.log(textStatus);
					console.log(errorThrown);
				}
			});

		} else {
			
			
				alert("Debes completar todos los campos para poder continuar.");

		}

	}); //Funcion para manejar un evento

});
