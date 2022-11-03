<%@ page language="java" contentType="text/html" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Records</title>
</head>
<style>
    body{
       
            background-color: gray;
               
                font-family: calibri;
                
    }
    #box{
         height: 350px;
             width:400px;
             margin-left: 40%;
             margin-top: 5%;
             padding-left: 50px;
             border-style: double;
             background-color: white;
             
    }
    
</style>
<body>
    <div id="box">
<%
	String id=request.getParameter("id");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
		PreparedStatement stmt=con.prepareStatement("delete from employeerecords where EmployeeID=?");
		stmt.setString(1,id);
                stmt.executeUpdate();
                out.println("<h1>Employee Records deleted !");
	
		}
	catch(Exception e){ out.println(e); }
	%>
    
	<form action="adminhome.jsp">
            
            <input type="submit" value="Back">
                
	</form>
        </div>
</body>
</html>

