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
	<form action="emphome.html">
		<input type="submit" value="Back">
	</form>
        </div>
</body>
</html>