<%-- 
    Document   : Workout_Plan
    Created on : 14-Mar-2026, 1:43:31 am
    Author     : hetpatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gym Workout Plan</title>

<style>

body{
    font-family: Arial;
    margin:0;
    text-align:center;
    background: linear-gradient(135deg,#2f5f4f,#7bb79b);
}

/* Hide radio buttons */

input{
    display:none;
}

/* Buttons */

label{
    background:#ff6a00;
    color:white;
    padding:15px 35px;
    margin:15px;
    font-size:20px;
    border-radius:40px;
    cursor:pointer;
    transition:0.3s;
    display:inline-block;
}

label:hover{
    transform:scale(1.1);
    box-shadow:0 6px 20px rgba(0,0,0,0.3);
}

/* Card */

.workout-card{
    width:70%;
    margin:50px auto;
    background:#d9d9d9;
    border-radius:25px;
    padding:40px;
    box-shadow:0 10px 30px rgba(0,0,0,0.4);
}

/* Table */

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#333;
    color:white;
    padding:18px;
    font-size:24px;
}

td{
    padding:20px;
    font-size:20px;
    border-bottom:1px solid #bbb;
}

tr:hover{
    background:#ececec;
    transform:scale(1.02);
}

/* Hide all plans */

.plan{
    display:none;
}

/* Show selected plan */

#monday:checked ~ .workout-card #monday-plan,
#tuesday:checked ~ .workout-card #tuesday-plan,
#wednesday:checked ~ .workout-card #wednesday-plan,
#thursday:checked ~ .workout-card #thursday-plan,
#friday:checked ~ .workout-card #friday-plan,
#saturday:checked ~ .workout-card #saturday-plan{
    display:block;
}

</style>
</head>

<body>

<h2 style="color:white;">Gym Weekly Workout Plan</h2>

<input type="radio" name="day" id="monday" checked>
<input type="radio" name="day" id="tuesday">
<input type="radio" name="day" id="wednesday">
<input type="radio" name="day" id="thursday">
<input type="radio" name="day" id="friday">
<input type="radio" name="day" id="saturday">

<label for="monday">Monday</label>
<label for="tuesday">Tuesday</label>
<label for="wednesday">Wednesday</label>
<label for="thursday">Thursday</label>
<label for="friday">Friday</label>
<label for="saturday">Saturday</label>

<div class="workout-card">

<!-- Monday -->
<table id="monday-plan" class="plan">
<tr><th>No</th><th>Exercise</th></tr>
<tr><td>1</td><td>Treadmill 15 Min</td></tr>
<tr><td>2</td><td>Push Ups</td></tr>
<tr><td>3</td><td>Flat Bench Press</td></tr>
<tr><td>4</td><td>Chest Press</td></tr>
</table>

<!-- Tuesday -->
<table id="tuesday-plan" class="plan">
<tr><th>No</th><th>Exercise</th></tr>
<tr><td>1</td><td>Lat Pulldown</td></tr>
<tr><td>2</td><td>Seated Row</td></tr>
<tr><td>3</td><td>Deadlift</td></tr>
</table>

<!-- Wednesday -->
<table id="wednesday-plan" class="plan">
<tr><th>No</th><th>Exercise</th></tr>
<tr><td>1</td><td>Shoulder Press</td></tr>
<tr><td>2</td><td>Side Lateral Raise</td></tr>
<tr><td>3</td><td>Front Raise</td></tr>
</table>

<!-- Thursday -->
<table id="thursday-plan" class="plan">
<tr><th>No</th><th>Exercise</th></tr>
<tr><td>1</td><td>Biceps Curl</td></tr>
<tr><td>2</td><td>Hammer Curl</td></tr>
</table>

<!-- Friday -->
<table id="friday-plan" class="plan">
<tr><th>No</th><th>Exercise</th></tr>
<tr><td>1</td><td>Squats</td></tr>
<tr><td>2</td><td>Leg Press</td></tr>
</table>

<!-- Saturday -->
<table id="saturday-plan" class="plan">
<tr><th>No</th><th>Exercise</th></tr>
<tr><td>1</td><td>Cardio</td></tr>
<tr><td>2</td><td>Abs Workout</td></tr>
</table>

</div>

</body>
</html>