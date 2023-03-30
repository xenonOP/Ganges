import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
import java.io.*;
import ssqqll.*;

public class DelProd extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        int pid = Integer.parseInt(request.getParameter("prdid"));
        try{
            ResultSet rs= DBLoader.executeQuery("SELECT * FROM ganges.product where productid="+pid);
            if(rs.next())
            {
                rs.deleteRow();
                out.println("success");
                System.out.println("success");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}