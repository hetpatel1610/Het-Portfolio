<%-- 
    Document   : delete_trainer
    Created on : 25-Mar-2026, 12:15:14?am
    Author     : hetpatel
--%>

<%@page import="java.sql.*"%>

<%
String email = request.getParameter("email");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement("DELETE FROM trainer WHERE email=?");
ps.setString(1,email);

ps.executeUpdate();

response.sendRedirect("Gym_staff.jsp");
%>
