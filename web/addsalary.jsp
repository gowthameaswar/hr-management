<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Insert</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        body{
            background-image: url("https://feeds.abplive.com/onecms/images/uploaded-images/2022/07/01/8b5565059198ad32455a11ec6692a0ba_original.jpeg?impolicy=abp_images&imwidth=720");
            background-size: 2500px;
                background-repeat: no-repeat;
        }
        #box{
             height: 150px;
             width:400px;
             margin-left: 40%;
             margin-top: 5%;
             padding-left: 50px;
             background-color: white;
             border-style: double;


     }
     h1{
                text-align: center;
                color:black;
                font-family: calibri;
                font-size: 100px;
             }
    </style>
      <h1>  Add Salary Details</h1>
    <body>
        <form action="jdbc" method="get" >
        <div id="box">
            <p>EmployeeID <input type="text" name="EmployeeID">
            <p>Basic Pay <input type="number" name="Basic_Pay">
            
            <input type="submit">
            <button><a href="adminhome.jsp">Back</a></button>
        </div>
        </form>
    </body>
</html>
