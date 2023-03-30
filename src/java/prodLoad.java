import jakarta.servlet.*;
import java.io.*;
import jakarta.servlet.http.*;
import java.sql.*;
import ssqqll.*;


public class prodLoad extends HttpServlet
{
    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    
    {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        try{
            
          String ProdJson = new RDBMStoJSON().generateJSON("SELECT * FROM ganges.product");
          out.println(ProdJson);
            System.out.println(ProdJson);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}