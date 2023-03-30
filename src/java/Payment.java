import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import java.sql.*;
import java.util.StringTokenizer;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import ssqqll.*;

@MultipartConfig
public class Payment extends HttpServlet
{
    @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        String fn = request.getParameter("FN");
        String ln = request.getParameter("LN");
        String country = request.getParameter("country");
        String address = request.getParameter("addr");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String zip = request.getParameter("zip");
        String total= request.getParameter("total");
        String phn= request.getParameter("phn");
        String user  = request.getParameter("user");
        String email = request.getParameter("email");
        System.out.println(fn);
        System.out.println(ln);
        System.out.println(address);
        System.out.println(user);
        try{
            ResultSet rs = DBLoader.executeQuery("select * from ganges.ordertable where username='"+user+"'");
            rs.moveToInsertRow();
            rs.updateString("username", user);
            rs.updateString("deladdress", address);
            rs.updateString("city", city);
            rs.updateString("phone", phn);
            rs.updateString("email", email);
            rs.updateString("country", country); 
            rs.updateString("FirstN", fn);
            rs.updateString("LastN", ln);
            rs.updateString("zip", zip);
           rs.insertRow();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}