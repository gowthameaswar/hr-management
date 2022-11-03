<%@ page language="java" contentType="text/html" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update any Records</title>
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
    #box{
             height: 600px;
             width:400px;
             margin-left: 35%;
             margin-top: 4%;
             padding-left: 50px;
             background-color: white;
             border-style: double;
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
</style>
<body>
	<table border="3">
		<tr>
		<th>Employee Id
                <th>First Name
                <th>Last Name
                <th>Age
                <th>Gender
                <th>Contact
                <th>Address
                <th>Blood group
                <th>Marital Status
                <th>Email Id
                <th>Designation
                <th>Department
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
				<td><%=rs.getString(1) %>
				<td><%=rs.getString(2) %>
				<td><%=rs.getString(3) %>
                                <td><%=rs.getString(4) %>
                                <td><%=rs.getString(5) %>
                                <td><%=rs.getString(6) %>
                                <td><%=rs.getString(7) %>
                                <td><%=rs.getString(8) %>
                                <td><%=rs.getString(9) %>
                                <td><%=rs.getString(10) %>
                                <td><%=rs.getString(11) %>
                                <td><%=rs.getString(12) %>
				</tr>
			
		<%	
                    
		}
%></table><%
	}catch(Exception e){ out.println(e); }
	%>
	<form action="#">
           <div id="box">
            <h2>Enter new details to be updated:</h2>
		<p>EmployeeID <input type="text" name="EmployeeID">
		<p>Firstname <input type="text" name="Firstname">
		<p>Lastname<input type="text" name="Lastname">
                <p>Age <input type="text" name="Age">
		<p>Gender<input type="text" name="Gender">
		<p>Contact<input type="text" name="Contact">
                <p>Address<input type="text" name="Address">
		<p>Bloodgroup<input type="text" name="Bloodgroup">
                <p>MaritalStatus<input type="text" name="MaritalStatus">
                <p>EmailId<input type="text" name="EmailId">
		<p>Designation<input type="text" name="Designation">
		<p> Department<input type="text" name="Department">
		<p><button type="submit" class="b1" formaction="display.jsp">Update</button></h1>
           
	</form>
	<form action="adminhome.jsp">
		<input type="submit" value="Back">
	</form>
        </div>
</body>
</html>