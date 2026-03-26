<%-- 
    Document   : New_Members
    Created on : 17-Feb-2026, 1:36:55 am
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
    background: linear-gradient(135deg, #f5f7fa, #e4ecf7); /* LIGHT BACKGROUND */
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    }

    .form-box {
    background: #ffffff;              /* WHITE FORM */
    padding: 35px;
    width: 380px;
    border-radius: 12px;
    box-shadow: 0 0 20px rgba(0,0,0,0.15);
    animation: fadeIn 1s ease;
    }

    .form-box h1 {
        text-align: center;
        color: #1d2671;                   /* DARK TEXT */
        margin-bottom: 25px;
    }

    .form-box label {
        color: #333;                      /* DARK LABEL TEXT */
        margin-top: 12px;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-box input {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        background: #f9f9f9;              /* LIGHT INPUT */
        color: #000;                      /* BLACK TEXT */
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
        <h1>NEW MEMBER</h1>
        <div class="back-btn">
<a href="home_page.jsp">⬅ Back</a>
</div>

<%
String message = (String)request.getAttribute("msg");
if(message!=null){
%>

<h3 style="color:green;text-align:center;">
<%=message%>
</h3>

<%
}
%>

    <form action="newMember" method="post">

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

<label>Blood Group</label>
<input type="text" name="blood_group">

<label>Gender</label>
<input type="radio" name="gender" value="Male">Male
<input type="radio" name="gender" value="Female">Female

<br><label>First Time Gym</label>
<input type="radio" name="first_time" value="Yes">Yes
<input type="radio" name="first_time" value="No">No

<br><label>Address</label>
<input type="text" name="address1">

<label>Address Line 2</label>
<input type="text" name="address2">

<label>City</label>
<input type="text" name="city">

<label>State</label>
<input type="text" name="state">

<label>Weight</label>
<input type="number" name="weight">

<label>Height</label>
<input type="number" name="height">

<input type="submit" value="REGISTER">

</form>
     </div>

</body>
</html>