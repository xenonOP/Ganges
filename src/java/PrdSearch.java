import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;
import ssqqll.*;


public class PrdSearch extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String sr = request.getParameter("prdSerch");
        try{
            String Srch = new RDBMStoJSON().generateJSON("SELECT * FROM ganges.product where pname like '"+sr+"%' ");
            out.println(Srch);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}