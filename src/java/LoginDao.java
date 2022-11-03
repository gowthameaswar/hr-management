import java.sql.*; 
public class LoginDao {
     public String authenticateUser(String user, String pass) throws ClassNotFoundException
     {
    	 
         String userName = user; 
         String password = pass;     	 
         String userNameDB = "";
         String passwordDB = ""; 
         try
         {
        	 Class.forName("com.mysql.jdbc.Driver");
     		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
     		 Statement stmt=con.createStatement(); 
             ResultSet rs = stmt.executeQuery("select * from admin"); 
             while(rs.next()) // Until next row is present otherwise it return false
             {
              userNameDB = rs.getString(1); //fetch the values present in database
              passwordDB = rs.getString(2);
 
               if(userName.equals(userNameDB) && password.equals(passwordDB))
               {
                  return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
               }
             }
         }
             catch(SQLException e)
             {
                e.printStackTrace();
             }
         return "Invalid Credentials";
     }
}