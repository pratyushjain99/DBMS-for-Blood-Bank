<?php
include('connection.php')
?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Login</title>
	<link rel="stylesheet" type="text/css" href="css/s1.css">
</head>
<body>
<div id="full">
    <div id="inner_full">
        <div id="header"><h2><a href="admin-home.php" style="text-decoration:none;color:white;">DBMS for a Blood Bank</a></h2></div>
        <div id="body">
            <br><br>
            <h1>WELCOME ADMIN</h1><br><br>

            <ul>
                <li><a href="donor-red.php">Donor Registration</a></li>
                <li><a href="donor-list.php">Donor List</a></li>
                <li><a href="stock-blood-list.php">Stock Blood List</a></li>
            </ul><br><br><br><br><br><br>
            <ul>
                 <li><a href="#">Out of Stock Blood List</a></li>
                 <li><a href="exchange-blood-list.php">Exchange Blood List</a></li>
            
            </ul>
        </div>
        <div id="footer"><hd align="center">Made by Abhinav, Pratyush and Sarthak</h4>
            <p align ="center"> <a href="logout.php"><font color="white">Logout</font></a></p>
        
        </div>
    </div>
</div>
</body>
</html>
   