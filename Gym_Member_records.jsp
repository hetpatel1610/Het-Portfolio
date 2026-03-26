<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PT Member Records</title>

<style>

body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg, #eef2f7, #d9e4f5);
}

/* Container */
.container {
    width: 95%;
    margin: 30px auto;
}

/* Heading */
h1 {
    text-align: center;
    color: #1d2671;
    margin-bottom: 20px;
}

/* Message */
.message {
    text-align: center;
    color: green;
    font-weight: bold;
    margin-bottom: 15px;
}

/* Back Button */
.back-btn {
    text-align: left;
    margin-bottom: 10px;
}

.back-btn a {
    text-decoration: none;
    background: #1d2671;
    color: white;
    padding: 8px 15px;
    border-radius: 6px;
    transition: 0.3s;
}

.back-btn a:hover {
    background: #c33764;
}

/* Table Styling */
table {
    width: 100%;
    border-collapse: collapse;
    background: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 0 15px rgba(0,0,0,0.1);
}

/* Header */
th {
    background: #1d2671;
    color: white;
    padding: 12px;
}

/* Table cells */
td {
    padding: 10px;
    border-bottom: 1px solid #eee;
}

/* Zebra rows */
tr:nth-child(even) {
    background: #f9f9f9;
}

/* Hover effect */
tr:hover {
    background: #f1f5ff;
    transition: 0.2s;
}

</style>
</head>

<body>

<div class="container">

<h1>PT MEMBER RECORDS</h1>

<%
String message = request.getParameter("msg");
if(message!=null){
%>
<div class="message"><%=message%></div>
<%
}
%>

<div class="back-btn">
<a href="home_page.jsp">Back</a>
</div>

<table>

<tr>
<th>Sir Name</th>
<th>First Name</th>
<th>Email</th>
<th>Contact</th>
<th>WhatsApp</th>
<th>DOB</th>
<th>Age</th>
<th>Price</th>
<th>Gender</th>
<th>First Time</th>
<th>Address</th>
<th>City</th>
<th>Weight</th>
<th>Height</th>
<th>Issue</th>
<th>Detail</th>
</tr>

<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/nc_fitness","root","12345678");

Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM pt_members");

while(rs.next()){
%>

<tr>
<td><%=rs.getString("sir_name")%></td>
<td><%=rs.getString("first_name")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("contact1")%></td>
<td><%=rs.getString("whatsapp")%></td>
<td><%=rs.getString("dob")%></td>
<td><%=rs.getInt("age")%></td>
<td><%=rs.getString("price")%></td>
<td><%=rs.getString("gender")%></td>
<td><%=rs.getString("first_time")%></td>
<td><%=rs.getString("address2")%></td>
<td><%=rs.getString("city")%></td>
<td><%=rs.getInt("weight")%></td>
<td><%=rs.getInt("height")%></td>
<td><%=rs.getString("issue")%></td>
<td><%=rs.getString("detail")%></td>




<td>
<a href="edit_pt_member.jsp?contact1=<%=rs.getString("contact1")%>">Edit</a>
</td>

<td>
<a href="delete_pt_member.jsp?contact1=<%=rs.getString("contact1")%>" 
onclick="return confirm('Are you sure?')">Delete</a>
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