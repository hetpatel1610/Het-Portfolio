<%-- 
    Document   : sign_in_page
    Created on : 24-Jan-2026
    Author     : hetpatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign In - NC GYM FITNESS</title>

    <style>
       body {
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;

    /* Smooth gradient background */
    background: linear-gradient(135deg, #1d2671, #c33764);

    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Card */
.signin-box {
    background: #ffffff;
    padding: 35px;
    width: 360px;
    border-radius: 15px;
    box-shadow: 0 15px 35px rgba(0,0,0,0.3);
}

/* Title */
.signin-box h1 {
    text-align: center;
    margin-bottom: 25px;
    color: #1d2671;
    font-size: 26px;
}

/* Labels */
.signin-box label {
    display: block;
    margin-top: 12px;
    color: #555;
    font-size: 14px;
}

/* Inputs */
.signin-box input[type="text"],
.signin-box input[type="password"] {
    width: 100%;
    padding: 12px;
    margin-top: 5px;
    border-radius: 8px;
    border: 1px solid #ddd;
    outline: none;
    transition: 0.3s;
}

/* Focus */
.signin-box input:focus {
    border-color: #c33764;
    box-shadow: 0 0 8px rgba(195, 55, 100, 0.4);
}

/* Button */
.signin-box input[type="submit"] {
    margin-top: 20px;
    width: 100%;
    padding: 12px;
    background: linear-gradient(45deg, #1d2671, #c33764);
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

/* Hover */
.signin-box input[type="submit"]:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}

/* Error */
.error {
    color: red;
    text-align: center;
    margin-bottom: 10px;
    font-size: 14px;
}

/* Links */
a {
    display: block;
    text-align: center;
    margin-top: 12px;
    color: #c33764;
    text-decoration: none;
    font-weight: bold;
}

a:hover {
    text-decoration: underline;
}

/* Animation */
.signin-box {
    animation: fadeIn 0.6s ease;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(25px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
    </style>
</head>

<body>

<div class="signin-box">
    <h1>Next Level Conditioning Fitness</h1>
    <h1>Login</h1>

    <%
        if(request.getParameter("error") != null){
    %>
        <p class="error">Invalid ID or Password</p>
    <%
        }
    %>

    
    <form action="LoginServlet" method="post">
        
        <label>ID</label>
        <input type="text" name="id" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <input type="submit" value="Login">
    </form>

    <br>
    Don't have account? <a href="sign_up_page.jsp">Sign Up</a>
</div>

</body>
</html>