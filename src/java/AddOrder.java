import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import java.sql.*;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import ssqqll.*;
@ MultipartConfig
public class AddOrder extends HttpServlet
{
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/pain");
        PrintWriter out = response.getWriter();
        String FN = request.getParameter("FN");
        String LN = request.getParameter("LN");
        String country = request.getParameter("country");
        String address = request.getParameter("addr");
        String city = request.getParameter("city");
        String State= request.getParameter("state");
        String zip = request.getParameter("zip");
        String phnn = request.getParameter("phn");
        String email = request.getParameter("email");
        try
        {
                    ResultSet rs= DBLoader.executeQuery("Select * from ganges.ordertable where ");
        }
        catch(Exception e)
            
        {
            e.printStackTrace();
        }
    }
}