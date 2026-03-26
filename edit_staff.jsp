<%-- 
    Document   : edit_staff
    Created on : 24-Mar-2026, 11:03:50?pm
    Author     : hetpatel
--%>

<%@page import="java.sql.*"%>

<%
String email = request.getParameter("email");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

PreparedStatement ps = con.prepareStatement(
"SELECT * FROM gym_staff WHERE email=?");

ps.setString(1, email);

ResultSet rs = ps.executeQuery();

if(rs.next()){
%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Staff</title>

<style>
body{
    font-family: Arial;
    background:#1a1a2e;
    color:white;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.form-box{
    background:#111;
    padding:25px;
    border-radius:10px;
    width:350px;
    box-shadow:0 0 15px red;
}

input{
    width:100%;
    padding:10px;
    margin-top:8px;
    border:none;
    border-radius:5px;
}

input[type="submit"]{
    background:red;
    color:white;
    margin-top:15px;
}
</style>

</head>
<body>

<div class="form-box">

<h2>Edit Staff</h2>

<form action="update_staff.jsp" method="post">

<!-- use email as hidden key -->
<input type="hidden" name="email" value="<%=rs.getString("email")%>">

First Name:
<input type="text" name="first_name" value="<%=rs.getString("first_name")%>">

Last Name:
<input type="text" name="last_name" value="<%=rs.getString("last_name")%>">

Contact1:
<input type="text" name="contact1" value="<%=rs.getString("contact1")%>">

Contact2:
<input type="text" name="contact2" value="<%=rs.getString("contact2")%>">

Type:
<input type="text" name="type" value="<%=rs.getString("type")%>">

Detail:
<input type="text" name="detail" value="<%=rs.getString("detail")%>">

<input type="submit" value="Update">

</form>

</div>

</body>
</html>

<%
}else{
    out.println("No record found!");
}
con.close();
%>
