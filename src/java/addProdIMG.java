
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.sql.*;
import java.io.*;
import ssqqll.*;
    @MultipartConfig
public class addProdIMG extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        int pid = Integer.parseInt(request.getParameter("prdid"));
        Part p3 = request.getPart("f69");
        String relPath = "myuploads";
        String absPath = getServletContext().getRealPath(relPath);
        String old= p3.getSubmittedFileName();
        int pos = old.lastIndexOf(".");
        String new_name = System.currentTimeMillis()+old.substring(pos);
        String Pic = "myuploads/"+FileUploader.savefileonserver(p3, absPath, new_name);
        try {
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM ganges.productdetail");
            if (rs.next()) {
                rs.moveToInsertRow();
                rs.updateInt("productid", pid);
                rs.updateString("photo",Pic);
                rs.insertRow();
                out.println("success");
            }
            else
            {
                 rs.moveToInsertRow();
                rs.updateInt("productid", pid);
                rs.updateString("photo",Pic);
                rs.insertRow();
                out.println("success");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
