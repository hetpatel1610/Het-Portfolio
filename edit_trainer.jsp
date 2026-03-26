<%-- 
    Document   : edit_trainer
    Created on : 25-Mar-2026, 12:14:06?am
    Author     : hetpatel
--%>
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc_fitness","root","12345678");
PreparedStatement ps = con.prepareStatement("SELECT * FROM trainer WHERE email=?");
ps.setString(1,email);

ResultSet rs = ps.executeQuery();
rs.next();
%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Trainer</title>

<style>
body{
    font-family:Arial;
    background:#111;
    color:white;
}
.form{
    width:400px;
    margin:40px auto;
}
input{
    width:100%;
    padding:10px;
    margin:5px 0;
}
</style>

</head>
<body>

<div class="form">

<h2>Edit Trainer</h2>

<form action="update_trainer.jsp" method="post">

<input type="hidden" name="email" value="<%=rs.getString("email")%>">

Sir Name: <input type="text" name="sir_name" value="<%=rs.getString("sir_name")%>">
First Name: <input type="text" name="first_name" value="<%=rs.getString("first_name")%>">
Last Name: <input type="text" name="last_name" value="<%=rs.getString("last_name")%>">
DOB: <input type="date" name="dob" value="<%=rs.getString("dob")%>">
Contact: <input type="text" name="contact1" value="<%=rs.getString("contact1")%>">
Address: <input type="text" name="address" value="<%=rs.getString("address")%>">
Age: <input type="number" name="age" value="<%=rs.getInt("age")%>">
City: <input type="text" name="city" value="<%=rs.getString("city")%>">
State: <input type="text" name="state" value="<%=rs.getString("state")%>">
Gender: <input type="text" name="gender" value="<%=rs.getString("gender")%>">

<input type="submit" value="Update">

</form>

</div>

</body>
</html>