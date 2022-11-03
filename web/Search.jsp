<?php require_once "controllerUserData.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>

    <style>

    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4 form login-form">
                <form action="searchservlet" method="POST">
                    <h2 class="text-center">Search</h2>
                        
                    <div class="form-group">
                        <input class="form-control" type="text" name="empid" placeholder="Employee ID" >
                    </div>
                   
                    <div class="form-group">
                        <input class="form-control button" type="submit" name="search" value="Search">
                    </div>
				
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>