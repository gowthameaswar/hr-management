<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INSERT EMPLOYEE DETAILS</title>
</head>
<style>
    #box{
             height: 250px;
             width:400px;
             margin-left: 40%;
             margin-top: 5%;
             padding-left: 50px;
             background-color: white;
             border-style: double;
     }
     body{
            background-image: url("https://www.insperity.com/wp-content/uploads/Employee_engagement_1200x630-1.png");
            background-size: 2100px;
            background-repeat: no-repeat;
        }
</style>
<body>
	<form action="allocatecheck.jsp">
           <div id="box">
		<p>EmployeeID <input type="text" name="EmployeeID">
		<p>Password <input type="text" name="Password">
		<p><input type="submit" value="Allocate">
           
	</form>
	<form action="adminhome.jsp">
		<p><input type="submit" value="Back">
	</form>
    </div>
</body>
</html>