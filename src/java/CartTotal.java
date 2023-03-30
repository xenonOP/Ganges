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
public class CartTotal extends HttpServlet
{
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        System.out.println("working");
       String user=request.getParameter("user");
        System.out.println(user);
        JSONObject mainobj = new JSONObject();
        JSONArray jsonarray = new JSONArray();
        try
        {
               ResultSet rs = DBLoader.executeQuery("SELECT * FROM ganges.carttable where username='"+user+"'");
               while(rs.next())
               {
                   JSONObject obj = new JSONObject();
                   
                   int total = rs.getInt("TotalPrice");
                   System.out.println(total);
                   int Price = (int)(total*12)/100+total;
                   obj.put("total", total);
                   obj.put("Price", Price);
                  
                    jsonarray.add(obj);
               }
               mainobj.put("ans", jsonarray);
           out.print(mainobj.toJSONString());
            System.out.println(mainobj.toJSONString());
         }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}