<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    
    
<!DOCTYPE html>
<html lang="es">


<head>
   <meta charset="UTF-8">
  <link rel="stylesheet" href="css/styleBanana.css">
   <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">-->
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <script src="https://use.fontawesome.com/4f360dff2c.js"></script>
   <title>Crear Proyecto</title>

</head>



<body>


 <%
String userName = null;
    
    String userMail = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) 
	{
		
		userName = cookie.getValue();
	 
	     
}

if(cookie.getName().equals("mail")) 
	
{
	userMail = cookie.getValue();
 
     
}



}

}
if(userName == null) response.sendRedirect("pruebas.html");
%>

<h3><%=userMail %></h3>


	<!--<nav class="navbar navbar-light bg-light">
            <form class="form-inline">
                <div class="nav-link" href="#"><i class="fa fa-home fa-3x"  aria-hidden="true" ></i> </div>
                
                
                    
              <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" style="width:300px";>
             <!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
	<!-- <div><img src="img/manzana_1.png"></div>
             <div class="nav-link" href="#"><i class="fa fa-plus-square fa-3x" aria-hidden="true" href="#"></i></div>
             <div class="nav-link" href="#"><i class="fa fa-user fa-3x" aria-hidden="true"></i></div>
            </form>
          </nav>-->


	<!--Inicia div que contiene toda la pagina-->
	<div class="container">
		<!--Inicia div del header-->
		<div class="container header">
			<div class="row">
				<!--Inicia div del boton home-->
				<div class="col-lg-2">
					<a href="dashboardNuevo.html">
						<div class="nav-link" href="">
							<i class="fa fa-home fa-3x" aria-hidden="true"></i>
						</div>
					</a>
				</div>
				<!--Fin div del boton home-->

				<!--Inicio div busqueda-->
				<div class="col-lg-4">
					<nav class="navbar navbar-light bg-white">
						<form class="form-inline">
							<input class="form-control mr-sm-2" type="text"
								placeholder="Buscar Proyecto ..." aria-label="Search">
							<!--  <input type=image src="img/search_icon.png" width="30px" height="30px"> -->
						</form>
					</nav>
				</div>
				<!--Fin div busqueda-->

				<!--Inicio div logo manzana-->
				<div class="col-lg-2">
					<img id="logo" src="img/logo.png" alt="logo">
				</div>
				<!--Fin div logo manzana-->

				<!--Inicio div icono add-->
				<div class="col-lg-2">
					<a href="#">
						<div class="nav-link" href="#">
							<i class="fa fa-plus-square fa-3x" aria-hidden="true" href="#"></i>
						</div>
					</a>
				</div>
				<!--Fin div icono add-->

				<!--Inicio div icono user-->
				<div class="col-lg-2">
					<a href="#">
						<div   id ="nom" class="nav-link" href="#">
							<i class="fa fa-user fa-3x" aria-hidden="true">   <%=userName %></i>
						</div>
					</a>
				</div>
				<!--Fin div icono user-->
			</div>
		</div>
		<!--Fin div del header-->
	</div>
	<br>

	<div class="container">
		<form>
			<div class="form-group row">
				<label for="inputNombreProyecto" class="col-sm-2 col-form-label">Nombre
					del Proyecto:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputNombreProyecto"
						placeholder="Elige un nombre que represente tu proyecto">
				</div>
			</div>
			<div class="form-group row">
				<label for="exampleFormControlTextarea1"
					class="col-sm-2 col-form-label">DescripciÃ³n:</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="10" placeholder="AÃ±adir texto"></textarea>
				</div>
			</div>


			<div1 class="container">
			<div class="form-group row"display: "inline-block">
				<label class="col-sm-2 col-form-label" for="startDate">Fecha
					de Inicio:</label>
				<div2 class="col-sm-4"> <input type="date"
					class="form-control" id="inputStartDate" value="2017/11/12">
				</div2>
				<label class="col-sm-2 col-form-label" for="endDate">Fecha
					de TÃ©rmino:</label>
				<div4 class="col-sm-4"> <input type="date"
					class="form-control" id="inputEndDate" value="2017/12/12">
				</div4>
			</div>
			</div1>


			<div6 class="container">

			<div class="form-group row"display: "inline-block">
				<label for="inputNombreProyecto" class="col-sm-2 col-form-label">Agregar
					Miembros:</label>

				<div class="col-sm-10">
					<span class="fa-stack fa-lg" id="add"> <i
						class="fa fa-square-o fa-stack-2x"></i> <i
						class="fa fa-plus fa-stack-1x"></i> <!--<i class="fa fa-user fa-stack-3x"></i>-->
					</span> <input type="text" class="form-control" id="inputNombreMiembro"
						placeholder="Ingresa el  correo  del miembro"><br>

					<textarea class="form-control" id="exampleFormControlTextarea2"
						rows="10" placeholder="correo de   Miembros"></textarea>
				</div>
			</div>
			<div class="casa">
				<div class="form-group row"display: "inline-block">
					<div class="col-sm-12">
						<button id="add-info" type="button" class="btn btn-mio"
							font-size='8px' ; style='width: 140px; height: 80px'
							data-toggle="modal" data-target="#myModal">Guardar</button>
					</div>
				</div>
			</div6>




			<!--AquÃ­ iba el Modal-->


			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Resultados</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<div id="posts"></div>

							</div>
						</div>
						<div class="modal-footer">
							<button id="close-post" type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancelar</button>
							<button id="add-post" type="submit" class="btn btn-primary">Aceptar</button>
						</div>
					</div>
				</div>
			</div>
	</div>

	</form>
	</div>

	<!--      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script> -->

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/proyecto.js"></script>
</body>
</html>