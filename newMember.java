/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/newMember")
public class newMember extends HttpServlet {

protected void doPost(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {

try{

Connection con = DataBaseConnection.getConnection();

String sql="INSERT INTO members(sir_name,first_name,last_name,email,contact1,contact2,whatsapp,dob,age,blood_group,gender,first_time,address1,address2,city,state,weight,height) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

PreparedStatement ps = con.prepareStatement(sql);

ps.setString(1,request.getParameter("sir_name"));
ps.setString(2,request.getParameter("first_name"));
ps.setString(3,request.getParameter("last_name"));
ps.setString(4,request.getParameter("email"));
ps.setString(5,request.getParameter("contact1"));
ps.setString(6,request.getParameter("contact2"));
ps.setString(7,request.getParameter("whatsapp"));
ps.setString(8,request.getParameter("dob"));
ps.setInt(9,Integer.parseInt(request.getParameter("age")));
ps.setString(10,request.getParameter("blood_group"));
ps.setString(11,request.getParameter("gender"));
ps.setString(12,request.getParameter("first_time"));
ps.setString(13,request.getParameter("address1"));
ps.setString(14,request.getParameter("address2"));
ps.setString(15,request.getParameter("city"));
ps.setString(16,request.getParameter("state"));
ps.setInt(17,Integer.parseInt(request.getParameter("weight")));
ps.setInt(18,Integer.parseInt(request.getParameter("height")));



/* success message */

request.setAttribute("msg","Data Stored Successfully!");

request.getRequestDispatcher("New_Members.jsp").forward(request,response);

}catch(Exception e){
e.printStackTrace();
}

}
}