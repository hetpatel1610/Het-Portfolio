<%-- 
    Document   : home_page
    Created on : 17-Feb-2026, 12:41:29 am
    Author     : hetpatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NC GYM FITNESS - Home</title>

    <style>

body{
margin:0;
font-family:Arial, Helvetica, sans-serif;
background:linear-gradient(135deg,#0f0c29,#302b63,#24243e);
}

/* MAIN */

.main{
padding:30px;
}

/* HEADER */

.header{
background:#ff6a00;
color:white;
padding:20px;
font-size:28px;
border-radius:10px;
text-align:center;
}

/* TITLE */

.glow{
text-align:center;
font-size:90px;
font-weight:900;
color:white;
letter-spacing:8px;
margin-top:30px;

animation:glow 2s infinite alternate, zoom 3s infinite;
}

@keyframes glow{
from{ text-shadow:0 0 10px red,0 0 20px red;}
to{ text-shadow:0 0 20px cyan,0 0 40px cyan;}
}

@keyframes zoom{
0%{transform:scale(1);}
50%{transform:scale(1.1);}
100%{transform:scale(1);}
}

/* SUBTITLE */

.sub{
text-align:center;
font-size:30px;
color:white;
letter-spacing:6px;
margin-bottom:40px;
animation:pulse 2s infinite;
}

@keyframes pulse{
0%{opacity:0.6;}
50%{opacity:1;}
100%{opacity:0.6;}
}

/* GRID LAYOUT */

.box-container{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:30px;
max-width:1000px;
margin:auto;
}

/* BOX */

.choice-box{
background:#111;
padding:30px;
text-align:center;
border-radius:15px;
box-shadow:0 0 20px rgba(255,0,0,0.4);
transition:0.3s;
}

.choice-box:hover{
transform:translateY(-10px) scale(1.05);
box-shadow:0 0 30px red;
}

.choice-box h1{
color:#ff2e2e;
margin-bottom:20px;
}

.choice-box label{
display:block;
color:#ddd;
margin-bottom:15px;
font-size:18px;
}

.choice-box input{
padding:12px;
width:100%;
border:none;
border-radius:6px;
background:#ff2e2e;
color:white;
font-size:16px;
cursor:pointer;
}

.choice-box input:hover{
background:#c40000;
}
</style>
</head>

<body>

<div class="main">

<div class="header">
Gym Management Dashboard
</div>

<div class="glow">FITNESS</div>

<div class="sub">
TRAIN • SWEAT • REPEAT 💪
</div>
<div class="box-container">
    
    <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="New_Members.jsp">
            <label>New Member</label>
            <input type="submit" value="REGISTER">
        </form>
    </div>

    
    <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="Old_Member.jsp">
            <label>Old Members Records</label>
            <input type="submit" value="Enter">
        </form>
    </div>

        <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="PT_Member.jsp">
            <label>PT-Members</label>
            <input type="submit" value="REGISTER">
        </form>
    </div>
    
        <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="Trainer.jsp">
            <label>New Trainer Register</label>
            <input type="submit" value="REGISTER">
        </form>
    </div>

        <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="Gym_Member_records.jsp">
            <label>PT Member Records</label>
            <input type="submit" value="Enter">
        </form>
    </div>
    
        <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="Gym_staff_Registration.jsp">
            <label>GYM Staff Registration </label>
            <input type="submit" value="Registration">
        </form>
    </div>
    
    <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="Gym_staff.jsp">
            <label>GYM STAFF</label>
            <input type="submit" value="Enter">
        </form>
    </div>
    <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="Batches.jsp">
            <label>Batches</label>
            <input type="submit" value="Enter">
        </form>
    </div>
    <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="about.jsp">
            <label>About</label>
            <input type="submit" value="Enter">
        </form>
    </div>
    <div class="choice-box">
        <h1>FITNESS</h1>
        <form action="Log_in_page.jsp">
            <label>Log Out</label>
            <input type="submit" value="Log OUT">
        </form>
    </div>


</div>
    
</body>
</html>
