package ssqqll;

import java.sql.*;
public class DBLoader  
{
    public static ResultSet executeQuery (String sql) throws Exception
    {
         Class.forName("com.mysql.jdbc.Driver");
         System.out.println("Driver Loading Done Done");
         Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ganges", "root", "system");
         System.out.println("Connection Established");
         Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
         ResultSet rs = stmt.executeQuery(sql);
         System.out.println("ResultSet Created");
         return rs;
    }
}
