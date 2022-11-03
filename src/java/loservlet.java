import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.ResultSet;
import java.sql.Statement;
@WebServlet("/loservlet")
public class loservlet extends HttpServlet {
    /*Connection con1=null;
    Statement st=null;*/
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
	try {
      /*  Class.forName("com.mysql.cj.jdbc.Driver");
            
        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt","root","");
        st = con1.createStatement();*/
        String userName = request.getParameter("adminid");
        String password = request.getParameter("pass"); 
        /*LoginBean loginBean = new LoginBean(); 
        loginBean.setUserName(userName); 
        loginBean.setPassword(password);
        LoginDao loginDao = new LoginDao();  */
        LoginDao loginDao= new LoginDao();
        String userValidate = loginDao.authenticateUser(userName, password);  
        if(userValidate.equals("SUCCESS")) 
        {
             request.setAttribute("userName", userName); 
             request.getRequestDispatcher("/success.html").forward(request, response);
          /*   String s1="insert into currentuser(id) values("+userName+");";
             st.executeUpdate(s1);*/
             
        }
        else if(userValidate.equals("Invalid Credentials"))
        {
        	request.setAttribute("errMessage", userValidate); 
            request.getRequestDispatcher("/fail.html").forward(request, response);
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