
import java.sql.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import ssqqll.*;

@MultipartConfig
public class ShopProducts extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String category = request.getParameter("category1");
        String productname = request.getParameter("productname1");
        String offerprice = request.getParameter("offerprice1");
        String price = request.getParameter("price1");
        String productDesc = request.getParameter("productDesc");
        String Shopperid = request.getParameter("Shopperid");
        System.out.println(category);
        System.out.println(productname);
        System.out.println(offerprice); 
        System.out.println(price);
        Part p2 = request.getPart("F29");

        try {
            ResultSet rs = DBLoader.executeQuery("select * from product where pname='" + productname + "'");
            if (rs.next()) {
                out.println("Already Exists");
                System.out.println("ll");
            } else {
                String relPath = "myuploads";
                String absPath = getServletContext().getRealPath(relPath);
                String old_name = p2.getSubmittedFileName();
                int pos = old_name.lastIndexOf(".");
                String ext = old_name.substring(pos);
                String new_name = System.currentTimeMillis() + ext;
                String server_name = FileUploader.savefileonserver(p2, absPath, new_name);
                String pic = "myuploads/" + server_name;
                rs.moveToInsertRow();
                rs.updateString("pname", productname);
                rs.updateString("catname", category);
                rs.updateString("offerPrice", offerprice);
                rs.updateString("photo", pic);
                rs.updateString("Description", productDesc);
                rs.updateString("price", price);
                rs.updateString("shopidfk",Shopperid);
                rs.insertRow();
               out.println("success");
                System.out.println("null");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
