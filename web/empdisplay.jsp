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
    #box{
             height: 550px;
             width:400px;
             margin-left: 40%;
             margin-top: 5%;
             padding-left: 50px;
             background-color: white;
             border-style: double;
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
            String id=null;
	try{
          
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
                Statement stmt1=con.createStatement();
		
                String sql2="select * from currentuser";
                ResultSet rs1=stmt1.executeQuery(sql2);
                
                while(rs1.next()){
                    id=rs1.getString("id");
                }
                String sql3="select * from salary where EmployeeID='"+id+"'";
               // PreparedStatement stmt=con.prepareStatement("select * from salary where EmployeeID='"+id+"'");
		ResultSet rs=stmt1.executeQuery(sql3);
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
	}catch(Exception e){ 

out.println(e); }
	%>
	<form action="emphome.html">
		<input type="submit" value="Back">
	</form>
</body>
</html>