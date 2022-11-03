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
	String firstname =request.getParameter("Firstname");
	String lastname=request.getParameter("Lastname");
        String  age=request.getParameter("Age");
	String gender =request.getParameter("Gender");
	String contact =request.getParameter("Contact");
        String address =request.getParameter("Address");
	String bloodgroup =request.getParameter("Bloodgroup");
	String  maritalstatus=request.getParameter("MaritalStatus");
        String  emailid=request.getParameter("EmailId");
	String  designation=request.getParameter("Designation");
	String department =request.getParameter("Department");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
		PreparedStatement stmt=con.prepareStatement("insert into employeerecords(EmployeeID,Firstname,Lastname,Age,Gender,Contact,Address,Bloodgroup,MaritalStatus,EmailId,Designation,Department) values(?,?,?,?,?,?,?,?,?,?,?,?)");
		stmt.setString(1,employeeid);
		stmt.setString(2,firstname);
		stmt.setString(3,lastname);
                stmt.setString(4,age);
                stmt.setString(5,gender);
                stmt.setString(6,contact);
                stmt.setString(7,address);
                stmt.setString(8,bloodgroup);
                stmt.setString(9,maritalstatus);
                stmt.setString(10,emailid);
                stmt.setString(11,designation);
                stmt.setString(12,department);
               
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
			<jsp:include page="admininsert.jsp"></jsp:include>
			<%
		}
	}catch(Exception e){ out.println(e); }
	%>
</body>
</html>