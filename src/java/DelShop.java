import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import java.sql.*;
import ssqqll.*;
public class DelShop extends HttpServlet
{
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        String Shopid = request.getParameter("Shopid");
        System.out.println(Shopid+"------Shopid");
        try
        {
            ResultSet rs= DBLoader.executeQuery("select * from shoppers where Shopid ='"+Shopid+"'");
            if(rs.next())
            {
                rs.updateString("shopstatus", "pending");
                rs.updateRow();
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