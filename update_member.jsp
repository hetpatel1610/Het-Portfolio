<%-- 
    Document   : update_member.jsp
    Created on : 14-Mar-2026, 12:20:04 am
    Author     : hetpatel
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

String sir_name = request.getParameter("sir_name");
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String email = request.getParameter("email");
String contact1 = request.getParameter("contact1");
String contact2 = request.getParameter("contact2");
String whatsapp = request.getParameter("whatsapp");
String dob = request.getParameter("dob");
String age = request.getParameter("age");
String blood_group = request.getParameter("blood_group");
String gender = request.getParameter("gender");
String first_time = request.getParameter("first_time");
String address1 = request.getParameter("address1");
String address2 = request.getParameter("address2");
String city = request.getParameter("city");
String state = request.getParameter("state");
String weight = request.getParameter("weight");
String height = request.getParameter("height");

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement(

"UPDATE members SET first_name=?,last_name=?,email=?,contact1=?,contact2=?,whatsapp=?,dob=?,age=?,blood_group=?,gender=?,first_time=?,address1=?,address2=?,city=?,state=?,weight=?,height=? WHERE sir_name=?"

);

ps.setString(1,first_name);
ps.setString(2,last_name);
ps.setString(3,email);
ps.setString(4,contact1);
ps.setString(5,contact2);
ps.setString(6,whatsapp);
ps.setString(7,dob);
ps.setString(8,age);
ps.setString(9,blood_group);
ps.setString(10,gender);
ps.setString(11,first_time);
ps.setString(12,address1);
ps.setString(13,address2);
ps.setString(14,city);
ps.setString(15,state);
ps.setString(16,weight);
ps.setString(17,height);
ps.setString(18,sir_name);

ps.executeUpdate();

response.sendRedirect("Old_Member.jsp");

%>