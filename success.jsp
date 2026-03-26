<%-- 
    Document   : success.jsp
    Created on : 09-Mar-2026, 7:01:50 pm
    Author     : hetpatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Data</title>
</head>

<body>

<h1>Member Registration Details</h1>

Sir Name : <%= request.getParameter("sir_name") %><br><br>

First Name : <%= request.getParameter("first_name") %><br><br>

Last Name : <%= request.getParameter("last_name") %><br><br>

Email : <%= request.getParameter("email") %><br><br>

Contact : <%= request.getParameter("contact1") %><br><br>

Alternate Contact : <%= request.getParameter("contact2") %><br><br>

WhatsApp : <%= request.getParameter("whatsapp") %><br><br>

DOB : <%= request.getParameter("dob") %><br><br>

Age : <%= request.getParameter("age") %><br><br>

Blood Group : <%= request.getParameter("blood_group") %><br><br>

Gender : <%= request.getParameter("gender") %><br><br>

First Time Gym : <%= request.getParameter("first_time") %><br><br>

Address : <%= request.getParameter("address1") %><br><br>

Address Line 2 : <%= request.getParameter("address2") %><br><br>

City : <%= request.getParameter("city") %><br><br>

State : <%= request.getParameter("state") %><br><br>

Weight : <%= request.getParameter("weight") %><br><br>

Height : <%= request.getParameter("height") %><br><br>
</body>
</html>