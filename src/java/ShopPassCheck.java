import java.sql.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import ssqqll.*;

public class ShopPassCheck extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
       String id= request.getParameter("id");
       String pass = request.getParameter("pass");
       System.out.println(id);
       System.out.println(pass);
        try
        {
            ResultSet rs = DBLoader.executeQuery("select * from ganges.shoppers where Shopid = '"+id+"' and Shoppass = '"+pass+"'");
            if(rs.next())
            {
                System.out.println("success");
                HttpSession session = request.getSession();
                session.setAttribute("shopid", id );
                session.setAttribute("user", rs.getString("ShopOwner"));
                out.println("success");
            }
            else
            {
                System.out.println("false");
                out.println("false");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}