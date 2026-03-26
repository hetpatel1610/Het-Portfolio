<%-- 
    Document   : about
    Created on : 10-Mar-2026, 3:15:55 pm
    Author     : hetpatel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NC Fitness - About</title>

<style>

body{
    margin:0;
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg,#0f0c29,#302b63,#24243e);
    min-height:100vh;
    display:flex;
    flex-direction:column;
    align-items:center;
    padding:40px;
}

/* Title */
.title{
    color:#ff2e2e;
    font-size:42px;
    margin-bottom:20px;
    letter-spacing:3px;
}

/* Back Button */
.back-btn{
    position:absolute;
    top:20px;
    left:20px;
}

.back-btn a{
    text-decoration:none;
    background:#ff2e2e;
    color:white;
    padding:10px 18px;
    border-radius:6px;
    font-weight:bold;
    transition:0.3s;
}

.back-btn a:hover{
    background:#c40000;
}

/* About Box */
.about-box{
    background:#111;
    padding:30px;
    width:60%;
    border-radius:12px;
    box-shadow:0 0 20px rgba(255,0,0,0.4);
    text-align:center;
    animation:fadeIn 1s ease;
}

.about-box h2{
    color:#ff2e2e;
    margin-bottom:10px;
}

.about-box p{
    color:#ccc;
    font-size:16px;
    line-height:1.6;
}

/* Animation */
@keyframes fadeIn{
    from{
        opacity:0;
        transform:translateY(40px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

</style>

</head>

<body>

<!-- Back Button -->
<div class="back-btn">
    <a href="home_page.jsp">Back</a>
</div>

<!-- Title -->
<h1 class="title">ABOUT NC FITNESS</h1>

<!-- About Content -->
<div class="about-box">

    <h2>Gym Owner</h2>
    <p><b>Patel Het</b></p>

    <h2>About Gym</h2>
    <p>
        NC Fitness is a modern fitness center focused on strength training,
        weight loss, and overall health improvement. We provide professional
        trainers, structured workout plans, and a motivating environment
        to help you achieve your fitness goals.
    </p>

    <h2>Facilities</h2>
    <p>
        ✔ Personal Training <br>
        ✔ Weight Loss Programs <br>
        ✔ Muscle Gain Training <br>
        ✔ Flexible Batch Timings <br>
    </p>
    
    <h2> Gym Timing </h2>
    <p> Morning 5:30 to 12:30 pm
        Evening 4:00 to 9:00  pm 
    </p>
    <p>
        Contact :-9998590465
    </p>

</div>

</body>
</html>