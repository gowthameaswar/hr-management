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
             height: 550px;
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
	<form action="admininsertcheck.jsp">
           <div id="box">
		<p>EmployeeID <input type="text" name="EmployeeID">
		<p>Firstname <input type="text" name="Firstname">
		<p>Lastname<input type="text" name="Lastname">
                <p>Age <input type="number" name="Age">
		<p>Gender <input type="text" name="Gender">
		<p> Contact <input type="integer" name="Contact">
                <p> Address <input type="text" name="Address">
		<p>Bloodgroup <input type="text" name="Bloodgroup">
                <p> MaritalStatus <input type="text" name="MaritalStatus">
                <p>EmailId <input type="text" name="EmailId">
		<p> Designation <input type="text" name="Designation">
		<p> Department <input type="text" name="Department">
		<p><input type="submit" value="Insert">
           
	</form>
	<form action="adminhome.jsp">
		<p><input type="submit" value="Back">
	</form>
    </div>
</body>
</html>