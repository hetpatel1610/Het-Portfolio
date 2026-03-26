/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.sql.*;

@WebServlet("/deleteTrainer")
public class DeleteTrainerServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");

        try {
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM trainer WHERE email=?");

            ps.setString(1, email);

            ps.executeUpdate();

            response.sendRedirect("trainer.jsp");

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}