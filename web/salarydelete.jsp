<%@ page language="java" contentType="text/html" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Records</title>
</head>
<style>
    table{
        border-collapse: collapse;
        width: 80%;
        position: relative;
        right:50px
    }
    tr{
        background-color: white;
        height: 50px;
    }
    td{
        padding-left: 50px;
    }
    body{
            background-image: url("https://coursesxpert.com/wp-content/uploads/2021/03/Human-Resources-HR-Course.jpg");
            background-size: 2000px;
                background-repeat: no-repeat;
                font-family: calibri;
        }
    #box{
             height: 100px;
             width:400px;
             margin-left: 35%;
             margin-top: 4%;
             padding-left: 50px;
             background-color: white;
             border-style: double;
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
        <div id="box">
	<form action="salarydeletecheck.jsp">
		<p>Enter Employee Id to delete salary<input type="text" name="id">
                    <br>
		<input type="submit" value="Delete">
	</form>
	<form action="adminhome.jsp">
		<input type="submit" value="Back">
	</form>
        </div>
</body>
</html>