import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import java.sql.*;
import ssqqll.*;

public class adminDelCat extends HttpServlet
{
    @Override 
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        System.out.println("working");
        String catname = request.getParameter("catname");
        System.out.println(catname);
        try
        {
            ResultSet rs= DBLoader.executeQuery("select * from admincategory where catname ='"+catname+"'");
            if(rs.next())
            {
                rs.deleteRow();
                out.println("success");
            }
            else
            {
                out.println("failed");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}