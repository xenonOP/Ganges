import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import java.sql.*;
import ssqqll.*;
@ MultipartConfig
public class prdIMG extends HttpServlet
{
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        System.out.println("working");
        int pid=Integer.parseInt(request.getParameter("pid"));
        System.out.println(pid);
        try
        { 
               String PRDJSON = new RDBMStoJSON().generateJSON("SELECT * FROM ganges.productdetail where productid="+pid);
               out.println(PRDJSON);
             
         }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}