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


public class Checkout extends HttpServlet
{
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("application/json");
       PrintWriter out =response.getWriter();
       String username= request.getParameter("user");
        System.out.println(username);
       try{
       String ord = new RDBMStoJSON().generateJSON("select * from ganges.carttable INNER JOIN ganges.product ON carttable.prdid=product.productid where carttable.username=\'"+username+"\' ");
           out.println(ord);
           System.out.println(ord);
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
    }
}