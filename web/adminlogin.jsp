<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" import="java.sql.*"%>
<html><style>
    body{
             height: 250px;
             width:200px;
             margin-left: 40%;
             margin-top: 20%;
             padding-left: 40px;
             font-family: calibri;
             border-style: double;
    }
    </style><body>
    <%
        String adminid=request.getParameter("adminid");
        String pass = request.getParameter("pass");
        String userNameDB ="";
        String passwordDB ="";
        try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt?zeroDateTimeBehavior=CONVERT_TO_NULL","root","");
    PreparedStatement stmt = con.prepareStatement("select * from admin");
   
    ResultSet rs = stmt.executeQuery();
    while(rs.next()) // Until next row is present otherwise it return false
             {
              userNameDB = rs.getString(1); //fetch the values present in database
              passwordDB = rs.getString(2);
 
               if(adminid.equals(userNameDB) && pass.equals(passwordDB))
               {
                  out.println("<h1>Login Successful!</h1>"); ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                  out.println("<button><a href='adminhome.html'>Continue</a></button>");
               }
               else{
                   out.println("<h1>Invalid Credentials! <br> Please verify and Login again!!</h1>");
                   out.println("<button><a href='cssadmin.html'>Login again</a></button>");
               }
             }
    %>
        <%
    }
        catch(Exception e){out.println(e);}
   %>
    </body>
</html>
