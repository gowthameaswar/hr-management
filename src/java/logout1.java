
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Smart
 */
public class logout1 {
    public void connection(){
        try{
             Class.forName("com.mysql.jdbc.Driver");
     		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
     		 Statement st=con.createStatement(); 
             st=con.createStatement();
            String sql2="Truncate table currentuser";
            st.executeUpdate(sql2);
        }
        catch(Exception e){
        
    }
    }
    
}
