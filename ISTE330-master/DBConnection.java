import java.sql.*;

public class DBConnection{

   public static void main(String [] args){
       String uri = "jdbc:mysql://localhost/esportsScheduler?autoReconnect=true&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
       String driver = "com.mysql.cj.jdbc.Driver";
       String user = "root";
       String password = "student";
       
       Connection conn = null;
   
      try{
         Class.forName (driver);
         System.out.println("Driver Loaded");
      }
      catch(ClassNotFoundException cnfe){
         System.out.println("Could not load driver");
         cnfe.printStackTrace();
         System.exit(1);
      }
      try{
         conn = DriverManager.getConnection( uri,user,password );
         System.out.println("Database Open");
      }
      catch(SQLException sqle){
      System.out.println("Could not connect to the database " + uri);
      sqle.printStackTrace();
      System.exit(2);
      }
      try{
         conn.close();
         System.out.println("Database Closed");
      }
      catch(SQLException sqle){
         System.out.println("Could not close database");
         sqle.printStackTrace();
         System.exit(3);
      }
   }
}