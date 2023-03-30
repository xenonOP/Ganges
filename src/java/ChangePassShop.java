import java.sql.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import ssqqll.*;

public class ChangePassShop extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
       String Shopid = request.getParameter("shopidid");
       String pass1= request.getParameter("newpasss");
       System.out.println(Shopid);
       System.out.println(pass1);
        try
        {
            ResultSet rs= DBLoader.executeQuery("select * from ganges.shoppers where Shopid ='"+Shopid+"'");
            if(rs.next())
            {
                rs.updateString("Shoppass", pass1);
                rs.updateRow();
                out.println("success");
            }
            else
            {
                out.println("false");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}