import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import ssqqll.DBLoader;
import ssqqll.RDBMStoJSON;
import java.sql.*;


@MultipartConfig
public class shopsload extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        
        try{
            String ShopJson = new RDBMStoJSON().generateJSON("select * from shoppers");
            out.println(ShopJson);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
}