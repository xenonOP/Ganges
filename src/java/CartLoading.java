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


public class CartLoading extends HttpServlet
{
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/plain");
       PrintWriter out =response.getWriter();
       String user = request.getParameter("user");
        JSONObject mainobj = new JSONObject();
        JSONArray jsonarray = new JSONArray();
        System.out.println(user);
       try{
           ResultSet rs = DBLoader.executeQuery("SELECT * FROM ganges.carttable where username ='"+user+"'");
           while(rs.next())
           {
                JSONObject obj = new JSONObject();
                int prdid = rs.getInt("prdid");
                String usr = rs.getString("username");
                int qunt = rs.getInt("quantity");
                //System.out.println(prdid); System.out.println(usr);
                obj.put("prdid", prdid);
                obj.put("user", usr);   
                obj.put("quant", qunt);
                //System.out.println(obj);
                ResultSet rs1 = DBLoader.executeQuery("Select * from ganges.product where productid="+prdid);
                if(rs1.next())
                {
                    String prodName = rs1.getString("pname");
                    String prdDesc = rs1.getString("Description");
                    StringTokenizer st = new StringTokenizer(prdDesc,".");
                    String prdDesc1= st.nextToken();
                    String pic = rs1.getString("photo");
                    String offerprice = rs1.getString("offerPrice");
                    String price = rs1.getString("price");
                    //System.out.println(prodName); System.out.println(prdDesc1); System.out.println(offerprice);
                    obj.put("prdname", prodName);
                    obj.put("Desc", prdDesc1);
                    obj.put("photo",pic);
                    obj.put("ofPrice", offerprice);
                    obj.put("price", price);
                   // System.out.println(obj);
                }
                jsonarray.add(obj);
              //  System.out.println(jsonarray);
           }
           mainobj.put("ans", jsonarray);
           out.print(mainobj.toJSONString());
          // System.out.println(mainobj);
       }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
 