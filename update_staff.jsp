<%-- 
    Document   : update_staff
    Created on : 24-Mar-2026, 11:04:19?pm
    Author     : hetpatel
--%>

<%@page import="java.sql.*"%>

<%
String email = request.getParameter("email");

String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String contact1 = request.getParameter("contact1");
String contact2 = request.getParameter("contact2");
String type = request.getParameter("type");
String detail = request.getParameter("detail");

try{
Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement(
"UPDATE gym_staff SET first_name=?, last_name=?, contact1=?, contact2=?, type=?, detail=? WHERE email=?");

ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, contact1);
ps.setString(4, contact2);
ps.setString(5, type);
ps.setString(6, detail);
ps.setString(7, email);

int i = ps.executeUpdate();

if(i>0){
    response.sendRedirect("Gym_staff.jsp?msg=Updated Successfully");
}else{
    response.sendRedirect("Gym_staff.jsp?msg=Update Failed");
}

con.close();

}catch(Exception e){
out.println(e);
}
%>
