
package ssqqll;
import java.sql.*;
import org.json.simple.*;

public class RDBMStoJSON {
    public String generateJSON(String SqlStatement)
    {
        String JSONans = "";
        try{
            ResultSet rs = DBLoader.executeQuery(SqlStatement);
            System.out.println("Result Set Created");
            
            ResultSetMetaData rsmd = rs.getMetaData();
            
            int n = rsmd.getColumnCount();
            
            JSONObject ansobj = new JSONObject();
            
            //Define JSON array
            JSONArray jsonArray = new JSONArray();
            
            ansobj.put("ans", jsonArray);
            
            while(rs.next())
            {
                JSONObject singlerow = new JSONObject();
                for(int j =1; j<=n; j++)
                {
                    String clname = rsmd.getColumnLabel(j);
                    //fill data in single row object
                    singlerow.put(clname, rs.getString(clname));
                }
                //add single object in array
                jsonArray.add(singlerow);
            }
            return ansobj.toJSONString();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return JSONans;
    }
}
