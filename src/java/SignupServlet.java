import java.sql.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import ssqqll.*;

@MultipartConfig
public class SignupServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        String usr = request.getParameter("usr");
        String nme = request.getParameter("nme");
        String email = request.getParameter("email");
        String pss = request.getParameter("pss");
        
        System.out.println("This is uour :"+usr);
        System.out.println("This is pass :"+pss);
        System.out.println("This is name :"+nme);
        System.out.println("This is email :"+ email);
        
        try {
            
            ResultSet rs = DBLoader.executeQuery("select * from new_user where username='" + usr + "'");
            if (rs.next())
            {
                out.println("exists");
            }
            else
            {
                rs.moveToInsertRow();
                rs.updateString("username", usr);
                rs.updateString("name", nme);
                rs.updateString("email", email);
                rs.updateString("password", pss);
                rs.insertRow();
                out.println("success");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
