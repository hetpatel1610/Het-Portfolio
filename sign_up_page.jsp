<%-- 
    Document   : sign_up_page
    Created on : 13-Feb-2026, 9:20:59 pm
    Author     : hetpatel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
   body {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #141e30, #243b55);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
        }

/* Glass effect box */
        .signin-box {
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(12px);
    padding: 35px 40px;
    border-radius: 15px;
    width: 320px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.5);
    color: white;
        }

/* Title */
    .signin-box h1 {
    text-align: center;
    margin-bottom: 25px;
    color: #00e6e6;
    }

/* Labels */
label {
    font-size: 14px;
    margin-top: 12px;
    display: block;
}

/* Inputs */
input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border-radius: 6px;
    border: none;
    outline: none;
    background: rgba(255,255,255,0.2);
    color: white;
    transition: 0.3s;
}

/* Focus glow */
input:focus {
    box-shadow: 0 0 8px #00e6e6;
    background: rgba(255,255,255,0.3);
}

/* Button */
input[type="submit"] {
    margin-top: 20px;
    width: 100%;
    padding: 10px;
    border: none;
    background: #00e6e6;
    color: black;
    font-weight: bold;
    border-radius: 6px;
    cursor: pointer;
    transition: 0.3s;
}

/* Hover */
input[type="submit"]:hover {
    background: #00b3b3;
}

/* Link */
a {
    color: #00e6e6;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

/* Animation */
.signin-box {
    animation: slideUp 0.8s ease;
}

@keyframes slideUp {
    from {
        transform: translateY(40px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}
</style>
</head>

<body>

<div class="signin-box">
    <h1>Sign UP</h1>

    <form action="SignupServlet" method="post">
      ID: <input type="text" name="id" required><br><br>
      Password: <input type="password" name="password" required><br><br>
    <input type="submit" value="Sign Up">
    </form>

    <br>
        Already have account? <a href="Log_in_page.jsp">Login</a>

</div>

</body>
</html>
