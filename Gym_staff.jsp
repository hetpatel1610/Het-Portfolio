<%-- 
    Document   : Gym_staff
    Created on : 24-Mar-2026, 10:56:55 pm
    Author     : hetpatel
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gym Records</title>

<style>
body{
    margin:0;
    font-family:'Segoe UI', Arial;
    background: linear-gradient(135deg,#0f0c29,#302b63,#24243e);
}
.container{
    width:95%;
    margin:30px auto;
}
h1{
    text-align:center;
    color:#ff2e2e;
}
h2{
    color:#fff;
    margin-top:40px;
}
.back a{
    text-decoration:none;
    background:#ff2e2e;
    color:white;
    padding:8px 15px;
    border-radius:6px;
}
table{
    width:100%;
    border-collapse:collapse;
    background:#111;
    margin-top:10px;
    border-radius:10px;
    overflow:hidden;
}
th{
    background:#ff2e2e;
    color:white;
    padding:10px;
}
td{
    padding:10px;
    color:#ddd;
    text-align:center;
    border-bottom:1px solid #333;
}
tr:nth-child(even){
    background:#1a1a1a;
}
tr:hover{
    background:#262626;
}
a{
    padding:6px 10px;
    border-radius:5px;
    color:white;
    text-decoration:none;
}
.edit{ background:orange; }
.delete{ background:red; }
</style>

</head>

<body>

<div class="container">

<h1>GYM RECORDS</h1>

<div class="back">
    <a href="home_page.jsp">Back</a>
</div>

<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

Statement st = con.createStatement();
%>

<!-- STAFF -->
<h2>Gym Staff</h2>

<table>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Contact1</th>
<th>Contact2</th>
<th>Type</th>
<th>Detail</th>
<th>Action</th>
</tr>

<%
ResultSet rs1 = st.executeQuery("SELECT * FROM gym_staff");

while(rs1.next()){
%>

<tr>
<td><%=rs1.getString("first_name")%></td>
<td><%=rs1.getString("last_name")%></td>
<td><%=rs1.getString("email")%></td>
<td><%=rs1.getString("contact1")%></td>
<td><%=rs1.getString("contact2")%></td>
<td><%=rs1.getString("type")%></td>
<td><%=rs1.getString("detail")%></td>

<td>
<a class="edit" href="edit_staff.jsp?email=<%=rs1.getString("email")%>">Edit</a>
<a class="delete" href="delete_staff.jsp?email=<%=rs1.getString("email")%>" 
onclick="return confirm('Delete?')">Delete</a>
</td>
</tr>

<%
}
%>

</table>

<!-- TRAINER -->
<h2>New Trainer</h2>

<table>
<tr>
<th>Sir Name</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Contact</th>
<th>WhatsApp</th>
<th>Gender</th>
<th>Address</th>
<th>DOB</th>
<th>Age</th>
<th>City</th>
<th>State</th>
<th>Action</th>
</tr>

<%
ResultSet rs2 = st.executeQuery("SELECT * FROM trainer");

while(rs2.next()){
%>
<tr>
<td><%=rs2.getString("sir_name")%></td>
<td><%=rs2.getString("first_name")%></td>
<td><%=rs2.getString("last_name")%></td>
<td><%=rs2.getString("email")%></td>
<td><%=rs2.getString("contact1")%></td>


<td><%=rs2.getString("whatsapp")%></td>

<td><%=rs2.getString("gender")%></td>
<td><%=rs2.getString("address")%></td>
<td><%=rs2.getString("dob")%></td>
<td><%=rs2.getInt("age")%></td>
<td><%=rs2.getString("city")%></td>
<td><%=rs2.getString("state")%></td>

<td>
<a class="edit" href="edit_trainer.jsp?email=<%=rs2.getString("email")%>">Edit</a>

<a class="delete" href="deleteTrainer?email=<%=rs2.getString("email")%>"
   onclick="return confirm('Are you sure to delete?')">
   Delete
</a>
</td>
</tr>

<%
}
con.close();

}catch(Exception e){
out.println("Error: "+e);
}
%>

</table>

</div>

</body>
</html>