

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

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import Clases.JSONPost;

/**
 * Servlet implementation class obtenerproy
 */
@WebServlet("/obtenerproy")
public class obtenerproy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public obtenerproy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
				
				String jsonResult = "{\"correo\":\"error\",\"contrasena\":\"error\"}";  //status:
				  HttpSession session = request.getSession();
				Connection con = conectarAMySQL();
				
				if(con != null)
				{
					//System.out.println("Estoy conectado");
					
					JsonObject jo = JSONPost.getJsonObject(request.getReader());
					String correou=jo.get("user").getAsString();
					
					

					
					//
					
					System.out.println(correou);
					//System.out.println(contenido);
					
					String query = "select * from proyecto  where lider_proyecto  LIKE   '%"+correou+"%'  OR  miembros like '%"+correou+"'   ORDER BY idproyecto  DESC";
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
						
						
						 JsonArray arreglo = new JsonArray();
						 //  en este  caso lo  que hara este metodo es  recorrer  la base de datso 
						 // y cada  objeto lo  metera  en un  arreglo con esa  clase de objetos
						while (rs.next())
							
							
				{
							 JsonObject objproy = new JsonObject();
							
		           
							String rsnombrep = rs.getString("nombreproyecto");
							String id = rs.getString("idproyecto");
							

							objproy.addProperty("proyectos", rsnombrep);
							objproy.addProperty("proyectos", id);
							
							arreglo.add(objproy);
							
							
							System.out.println("los  proyectos  que tiene el usuario son"+rsnombrep);

							//String rscorreo = rs.getString("correo");
							
							
							
						 jsonResult = "{" + 
								                "\"result\":\"" + 1 +"\"" + ","+
								                "\"correo\":\"" + rsnombrep +"\"" +
								            //  "\"result\":\"" +1 +"\"" +
								                "}";
						 
						 
						   
						 
						 
						 
				}
						
						
						
						 jsonResult = arreglo.toString();
						 
						  con.close();
			                stmt.close();
			              rs.close();
						 System.out.println(jsonResult);
						
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					

				}
				
				 
				//Escribir el JSON
				try(PrintWriter out = response.getWriter()){
					//out.print("{\"dato\": \"No que no entrabas\"}");
					out.print(jsonResult);
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



