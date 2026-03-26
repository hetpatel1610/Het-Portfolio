<%-- 
    Document   : Old_Member
    Created on : 09-Mar-2026, 7:46:27?pm
    Author     : hetpatel
--%>

<%@page import="java.sql.*"%>



<html>
<head>
<title>Old Members</title>

<style>

body{
font-family: Arial;
background-color:#f4f6f9;
margin:40px;
}

h2{
text-align:center;
color:#333;
}

table{
border-collapse:collapse;
width:100%;
background:white;
}

th{
background:#2c3e50;
color:white;
padding:10px;
}

td{
padding:8px;
text-align:center;
}

tr:nth-child(even){
background:#f2f2f2;
}

tr:hover{
background:#e6f2ff;
}

a{
text-decoration:none;
padding:5px 10px;
border-radius:4px;
color:white;
}

a[href*="edit"]{
background:#3498db;
}

a[href*="delete"]{
background:#e74c3c;
}
.back-btn{
margin-bottom:20px;
}

.back-btn a{
background:#27ae60;
color:white;
padding:8px 15px;
border-radius:5px;
text-decoration:none;
font-weight:bold;
}

.back-btn a:hover{
background:#1e8449;
}
</style>

</head>

<body>

<h2>Old Members List</h2>
        <div class="back-btn">
<a href="home_page.jsp">Back</a>
</div>

<table border="1">

<tr>
<th>Sir Name</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Contact</th>
<th>Alternate Contact</th>
<th>WhatsApp</th>
<th>DOB</th>
<th>Age</th>
<th>Blood Group</th>
<th>Gender</th>
<th>First Time Gym</th>
<th>Address1</th>
<th>Address2</th>
<th>City</th>
<th>State</th>
<th>Weight</th>
<th>Height</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * FROM members");

while(rs.next()){
%>

<tr>

<td><%=rs.getString("sir_name")%></td>
<td><%=rs.getString("first_name")%></td>
<td><%=rs.getString("last_name")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("contact1")%></td>
<td><%=rs.getString("contact2")%></td>
<td><%=rs.getString("whatsapp")%></td>
<td><%=rs.getString("dob")%></td>
<td><%=rs.getInt("age")%></td>
<td><%=rs.getString("blood_group")%></td>
<td><%=rs.getString("gender")%></td>
<td><%=rs.getString("first_time")%></td>
<td><%=rs.getString("address1")%></td>
<td><%=rs.getString("address2")%></td>
<td><%=rs.getString("city")%></td>
<td><%=rs.getString("state")%></td>
<td><%=rs.getInt("weight")%></td>
<td><%=rs.getInt("height")%></td>

<td>
<a href="edit_member.jsp?sir_name=<%=rs.getString("sir_name")%>">Edit</a>
</td>

<td>
<a href="delete_Member.jsp?sir_name=<%=rs.getString("sir_name")%>">Delete</a>
</td>

</tr>

<%
}
%>

</table>

</body>
</html>