<%@ page language="java" contentType="text/html" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Records</title>
<style>
    table{
        border-collapse: collapse;
        width: 80%;
        position: relative;
        right:50px
    }
    tr{
        height: 50px;
        background-color: white;
    }
    td{
        padding-left: 50px;
    }
     body{
            background-image: url("https://resources.workable.com/wp-content/uploads/2013/07/hr-manager-640x230.jpg");
            background-size: 2500px;
                background-repeat: no-repeat;
        }
</style>
</head>
<body>
			<table border="3" >
				<tr>
                                <th>Employee Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
                                <th>Gender</th>
				<th>Contact</th>
				<th>Address</th>
				<th>Blood group</th>
                                <th>Marital Status</th>
				<th>Email Id</th>
				<th>Designation</th>
				<th>Department</th>
                                 
				</tr>
				
	<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
		PreparedStatement stmt=con.prepareStatement("select * from employeerecords where Age=19");
		ResultSet rs=stmt.executeQuery();
		while(rs.next()){
		%>
                
				<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
                                <td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
                                <td><%=rs.getString(5) %></td>
                                <td><%=rs.getString(6) %></td>
                                <td><%=rs.getString(7) %></td>
                                <td><%=rs.getString(8) %></td>
                                <td><%=rs.getString(9) %></td>
                                <td><%=rs.getString(10) %></td>
                                <td><%=rs.getString(11) %></td>
                                <td><%=rs.getString(12) %></td>
				</tr>
			
		<%	
		}
%></table><%
	}catch(Exception e){ out.println(e); }
	%>
        <button size><a href="adminhome.jsp"> Back </a></button>
</body>
</html>