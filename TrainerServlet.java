/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author hetpatel
 */
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.sql.*;
    
    @WebServlet("/trainer")
public class TrainerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String sir_name = request.getParameter("sir_name");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String contact1 = request.getParameter("contact1");
        String dob = request.getParameter("dob");

        String ageStr = request.getParameter("age");
        int age = 0;
        if(ageStr != null && !ageStr.trim().isEmpty()){
            age = Integer.parseInt(ageStr);
        }

        String gender = request.getParameter("gender");
        if(gender == null){
            gender = "Not Specified";
        }

        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/nc_fitness", "root", "12345678");

            PreparedStatement ps = con.prepareStatement(
            "INSERT INTO trainer (sir_name, first_name, last_name, dob, contact1, address, age, city, state, email, gender) VALUES (?,?,?,?,?,?,?,?,?,?,?)");

            ps.setString(1, sir_name);
            ps.setString(2, first_name);
            ps.setString(3, last_name);
            ps.setString(4, dob);
            ps.setString(5, contact1);
            ps.setString(6, address);
            ps.setInt(7, age);
            ps.setString(8, city);
            ps.setString(9, state);
            ps.setString(10, email);
            ps.setString(11, gender);

            ps.executeUpdate();

            request.setAttribute("msg", "Trainer Registered Successfully!");
            RequestDispatcher rd = request.getRequestDispatcher("Trainer.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}