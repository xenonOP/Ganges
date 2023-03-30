import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
import java.io.*;
import ssqqll.*;

public class DelProIMG extends HttpServlet
{
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
         response.setContentType("text/plain");
         PrintWriter out = response.getWriter();
         int gid = Integer.parseInt(request.getParameter("galid"));
         System.out.println(gid);
         try{
             ResultSet rs= DBLoader.executeQuery("SELECT * FROM ganges.productdetail where Galid="+gid);
             if(rs.next())
             {
                rs.deleteRow();
                out.println("success");
             }
             else
             {
                 out.println("nope");
             }
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
    }
}