<%-- 
    Document   : Gym_staff_Registration
    Created on : 24-Mar-2026, 6:20:33 pm
    Author     : hetpatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gym Staff Registration</title>

<style>

/* Body */
body{
    margin:0;
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg,#0f0c29,#302b63,#24243e);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

/* Form Container */
.form-box{
    background:#111;
    padding:30px;
    width:350px;
    border-radius:12px;
    box-shadow:0 0 20px rgba(255,0,0,0.5);
}

/* Title */
.form-box h2{
    text-align:center;
    color:#ff2e2e;
    margin-bottom:20px;
}

/* Labels */
label{
    color:#ccc;
    font-size:14px;
    display:block;
    margin-top:10px;
}

/* Inputs */
input{
    width:100%;
    padding:10px;
    margin-top:5px;
    border:none;
    border-radius:6px;
    background:#222;
    color:white;
    outline:none;
}

/* Focus effect */
input:focus{
    border:1px solid #ff2e2e;
    box-shadow:0 0 5px red;
}

/* Button */
input[type="submit"]{
    margin-top:20px;
    background:#ff2e2e;
    cursor:pointer;
    font-weight:bold;
    transition:0.3s;
}

input[type="submit"]:hover{
    background:#c40000;
}

/* Animation */
.form-box{
    animation:fadeIn 1s ease;
}

@keyframes fadeIn{
    from{
        opacity:0;
        transform:translateY(30px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

</style>

</head>

<body>

<div class="form-box">
<div class="back">
    <a href="home_page.jsp">Back</a>
</div>
<h2>Staff Registration</h2>
<%
String msg = request.getParameter("msg");
if(msg != null){
%>
    <p style="color:lightgreen; text-align:center; font-weight:bold;">
        <%=msg%>
    </p>
<%
}
%>

<form action="GymStaffServlet" method="post">

<label>First Name</label>
<input type="text" name="first_name" required>

<label>Last Name</label>
<input type="text" name="last_name" required>

<label>Email</label>
<input type="email" name="email" required>

<label>Contact 1</label>
<input type="text" name="contact1" required>

<label>Contact 2</label>
<input type="text" name="contact2">

<label>Type</label>
<input type="text" name="type" placeholder="Admin/Manager/cleaning staff">

<label>Detail</label>
<input type="text" name="detail">

<input type="submit" value="REGISTER">

</form>

</div>



</body>
</html>