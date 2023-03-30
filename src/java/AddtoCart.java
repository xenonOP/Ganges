import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import ssqqll.*;

@MultipartConfig
public class AddtoCart extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        int pid = Integer.parseInt(request.getParameter("pid"));
        int price = Integer.parseInt(request.getParameter("price"));
        System.out.println(price);
        String usr3 = request.getParameter("user");
         try{
                        ResultSet rd = DBLoader.executeQuery("SELECT * FROM ganges.carttable where prdid="+pid);
                        if(rd.next())
                        {
                            int qunt = rd.getInt("quantity");
                            rd.updateInt("prdid", pid);
                            rd.updateInt("TotalPrice", (price*qunt) );
                            rd.updateString("username", usr3);
                            rd.updateInt("quantity", (qunt+1));
                            rd.updateRow();
                            out.println("success");
                        }
                        else
                        {
                                rd.moveToInsertRow();
                                rd.updateString("username", usr3);
                                rd.updateInt("prdid", pid);
                                rd.updateInt("TotalPrice", price );
                                rd.updateInt("quantity", 1);
                                rd.insertRow();
                                out.println("success");
                        }
                }
                catch(Exception e)
                {
                 e.printStackTrace();
                }
    }
}