<%-- 
    Document   : edit_member.jsp
    Created on : 14-Mar-2026, 12:19:18 am
    Author     : hetpatel
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

String sir_name = request.getParameter("sir_name");

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement(
"SELECT * FROM members WHERE sir_name=?");

ps.setString(1, sir_name);

ResultSet rs = ps.executeQuery();

rs.next();

%>

<form action="update_member.jsp" method="post">

<input type="hidden" name="sir_name" value="<%=rs.getString("sir_name")%>">

Sir Name:
<input type="text" name="sir_name" value="<%=rs.getString("sir_name")%>"><br><br>

First Name:
<input type="text" name="first_name" value="<%=rs.getString("first_name")%>"><br><br>

Last Name:
<input type="text" name="last_name" value="<%=rs.getString("last_name")%>"><br><br>

Email:
<input type="text" name="email" value="<%=rs.getString("email")%>"><br><br>

Contact:
<input type="text" name="contact1" value="<%=rs.getString("contact1")%>"><br><br>

Alternate Contact:
<input type="text" name="contact2" value="<%=rs.getString("contact2")%>"><br><br>

WhatsApp:
<input type="text" name="whatsapp" value="<%=rs.getString("whatsapp")%>"><br><br>

DOB:
<input type="date" name="dob" value="<%=rs.getString("dob")%>"><br><br>

Age:
<input type="number" name="age" value="<%=rs.getString("age")%>"><br><br>

Blood Group:
<input type="text" name="blood_group" value="<%=rs.getString("blood_group")%>"><br><br>

Gender:
<input type="text" name="gender" value="<%=rs.getString("gender")%>"><br><br>

First Time Gym:
<input type="text" name="first_time" value="<%=rs.getString("first_time")%>"><br><br>

Address1:
<input type="text" name="address1" value="<%=rs.getString("address1")%>"><br><br>

Address2:
<input type="text" name="address2" value="<%=rs.getString("address2")%>"><br><br>

City:
<input type="text" name="city" value="<%=rs.getString("city")%>"><br><br>

State:
<input type="text" name="state" value="<%=rs.getString("state")%>"><br><br>

Weight:
<input type="number" name="weight" value="<%=rs.getString("weight")%>"><br><br>

Height:
<input type="number" name="height" value="<%=rs.getString("height")%>"><br><br>

<input type="submit" value="Update">

</form>