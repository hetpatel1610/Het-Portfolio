/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.sql.*;

@WebServlet("/PTMemberServlet")
public class PTMemberServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        response.setContentType("text/html");

        try {

            // 🔹 Get all form data
            String sir_name = request.getParameter("sir_name");
            String first_name = request.getParameter("first_name");
            String email = request.getParameter("email");
            String contact1 = request.getParameter("contact1");
            String whatsapp = request.getParameter("whatsapp");
            String dob = request.getParameter("dob");
            int age = Integer.parseInt(request.getParameter("age"));
            String price = request.getParameter("price");
            String gender = request.getParameter("gender");
            String first_time = request.getParameter("first_time");
            String address2 = request.getParameter("address2");
            String city = request.getParameter("city");
            int weight = Integer.parseInt(request.getParameter("weight"));
            int height = Integer.parseInt(request.getParameter("height"));
            String issue = request.getParameter("issue");
            String detail = request.getParameter("detail");

            // 🔹 Load Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 🔹 Create Connection
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/nc_fitness","root","12345678"
            );

            // 🔹 Insert Query (SAFE with column names)
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO pt_members " +
                "(sir_name, first_name, email, contact1, whatsapp, dob, age, price, gender, first_time, address2, city, weight, height, issue, detail) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
            );

            ps.setString(1, sir_name);
            ps.setString(2, first_name);
            ps.setString(3, email);
            ps.setString(4, contact1);
            ps.setString(5, whatsapp);
            ps.setString(6, dob);
            ps.setInt(7, age);
            ps.setString(8, price);
            ps.setString(9, gender);
            ps.setString(10, first_time);
            ps.setString(11, address2);
            ps.setString(12, city);
            ps.setInt(13, weight);
            ps.setInt(14, height);
            ps.setString(15, issue);
            ps.setString(16, detail);

            int i = ps.executeUpdate();

            // 🔹 Redirect after success
            if (i > 0) {
                response.sendRedirect("PT_Member.jsp?msg=Data Stored Successfully");
            } else {
                response.sendRedirect("PT_Member.jsp?msg=Error inserting data");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e);
        }
    }
}