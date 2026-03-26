/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.sql.*;

@WebServlet("/SignupServlet")   
public class SignupServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        
        UserBean user = new UserBean();
        user.setId(req.getParameter("id"));
        user.setPassword(req.getParameter("password"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO sign_up(id, password) VALUES (?,?)");

            ps.setString(1, user.getId());
            ps.setString(2, user.getPassword());

            int i = ps.executeUpdate();

            if(i > 0){
                res.sendRedirect("Log_in_page.jsp");  
            } else {
                res.getWriter().println("Signup Failed");
            }

            con.close();

        } catch(Exception e){
            e.printStackTrace(); 
            res.getWriter().println("Error: " + e.getMessage());
        }
    }
}