import java.sql.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import java.util.ArrayList;
import org.apache.catalina.Server;

import jakarta.servlet.http.*;
import ssqqll.DBLoader;

@MultipartConfig
public class DispImg extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("idd");
        String name = request.getParameter("named");
        String phnno = request.getParameter("phnd");
        String owner = request.getParameter("ownerd");
        String mail = request.getParameter("maild");
        String address = request.getParameter("addrd");
        String Country= request.getParameter("Countryd");
        String pass= request.getParameter("passd");
        Part p1 = request.getPart("f33");
        String relPath = "myuploads";
        String absPath = getServletContext().getRealPath(relPath);
        String old_name = p1.getSubmittedFileName();
        int pos = old_name.lastIndexOf(".");
        String ext = old_name.substring(pos);
        String new_name = System.currentTimeMillis() + ext;
        String server_name = FileUploader.savefileonserver(p1, absPath, new_name);
         String pic = "myuploads/"+server_name;
        
            try{
                ResultSet rs = DBLoader.executeQuery("select * from ganges.shoppers where Shopid ='"+id+"'");
                if(rs.next())
                {
                    out.println("failed");
                }
                else
                {
                    rs.moveToInsertRow();
                    rs.updateString("Shopid", id);
                    rs.updateString("Shopname", name);
                    rs.updateString("ShopOwner", owner);
                    rs.updateString("ShopEmail", mail);
                    rs.updateString("phnno", phnno);
                    rs.updateString("shopaddress", address);
                    rs.updateString("shopcity", Country);
                    rs.updateString("shopphoto", pic);
                    rs.updateString("shopstatus","pending");
                    rs.updateString("Shoppass", pass);
                    rs.insertRow();
                    out.println("success");
                }
            }catch(Exception e)
            {
                e.printStackTrace();
            }
 
    }
}
