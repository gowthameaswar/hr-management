<html>
    <head>
        <title>
            Welcome Admin
        </title>
        <style>
            p{
                text-align: center;
                color:white;
                font-family: calibri;
                font-size: 100px;
             }
             
            
           
            body {
                background-image: url("https://wallpaperaccess.com/full/2053097.png");
                background-size: 2500px;
                background-repeat: no-repeat;
           /* background-color: blanchedalmond;*/
           }
            form{
                box-sizing: border-box;
                
                 padding: 25px;
                 border-radius: 3rem;
                 background-color: gray;
                 border: 4px solid hsl(0, 10%, 90%);
                 display: grid;
                 height:700px;
                 width:500px;
                 gap: 2rem;
             }
              .b1{
                 font-family:roboto; 
                 font-size:20px;
                 background-color:pink;
                 border-color: black;
                 color: black;
                 padding: 10px 25px;
                 margin: 2px 2px;
                 cursor: pointer;
}
        </style>
    </head>
    
    <body >
        <p>  Welcome Admin!</p>
        <br><br><br>
    <center>       
        <form>
         <center> <h1><button type="submit" class="b1" formaction="addsalary.jsp">Enter Salary for employees</button></h1>
        <h1><button type="submit" class="b1" formaction="salarydisplay.jsp">Display all Employees Salary</button></h1>
        <h1><button type="submit" class="b1" formaction="salarydelete.jsp">Delete Salary</button></h1>
        <h1><button type="submit" class="b1" formaction="admininsert.jsp">Insert New Records</button></h1>
        <h1><button type="submit" class="b1" formaction="adminupdate.jsp">Update any Record</button></h1>
        <h1><button type="submit" class="b1" formaction="admindelete.jsp">Delete any record</button></h1>
        <h1><button type="submit" class="b1" formaction="admindisplay.jsp">Display all details</button></h1>
        <h1><button type="submit" class="b1" formaction="allocate.jsp">Allocate Employee Credentials</button></h1>
        <h1><button type="submit" class="b1" formaction="LoginAdmin.jsp">Logout</button></h1>
        
        </center>
        </form>
    </center>
    </body>
</html>