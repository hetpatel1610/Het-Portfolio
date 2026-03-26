<%@page import="java.sql.*"%>

<%
String contact1 = request.getParameter("contact1");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement(
"SELECT * FROM pt_members WHERE contact1=?");

ps.setString(1, contact1);

ResultSet rs = ps.executeQuery();

if(rs.next()){
%>

<h2>Edit Member</h2>

<form action="update_pt_member.jsp" method="post">

<input type="hidden" name="contact1" value="<%=rs.getString("contact1")%>">

Sir Name:
<input type="text" name="sir_name" value="<%=rs.getString("sir_name")%>"><br>

First Name:
<input type="text" name="first_name" value="<%=rs.getString("first_name")%>"><br>

Email:
<input type="text" name="email" value="<%=rs.getString("email")%>"><br>

City:
<input type="text" name="city" value="<%=rs.getString("city")%>"><br>

Weight:
<input type="number" name="weight" value="<%=rs.getInt("weight")%>"><br>

Height:
<input type="number" name="height" value="<%=rs.getInt("height")%>"><br>

<input type="submit" value="Update">

</form>

<%
}else{
out.println("No Record Found");
}
con.close();
%>