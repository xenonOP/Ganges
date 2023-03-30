import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import ssqqll.DBLoader;
import ssqqll.RDBMStoJSON;
import java.sql.*;


@MultipartConfig
public class adminCat extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        String catname=request.getParameter("catname");
        System.out.println(catname);
        try
        {
            ResultSet rs = DBLoader.executeQuery("select * from admincategory where catname='"+catname+"'");
            if(rs.next())
            {
                out.println("Failed, Already Exists");
            }
            else
            {
                Part p1 = request.getPart("catphoto");
                String relPath = "myuploads";
                String absPath = getServletContext().getRealPath(relPath);
                String old_name = p1.getSubmittedFileName();
                int pos = old_name.lastIndexOf(".");
                String ext = old_name.substring(pos);
                String new_name= System.currentTimeMillis()+ext;
                String server_name=FileUploader.savefileonserver(p1, absPath, new_name);
                String photo1 = "myuploads/"+server_name;
                rs.moveToInsertRow();
                rs.updateString("catname", catname);
                rs.updateString("photos", photo1);
                rs.updateString("icon", "");
                rs.insertRow();
                out.println("success");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
}