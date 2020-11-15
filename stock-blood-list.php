<?php
include('connection.php');

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
        <div id="header"><h2><a href="admin-home.php" style="text-decoration; none;color: white;">Blood Bank Management System</a></h2></div>
        <div id="body">
            <br>
          
            <h1>Stock Blood List</h1><br>
            <center><div id="form">
                <table>
                    <tr>
                        <td><center><b><font color="blue">Name</font></b></center></td>
                        <td><center><b><font color="blue">Quantity</font></b></center></td>
                        
                    </tr>
                    
                        <tr>
                        <td><center>A+</center></td>
                        <td><center>
                            <?php
                            $q=$db->query("SELECT * FROM blood_donor WHERE blood_group='A+'");
                            echo $row=$q->rowcount();
                            ?>
                        </center></td>
                    </tr> 
                    
                    
                    
                    <tr>
                        <td><center>B+</center></td>
                        <td><center>
                            <?php
                            $q=$db->query("SELECT * FROM blood_donor WHERE blood_group='B+'");
                            echo $row=$q->rowcount();
                            ?>
                        </center></td>
                    </tr>
                   
                    
                    <tr>
                        <td><center>AB+</center></td>
                        <td><center>
                            <?php
                            $q=$db->query("SELECT * FROM blood_donor WHERE blood_group='AB+'");
                            echo $row=$q->rowcount();
                            ?>
                        </center></td>
                    </tr>
                    
                    
                     
                     <tr>
                        <td><center>O+</center></td>
                        <td><center>
                            <?php
                            $q=$db->query("SELECT * FROM blood_donor WHERE blood_group='O+'");
                            echo $row=$q->rowcount();
                            ?>
                        </center></td>
                    </tr>
                    
                    
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