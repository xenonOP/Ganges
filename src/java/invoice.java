
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import java.sql.*;
import java.util.StringTokenizer;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;import org.json.simple.parser.JSONParser;
import ssqqll.*;

public class invoice extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        int orderid = Integer.parseInt(request.getParameter("orderid"));
        System.out.println(orderid);
        JSONObject obj2= new JSONObject();
      JSONArray jsonarray = new JSONArray();
        try {
               String str = new RDBMStoJSON().generateJSON("SELECT * FROM ganges.orderdetail where orderid=" + orderid);
               JSONParser parser = new JSONParser();  
               JSONObject json = (JSONObject) parser.parse(str);  
            ResultSet rs2 = DBLoader.executeQuery("SELECT * FROM ganges.ordertable where orderid=" + orderid);
            if (rs2.next()) {
                String name = rs2.getString("FirstN");
                String last = rs2.getString("LastN");
                String addr = rs2.getString("deladdress");
                String city = rs2.getString("city");
                String phn = rs2.getString("phone");
                obj2.put("first", name);
                obj2.put("last", last);
                obj2.put("addr", addr);
                obj2.put("city", city);
               obj2.put("phn", phn);
            }
            jsonarray.add(obj2);
            json.put("ans2", jsonarray);
            //out.println(str );
     out.println(json.toJSONString());
//            System.out.println(mainobj.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
