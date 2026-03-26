/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.sql.*;

@WebServlet("/GymStaffServlet")
public class Gym_staff_servlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get data from form
        Gym_staff_Bean staff = new Gym_staff_Bean();

        staff.setFirst_name(request.getParameter("first_name"));
        staff.setLast_name(request.getParameter("last_name"));
        staff.setEmail(request.getParameter("email"));
        staff.setContact1(request.getParameter("contact1"));
        staff.setContact2(request.getParameter("contact2"));
        staff.setType(request.getParameter("type"));
        staff.setDetail(request.getParameter("detail"));

        try {
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/nc_fitness","root","12345678"
            );

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO gym_staff(first_name,last_name,email,contact1,contact2,type,detail) VALUES(?,?,?,?,?,?,?)"
            );

            ps.setString(1, staff.getFirst_name());
            ps.setString(2, staff.getLast_name());
            ps.setString(3, staff.getEmail());
            ps.setString(4, staff.getContact1());
            ps.setString(5, staff.getContact2());
            ps.setString(6, staff.getType());
            ps.setString(7, staff.getDetail());

            int i = ps.executeUpdate();

            if (i > 0) {
                response.sendRedirect("Gym_staff_Registration.jsp?msg=Registered Successfully");
            } else {
                response.sendRedirect("Gym_staff_Registration.jsp?msg=Failed");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e);
        }
    }
}