<%@ page language="java" contentType="text/html" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Records</title>
</head>
<body>
<%
	String employeeid=request.getParameter("EmployeeID");
	String firstname =request.getParameter("Firstname");
	String lastname=request.getParameter("Lastname");
        String age=request.getParameter("Age");
	String gender =request.getParameter("Gender");
	String contact =request.getParameter("Contact");
        String address =request.getParameter("Address");
	String bloodgroup =request.getParameter("Bloodgroup");
	String maritalstatus=request.getParameter("MaritalStatus");
        String emailid=request.getParameter("EmailId");
	String designation=request.getParameter("Designation");
	String department =request.getParameter("Department");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
		PreparedStatement stmt=con.prepareStatement("select * from employeerecords where EmployeeID=?");
		stmt.setString(1,employeeid);
		ResultSet rs=stmt.executeQuery();			
		if(rs.next()){
                
		String sql="update employeerecords set Firstname=?, Lastname=? Age=? Gender=? Contact=? Address=? Bloodgroup=? MaritalStatus=? EmailId=? Designation=? Department=? where EmployeeID=?";
		PreparedStatement stmt1=con.prepareStatement(sql);
		stmt.setString(1,firstname);
		stmt.setString(2,lastname);
                stmt.setString(3,age);
                stmt.setString(4,gender);
                stmt.setString(5,contact);
                stmt.setString(6,address);
                stmt.setString(7,bloodgroup);
                stmt.setString(8,maritalstatus);
                stmt.setString(9,emailid);
                stmt.setString(10,designation);
                stmt.setString(11,department);
                stmt.setString(12,employeeid);
		stmt1.executeUpdate();
		out.println("<h1> Record updated with new values !");}
		else{
			out.println("<h1> Invalid Employee ID !!!");
		}
		}catch(Exception e){ out.println(e); }
	%>
	<form action="Home
              .jsp">
		<input type="submit" value="Back">
	</form>
</body>
</html>