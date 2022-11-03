/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Lenovo
 */
public class signinmodel {
    Connection con1=null;
    Statement st=null;
    private static int check=0;
    private static int id=0;
    
    public int getcheck(){
        
        return check;
    }
    
    public void connectionjdbc(String employeeid, String password){
       
        String id1=null;
        String id2=null;
        
    
            try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
            st=con1.createStatement();
           String s="select * from employee where employeeid='"+employeeid+"'";
           
            ResultSet r=st.executeQuery(s);
            while(r.next()){
                id1=r.getString("employeeid");
                /*id=r.getInt("id");*/
                id2=r.getString("password");
                
               
            }
             if(id1.equals(employeeid) && id2.equals(password)){
                    check=1;
                    String s1="insert into currentuser(id) values("+id1+");";
                    st.executeUpdate(s1);

                }
            }
            
            catch(Exception e){
                

            }
           
      
    }
}
