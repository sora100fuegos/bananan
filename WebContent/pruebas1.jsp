<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/styleBanana.css">
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="https://use.fontawesome.com/4f360dff2c.js"></script>
<title>Login</title>

</head>


<%
session.setMaxInactiveInterval(2);
%>

 <script type="text/javascript">
var Msg ='<%=session.getAttribute("getAlert")%>';

console.log("mensaje",Msg);


    if (Msg != "null") {
    	
    	alert("  el usuario no  existe ");
 function alertName(){
 alert("  el usuario no  existe ");
 } 
 }
 </script>
<body>
    <!--Inicia div que contiene toda la pagina-->
    <div class="container">
    <form   action="Loguear" method="post">
        <!--Inicia div del header-->
        <div class="container header">
            <div class="row">
                <!--Inicio div logo manzana-->
                <div class="col-lg-2">
                    <img id="logo" src="img/manzana.png" alt="logo">
                </div>
                <!--Fin div logo manzana-->
                
                
                <div class="col-lg-4 ">
                        <div class="form-group row">
                                <label class="texto" for="inputNombreProyecto">Correo:&nbsp;&nbsp;&nbsp;</label>
                                <div class="input-user" >
                                    <input type="text" class="form-control" name="correologin"
                                        placeholder="Ingresa tu correo">
                                </div>
                        </div>
                </div>
                <div class="col-lg-4 ">
                        <div class="form-group row">
                                <label class="texto" for="inputNombreProyecto" >Contraseña:&nbsp;&nbsp;&nbsp;</label>
                                <div class="input-user">
                                    <input type="password" class="form-control" name="contrasenalogin"
                                        placeholder="Ingresa tu contraseña">
                                </div>
                        </div>
                </div>
                <div  class="col-lg-2 ">
                   
                        <div class="casa">
                                <div class="form-group row"display: "inline-block">
                                    <div class="login">
                                        <button id="login-user" type="submit" class="btn btn-mio"
                                        font-size='8px' ; style='width: 80x; height: 50px'
                                        data-toggle="modal" data-target="#myModal">Login</button>
                                    </div>
                                </div>                     
                        </div>
                </div>
                    
            </div>
        </div>
        
        </form>
        <br><br><br>
        
        
        
        
         <!--Termina div del header-->
          <!--Inicio div bienvenido-->
         <div class="row"> 
                <div align='center' class="col-lg-12">
                    <img src="img/bienve.jpg">
                </div>
        </div>
        <br><br><br>
        <div class="container header">
                                  
                <br><br><br> 
                            <div class="form-group row">
                                <label for="inputNombreProyecto" class="col-sm-2 col-form-label">Nombre:</label>
                                <div class="col-sm-5 registro">
                                    <input type="text" class="form-control" id="nombre"
                                        placeholder="Registra tu nombre de usuario">
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="inputNombreProyecto" class="col-sm-2 col-form-label">Correo:</label>
                                <div class="col-sm-5 registro">
                                    <input type="text" class="form-control" id="correo"
                                        placeholder="Registra tu correo">
                                </div>
                            </div>
                
                            <div class="form-group row">
                                <label for="inputNombreProyecto" class="col-sm-2 col-form-label">Contrasena:</label>
                                <div class="col-sm-5 registro">
                                    <input type="password" class="form-control" id="contrasena"
                                        placeholder="Registra tu contrasena">
                                </div>
                            </div>
                
                
                
                            <div6 class="container">
                
                
                            <div class="casa">
                                <div class="form-group row"display: "inline-block">
                                    <div class="col-sm-7">
                                        <button id="add-user" type="button" class="btn btn-mio"
                                            font-size='8px' ; style='width: 140px; height: 80px'
                                            data-toggle="modal" data-target="#myModal">Registrar</button>
                                    </div>
                                </div>
                            </div6>
                
                    </div>
                
                    </form>
                    
        </div>
         <!--Termina div bienvenido-->
    



    
    </div>
    <br><br><br>
     <!--Termina div que contiene toda la pagina-->


	<!--      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script> -->

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mainCarlos.js"></script>
</body>
</html>