/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Lenovo
 */
public class newmodel {
    Connection con=null;
    Statement st=null;
     public void connectionjdbc(String name, String password){
    
            try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz?zeroDateTimeBehavior=CONVERT_TO_NULL","root","");
            st=con1.createStatement();
            
            String sql="insert into student(username,password) values('"+name+"','"+password+"')";
            st.executeUpdate(sql);
            }
            catch(Exception e){
                System.out.println(e);
}
            
    }
}
