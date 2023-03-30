import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import ssqqll.DBLoader;
import ssqqll.RDBMStoJSON;
import java.sql.*;


public class MainPageLoad extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String sr = request.getParameter("catname");
        System.out.println(sr);
        try{
            String Srch = new RDBMStoJSON().generateJSON("SELECT * FROM ganges.product where catname like '"+sr+"%' ");
            out.println(Srch);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}