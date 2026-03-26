<%-- 
    Document   : update_trainer
    Created on : 25-Mar-2026, 12:14:51?am
    Author     : hetpatel
--%>

<%@page import="java.sql.*"%>

<%
String sir_name = request.getParameter("sir_name");
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String dob = request.getParameter("dob");
String contact1 = request.getParameter("contact1");
String address = request.getParameter("address");
int age = Integer.parseInt(request.getParameter("age"));
String city = request.getParameter("city");
String state = request.getParameter("state");
String gender = request.getParameter("gender");
String email = request.getParameter("email");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement(
"UPDATE trainer SET sir_name=?, first_name=?, last_name=?, dob=?, contact1=?, address=?, age=?, city=?, state=?, gender=? WHERE email=?");

ps.setString(1,sir_name);
ps.setString(2,first_name);
ps.setString(3,last_name);
ps.setString(4,dob);
ps.setString(5,contact1);
ps.setString(6,address);
ps.setInt(7,age);
ps.setString(8,city);
ps.setString(9,state);
ps.setString(10,gender);
ps.setString(11,email);

ps.executeUpdate();

response.sendRedirect("Gym_staff.jsp");
%>
