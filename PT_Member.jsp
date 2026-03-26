<%-- 
    Document   : PT_Memner
    Created on : 10-Mar-2026, 2:04:12 pm
    Author     : hetpatel
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Member Registration</title>

    <style>
       body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg, #f5f7fa, #e4ecf7); 
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    }

    .form-box {
    background: #ffffff;              
    padding: 35px;
    width: 380px;
    border-radius: 12px;
    box-shadow: 0 0 20px rgba(0,0,0,0.15);
    animation: fadeIn 1s ease;
    }

    .form-box h1 {
        text-align: center;
        color: #1d2671;                 
        margin-bottom: 25px;
    }

    .form-box label {
        color: #333;                     
        margin-top: 12px;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-box input {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        background: #f9f9f9;              
        color: #000;                     
    }

    .form-box input[type="submit"] {
        margin-top: 20px;
        background: #1d2671;
        color: white;
        cursor: pointer;
        font-size: 16px;
        transition: 0.3s;
    }

    .form-box input[type="submit"]:hover {
        background: #c33764;
    }
    .radio-group {
    margin-bottom: 10px;
    color: #333;
    }

    select {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        background: #f9f9f9;
    }


    </style>
</head>

<body>

    <div class="form-box">
        <h1>PT MEMBER</h1>
        <div class="back-btn">
            <a href="home_page.jsp">⬅ Back</a>
        </div>

      

<%
String message = request.getParameter("msg");
if(message != null){
%>

<h3 style="color:green;text-align:center;">
    <%=message%>
</h3>

<%
}
%>

    <form action="PTMemberServlet" method="post">

<label>Sir Name</label>
<input type="text" name="sir_name">

<label>First Name</label>
<input type="text" name="first_name">

<label>Last Name</label>
<input type="text" name="last_name">

<label>Email</label>
<input type="email" name="email">

<label>Contact</label>
<input type="text" name="contact1">

<label>Alternate Contact</label>
<input type="text" name="contact2">

<label>WhatsApp</label>
<input type="text" name="whatsapp">

<label>Date of Birth</label>
<input type="date" name="dob">

<label>Age</label>
<input type="number" name="age">

<label>Personal Training</label>

<input type="radio" name="price" value="5000">5000 (3 days)<br>
<input type="radio" name="price" value="10000">10000 (6 days)<br>
<input type="radio" name="price" value="15000">15000 (2 months)<br>
<input type="radio" name="price" value="20000">20000 (2 months)<br>
<input type="radio" name="price" value="30000">30000 (3 months)<br>
<input type="radio" name="price" value="45000">45000 (3 months)<br>
<input type="radio" name="price" value="60000">60000 (6 months)<br>
<input type="radio" name="price" value="90000">90000 (6 months)<br>
<input type="radio" name="price" value="120000">120000 (1 year)<br>
<input type="radio" name="price" value="150000">150000 (1 year)<br>

<br><label>Gender</label>
<input type="radio" name="gender" value="Male">Male
<input type="radio" name="gender" value="Female">Female

<br><label>First Time Gym</label>
<input type="radio" name="first_time" value="Yes">Yes
<input type="radio" name="first_time" value="No">No

<br><label>Address</label>
<input type="text" name="address2">

<label>City</label>
<input type="text" name="city">

<label>Weight</label>
<input type="number" name="weight">

<label>Height</label>
<input type="number" name="height">

<label>Medical Issue</label>
<input type="radio" name="issue">Yes
<input type="text" name="detail">
<input type="radio" name="issue">No


<input type="submit" value="REGISTER">

</form>
     </div>

</body>
</html> 