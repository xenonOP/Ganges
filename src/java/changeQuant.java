import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import java.sql.*;
import ssqqll.*;
@ MultipartConfig
public class changeQuant extends HttpServlet
{
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        System.out.println("working");
        int pid= Integer.parseInt(request.getParameter("pid"));
        int quant = Integer.parseInt(request.getParameter("quant"));
        int tp = Integer.parseInt(request.getParameter("tp"));
        double total = tp*quant;
        System.out.println(pid);
        try
        {
               ResultSet rs = DBLoader.executeQuery("SELECT * FROM ganges.carttable where prdid="+ pid);
               if(rs.next())
               {
                   rs.updateInt("quantity", quant);
                   rs.updateDouble("TotalPrice", total);
                   rs.updateRow();
                   out.println(total); 
               }
         }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}