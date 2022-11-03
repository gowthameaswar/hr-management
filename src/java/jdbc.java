/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Statement;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.annotation.WebServlet;


/**
 *
 * @author Lenovo
 */
@WebServlet(name = "jdbc", urlPatterns = {"/jdbc"})
public class jdbc extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             
            try{
            String employeeid=request.getParameter("EmployeeID");
            int bp=Integer.parseInt(request.getParameter("Basic_Pay"));
            double hra= 0.1*bp;
            double da=0.06*bp;
            double ma=0.05*bp;
            double tax=0.15*bp;
            double od=0.05*bp;
            double gross=bp+hra+da+ma-tax-od;
            Connection con=null;
            Statement st=null;
            ResultSet rs=null;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmgmt?zeroDateTimeBehavior=CONVERT_TO_NULL","root","");
            st=con.createStatement();
            String sql="insert into salary(EmployeeID,Basic_Pay,HRA,DA,MA,Tax_Deductions,Other_Deductions,Gross_Salary) values('"+employeeid+"',"+bp+","+hra+","+da+","+ma+","+tax+","+od+","+gross+")";
            st.executeUpdate(sql); 
            }
            catch(Exception e){
                out.println(e);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet jdbc</title>");
            out.println("<style>");
            out.println("a{");
            out.println("text-decoration:None");
            
            out.println("}");
            out.println("body{");
            out.println("height: 350px;");
            out.println("width:400px;");
            out.println("margin-left: 40%;");
            out.println("margin-top: 5%;");
            out.println("padding-left: 50px;");
            out.println("border-style: double;");
            out.println("}");
            out.println("</style>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Inserted Successfully</h1>");
            out.println("<button><a href='addsalary.jsp'>Home Page</a></button>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e){
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}