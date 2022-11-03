<%@ page language="java" contentType="text/html" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Records</title>
</head>
<style>
    body{
         height: 350px;
             width:400px;
             margin-left: 40%;
             margin-top: 5%;
             padding-left: 50px;

             border-style: double;
    }
</style>
<body>
	<%String employeeid=request.getParameter("EmployeeID");
	String password =request.getParameter("Password");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
		PreparedStatement stmt=con.prepareStatement("insert into employee(employeeid,password) values(?,?)");
		stmt.setString(1,employeeid);
		stmt.setString(2, password);
		
               
		int row=stmt.executeUpdate();
		if(row==1){
			out.println("<h1> Successfully inserted !!");
		%>
		<form action="adminhome.jsp">
			<input type="submit" value="Back">
		</form>
		<%
		}
		else{
			out.println("<h1> Failed to insert !!");
			%>
			<jsp:include page="allocate.jsp"></jsp:include>
			<%
		}
	}catch(Exception e){ out.println(e); }
	%>
</body>
</html>