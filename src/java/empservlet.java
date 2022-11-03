import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.ResultSet;
import java.sql.Statement;
@WebServlet("/empservlet")
public class empservlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
	try {
       Class.forName("com.mysql.cj.jdbc.Driver");
            
        
        String userName = request.getParameter("empid");
        String password = request.getParameter("pass"); 
        /*LoginBean loginBean = new LoginBean(); 
        loginBean.setUserName(userName); 
        loginBean.setPassword(password);
        LoginDao loginDao = new LoginDao();  */
        EmpDao loginDao= new EmpDao();
        String userValidate = loginDao.authenticateUser(userName, password);  
        if(userValidate.equals("SUCCESS")) 
        {
             request.setAttribute("userName", userName); 
             request.getRequestDispatcher("/empsuccess.html").forward(request, response);
             
             
        }
        else if(userValidate.equals("Invalid Credentials"))
        {
        	request.setAttribute("errMessage", userValidate); 
            request.getRequestDispatcher("/empfail.html").forward(request, response);
        }
        else
        {
            request.setAttribute("errMessage", userValidate); 
            request.getRequestDispatcher("/LoginAdmin.jsp").forward(request, response);
        }
	}
	catch(Exception e) {
		System.out.println(e);
	}
    }
}