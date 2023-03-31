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
        String pay = request.getParameter("pay");
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
            rs.updateString("payment", pay);
           rs.insertRow();
           int orderid = 0;
           ResultSet rs2 = DBLoader.executeQuery("select MAX(orderid) from ganges.ordertable");
           if(rs2.next())
           {
               orderid = rs2.getInt("MAX(orderid)");
               System.out.println(orderid);
           }
           
           ResultSet rs3 = DBLoader.executeQuery("select * from ganges.carttable where username='"+user+"'");
           while(rs3.next())
           {
               int cartid = rs3.getInt("cartid");System.out.println(cartid+" 1st");
               String us = rs3.getString("username");System.out.println(us+" 1st");
               int TotalPrice = rs3.getInt("TotalPrice");
               int qunt = rs3.getInt("quantity");System.out.println(qunt+" 1st");
               int prdid = rs3.getInt("prdid");System.out.println(prdid+" 1st");
               String price =""; 
               String offerprice = "";
               String pname= "";
               int shopid = 0;
               String shoper="";
               ResultSet rs4 = DBLoader.executeQuery("select * from ganges.product where productid=" + prdid);
                if (rs4.next()) {
                    price = rs4.getString("price");
                    offerprice = rs4.getString("offerPrice");
                    pname = rs4.getString("pname");System.out.println(pname+" 1st");
                    shopid = rs4.getInt("shopidfk");System.out.println(shopid+" 1st");
                    ResultSet rs5 = DBLoader.executeQuery("SELECT * FROM ganges.shoppers where Shopid="+shopid);
                    if(rs5.next())
                    {
                        shoper = rs5.getString("ShopOwner");
                    }
                }
                ResultSet rs6 = DBLoader.executeQuery("SELECT * FROM ganges.orderdetail");
                rs6.moveToInsertRow();
                rs6.updateInt("orderid", orderid);
                rs6.updateInt("productid", prdid);
                rs6.updateString("price", price);
                rs6.updateString("offp", offerprice);
                rs6.updateInt("quant", qunt);
                rs6.updateString("prdname", pname);
                rs6.insertRow();
                ResultSet rs7 = DBLoader.executeQuery("select * from ganges.carttable where cartid=" + cartid);
                if (rs7.next()) {
                    rs7.deleteRow();
                }
           }
           out.println(orderid);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}