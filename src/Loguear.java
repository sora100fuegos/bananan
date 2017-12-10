

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import Clases.JSONPost;

/**
 * Servlet implementation class BuscarUsuario
 */
@WebServlet("/Loguear")
public class Loguear extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loguear() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
    String usuariof  ="";
    String  correof="";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("application/json");
			
			String jsonResult = "{\"correo\":\"error\",\"contrasena\":\"error\"}";  //status:
			  HttpSession session = request.getSession();
			Connection con = conectarAMySQL();
			
			
			if(con != null)
			{
				//System.out.println("Estoy conectado");
				
				//JsonObject jo = JSONPost.getJsonObject(request.getReader());
				//String correo=jo.get("correo").getAsString();
				//String contrasena=jo.get("contrasena").getAsString();
               
				String user = request.getParameter("correologin"); 
				String pwd = request.getParameter("contrasenalogin");
				
				System.out.println(user);
				//System.out.println(contenido);
				
				String query = "select * from usuarios where correo='"+user+"' && contrasena='"+pwd+"'";
				System.out.println(query);
				
				try {
					
					//Consulta
					Statement stmt = (Statement) con.createStatement();
					/*ResultSet rs = (ResultSet) stmt.executeQuery("");
					while(rs.next())
					{
						rs.getString("");
					}*/
					
					//Insercion
					//stmt.executeUpdate(query);
					
					
					//String queryId = "SELECT * FROM proyecto ORDER BY idproyecto DESC LIMIT 1";
					
					ResultSet rs = (ResultSet) stmt.executeQuery(query);
					System.out.println(rs);
					if(rs.next())
					{  
						
						String rsnombre = rs.getString("nombre");
						String rsCorreo = rs.getString("correo");
						String rsContrasena = rs.getString("contrasena");
						
						usuariof =rsnombre;
						
					correof  = rsCorreo;
						
						System.out.println(usuariof);
						
					 jsonResult = "{" + 
							                "\"correo\":\"" + rsCorreo +"\"" + ","+
							                "\"contrasena\":\"" + rsContrasena +"\"" +
		
							                "}";
					 
					 Cookie loginCookie = new Cookie("user",usuariof);
					 
					 
					 Cookie loginCookie2 = new Cookie("mail",correof);
					 
					 
					
						//setting cookie to expiry in 30 mins
						loginCookie.setMaxAge(30*60);
						response.addCookie(loginCookie);
						
						
						
						loginCookie2.setMaxAge(30*60);
						response.addCookie(loginCookie2);
						
						
						
						response.sendRedirect("dashboardNuevo.jsp");
						
					
					}
					
					else
						
						
						
					{
						System.out.println("esta  correcto");
						session.setAttribute("getAlert", "uuario  no   existe o el correo es  incorrecto");
					     
						response.sendRedirect("pruebas1.jsp");
						
						
					}
					 //System.out.println(jsonResult);
					
					
					//Escribir el JSON
					con.close();
				    
				    
				   
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				

			}
			
			 
			
			
			
	
	}
	
	 public Connection conectarAMySQL()
	    {
	        Connection conn1 = null;
	        try{
	            Class.forName("com.mysql.jdbc.Driver").newInstance();
	            conn1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/manzana","root","100fuegos");
	            
	           
	            
	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (InstantiationException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (IllegalAccessException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return conn1;
	    }

}
