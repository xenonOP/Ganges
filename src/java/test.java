

import jakarta.servlet.annotation.MultipartConfig;
import java.io.*;


import jakarta.servlet.http.*;

@MultipartConfig
public class test extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  {
         try{
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("shopidFinal");
        String name = request.getParameter("shopnameFinal");
        String phnno = request.getParameter("phnnoFinal");
        String owner = request.getParameter("shopownerFinal");
        String mail = request.getParameter("shopemailFinal");
        String Country = request.getParameter("CountryFinal");
        String address = request.getParameter("addressFinal");
        String pass = request.getParameter("FIRSTShoppassFinal");
        System.out.println(id);
        System.out.println(name);
        System.out.println(phnno);
        System.out.println(owner);

//     
// 
//        Part p1 = request.getPart("F1");
//        String relPath = "myuploads";
//        String absPath = getServletContext().getRealPath(relPath);
//        String old_name = p1.getSubmittedFileName();
//        int pos = old_name.lastIndexOf(".");
//        String ext = old_name.substring(pos);
//        String new_name = System.currentTimeMillis() + ext;
//        String server_name = FileUploader.savefileonserver(p1, absPath, new_name);
        out.println("success");
 }
 catch(Exception ex)
 {
     ex.printStackTrace();
 }
    }
}
