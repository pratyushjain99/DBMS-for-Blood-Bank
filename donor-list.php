<?php
include('connection.php');
session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Donor Registration</title>
    <link rel="stylesheet" type="text/css" href="css/s1.css">
    <style type="text/css">
        td{
            width: 200px;
            height: 40px;
        }
    </style>
</head>
<body>
<div id="full">
    <div id="inner_full">
        <div id="header"><h2><a href="admin-home.php" style="text-decoration; none;color: white;">DBMS For Blood Bank</a></h2></div>
        <div id="body">
            <br>
       
            <h1>Donor Registration</h1><br>
            <center><div id="form">
                <table>
                    <tr>
                        <td><center><b><font color="blue">Name</font></b></center></td>
                        <td><center><b><font color="blue">Date of Donation</font></b></center></td>
                        <td><center><b><font color="blue">Blood Group</font></b></center></td>
                        <td><center><b><font color="blue">Address</b></font></center></td>
                        <td><center><b><font color="blue">Sex</b></font></center></td>
                        <td><center><b><font color="blue">Age</b></font></center></td>
                    </tr>
                    <?php
                    $q=$db->query("SELECT* FROM blood_donor");
                    while($r1=$q->fetch(PDO::FETCH_OBJ))
                    {
                        ?>
                        <tr>
                        <td><center><?= $r1->name; ?></center></td>
                        <td><center><?= $r1->date_of_donation; ?></center></td>
                        <td><center><?= $r1->blood_group; ?></center></td>
                        <td><center><?= $r1->address; ?></center></td>
                        <td><center><?= $r1->sex; ?></center></td>
                        <td><center><?= $r1->age; ?></center></td>
                        
                    </tr> 
                        <?php
                    }
                    ?>
                    
                      
                </table>
                
            </div></center>
            
        </div>
        <div id= "footer"><h4 align="center">Team-14</h4>
            <p align="center"><a href="logout.php"><font color="white">Logout</font></a></p>
        </div>
    </div>    
</div>
</body>
</html>