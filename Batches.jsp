<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NC Fitness - Batches</title>

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
    margin-bottom:30px;
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

/* Container */

.batch-container{
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
    gap:30px;
    margin-bottom:40px;
}

/* Cards */

.batch-card{
    background:#111;
    width:260px;
    padding:25px;
    border-radius:12px;
    text-align:center;
    box-shadow:0 0 20px rgba(255,0,0,0.4);
    transition:0.3s;
}

/* Hover */

.batch-card:hover{
    transform:scale(1.07);
    box-shadow:0 0 35px rgba(255,0,0,0.8);
}

/* Workout */

.batch-card h2{
    color:#ff2e2e;
    margin-bottom:10px;
}

/* Trainer */

.batch-card h3{
    color:#ddd;
    font-weight:normal;
}

/* Timing */

.batch-card p{
    color:#aaa;
    font-size:15px;
}

/* Schedule Table */

.schedule{
    width:80%;
    border-collapse:collapse;
    background:#111;
    box-shadow:0 0 20px rgba(255,0,0,0.4);
}

.schedule th{
    background:#ff2e2e;
    color:white;
    padding:12px;
}

.schedule td{
    padding:10px;
    color:#ddd;
    text-align:center;
    border-bottom:1px solid #333;
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

.batch-card{
    animation:fadeIn 1s ease;
}

</style>

</head>

<body>

<div class="back-btn">
<a href="home_page.jsp">⬅ Back</a>
</div>

<h1 class="title">NC FITNESS BATCHES</h1>

<div class="batch-container">

<div class="batch-card">
<h2>HIT Workout</h2>
<h3>Trainer: Jay Sir</h3>
<p>Morning: 6:00 AM - 7:00 AM</p>
<p>Evening: 6:00 PM - 7:00 PM</p>
</div>

<div class="batch-card">
<h2>Abs Workout</h2>
<h3>Trainer: Het Sir</h3>
<p>Morning: 7:00 AM - 8:00 AM</p>
<p>Evening: 7:00 PM - 8:00 PM</p>
</div>

<div class="batch-card">
<h2>Yoga</h2>
<h3>Trainer: Mam</h3>
<p>Morning: 5:30 AM - 6:30 AM</p>
<p>Evening: 5:30 PM - 6:30 PM</p>
</div>

<div class="batch-card">
<h2>Zumba</h2>
<h3>Trainer: Harshang Sir</h3>
<p>Morning: 8:00 AM - 9:00 AM</p>
<p>Evening: 8:00 PM - 9:00 PM</p>
</div>

<div class="batch-card">
<h2>Cross-fit Batch</h2>
<h3>Trainer: Darshil Sir</h3>
<p>Morning: 7:00 AM - 8:00 AM</p>
<p>Evening: 6:00 PM - 7:00 PM</p>
</div>

<div class="batch-card">
<h2>Tabata Batch</h2>
<h3>Trainer: Dhyey Sir</h3>
<p>Morning: 7:00 AM - 8:00 AM</p>
<p>Evening: 6:00 PM - 7:00 PM</p>
</div>

</div>

<h1 class="title">Weekly Schedule</h1>

<table class="schedule">

<tr>
<th>Day</th>
<th>Morning Batch</th>
<th>Evening Batch</th>
</tr>

<tr>
<td>Monday</td>
<td>HIT Workout</td>
<td>HIT Workout</td>
</tr>

<tr>
<td>Tuesday</td>
<td>Yoga</td>
<td>Yoga</td>
</tr>

<tr>
<td>Wednesday</td>
<td>Cross-fit Batch</td>
<td>Cross-fit Batch</td>
</tr>

<tr>
<td>Thursday</td>
<td>Abs Workout</td>
<td>Abs Workout</td>
</tr>

<tr>
<td>Friday</td>
<td>Tabata Workout</td>
<td>Tabata Workout</td>
</tr>

<tr>
<td>Saturday</td>
<td>Abs Workout</td>
<td>Abs Workout</td>
</tr>

</table>

</body>
</html>