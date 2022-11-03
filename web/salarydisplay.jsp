<%@ page language="java" contentType="text/html" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Records</title>
</head>
<style>
    table{
        border-collapse: collapse;
        width: 80%;
        position: relative;
        right:50px;
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
            background-size: 3000px;
                background-repeat: no-repeat;
        }
        
</style>
<body>
			<table border="2">
				<tr>
				<th>Employee Id
				<th>Basic Pay
				<th>HRA
				<th>DA
                                <th>MA
				<th>Tax
				<th>Other Deductions
				<th>Gross Pay
                                 
				</tr>
				
	<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
		PreparedStatement stmt=con.prepareStatement("select * from salary");
		ResultSet rs=stmt.executeQuery();
		while(rs.next()){
		%>
			
				<tr>
				<td><%=rs.getString(1) %>
				<td><%=rs.getString(2) %>
				<td><%=rs.getString(3) %>
				<td><%=rs.getString(4) %>
                                <td><%=rs.getString(5) %>
                                <td><%=rs.getString(6) %>
                                <td><%=rs.getString(7) %>
                                <td><%=rs.getString(8) %>
				</tr>
			
		<%	
		}
%></table><%
	}catch(Exception e){ out.println(e); }
	%>
	<form action="adminhome.jsp">
		<input type="submit" value="Back">
	</form>
</body>
</html>