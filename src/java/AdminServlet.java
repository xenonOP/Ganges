import java.sql.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.net.http.HttpRequest;
import ssqqll.*;

public class AdminServlet extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("usrA1");
        String pss = request.getParameter("pssA1");
        System.out.println(name);
        System.out.println(pss);
        try {
            ResultSet rs = DBLoader.executeQuery("select * from admin");
            String u = "";
            String p = "";
            boolean found1 = true;
            boolean found2 = true;
            while (rs.next()) {
                u = rs.getString("username");
                p = rs.getString("password");
                if (u.equalsIgnoreCase(name)) {
                    found1 = true;
                    if (p.equals(pss)) {
                        found2 = true;
                        break;
                    } else {
                        found2 = false;
                        break;
                    }
                } 
                else
                {
                    found1 = false;
                }
            }
            if (found1 == true && found2 == true) {
                HttpSession session = request.getSession();
                session.setAttribute("user", u);
                out.println("success");
            } else if (found1 == false && found2 == true) {
                out.println("Enter correct username");
            } else if (found2 == false && found1 == true) {
                out.println("Enter correct password");
            } else {
                out.println("Enter Correct Details");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
