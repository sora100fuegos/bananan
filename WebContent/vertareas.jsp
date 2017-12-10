
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"
    
    
    %>
    
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/styleBanana.css">
        <script src="https://use.fontawesome.com/4f360dff2c.js"></script>
        <title>Dashboard Nuevo Usuario</title>
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



<h3><%=userMail%></h3>
        
        <!--Inicia div que contiene toda la pagina-->
        <div class="container">
            <!--Inicia div del header-->
            <div class="container header">
                <div class="row">
                    <!--Inicia div del boton home-->
                    <div class="col-lg-2">
                        <a href="#">
                            <div class="nav-link" href="#"><i class="fa fa-home fa-3x"  aria-hidden="true" ></i> </div>
                        </a>
                        </div>
                    <!--Fin div del boton home-->

                    <!--Inicio div busqueda-->
                    <div class="col-lg-4">
                        <nav class="navbar navbar-light bg-white">
                            <form class="form-inline">
                                <input class="form-control mr-sm-2" type="text" placeholder="Buscar Proyecto ..." aria-label="Search">
                                <input type=image src="img/search_icon.png" width="30px" height="30px">
                            </form>
                        </nav>
                    </div>
                    
                    
                    <!--Fin div busqueda-->

                    <!--Inicio div logo manzana-->
                    <div class="col-lg-2">
                        <img id="logo" src="img/manzana.png" alt="logo">
                    </div>
                    <!--Fin div logo manzana-->

                    <!--Inicio div icono add-->
                    <div class="col-lg-2">
                        <a href="#">
                            <div class="nav-link" href="#"><i class="fa fa-plus-square fa-3x" aria-hidden="true" href="#">  </i></div>
                        </a>
                        </div>
                    <!--Fin div icono add-->

                    <!--Inicio div icono user-->
                    <div class="col-lg-2" id  =  "nom">
                        <a href="#">
                            <div class="nav-link" href="#">  <i class="fa fa-user fa-3x" aria-hidden="true"   id  ="Usuario" value  = " <%=userName %>"   >  <%=userName %> </i></div>
                        </a>
                        </div>
                    <!--Fin div icono user-->
                </div>
            </div>
            <!--Fin div del header-->

            <!--Inicio div pantalla de agregar-->
            <div class="container">
               <div class="row">
                    <!--inicio div espacio izquierda-->
                    
                     <!--fin div espacio izquierda-->
                    
                    <!--Inicio div ventana de agregar-->
                    <div class="col-lg-4">
                        <div id="agregarNuevo">
                            <p>asignar tarea </p>
                            <br> <br> <br>
                            <a href="http://localhost:8080/Manzana/crear_proyecto.jsp">
                                <i class="fa fa-plus-circle fa-5x" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                    <!--Fin div ventana de agregar-->
                    
                    <!--inicio div espacio derecha-->
                    <div class="col-lg-8"  >
                        <div  class = "row"  id="proyl"  style ="height:300px;   overflow: scroll;" >
                        <h1> tus  proyectos  en los  que participas  </h1>
                        
                        
                          
                        
                        
                          </div>
                        
                        
                           <div  class = "row">
                            <h1> tus  proyectos  en los que administras </h1>
                        
                        
                           </div>
                      
                    </div>
                            
                    </div>
                    <!--fin div espacio derecha-->
                </div>
            </div>
            <!--Fin div pantalla de agregar-->
            
            <!--Inicio div footer-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div id = "footer">
                            
                        </div>
                    </div>
                </div>
            </div>
            <!--Fin div footer-->
        </div>
        <!--Fin div que contiene toda la pagina-->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-3.2.1.min.js"></script>
         <script src="js/Dashboard.js"></script>
    </body>
</html>