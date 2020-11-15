<?php
include('connection.php');
session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Donor List</title>
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
       
            <h1>Hospital List</h1><br>
            <center><div id="form">
                <table>
                    <tr>
                        <td><center><b><font color="blue">Name</font></b></center></td>
                       
                        <td><center><b><font color="blue">Address</b></font></center></td>
                       
                    </tr>
                    <?php
                    $q=$db->query("SELECT name,address FROM hospital");
                    while($r1=$q->fetch(PDO::FETCH_OBJ))
                    {
                        ?>
                        <tr>
                        <td><center><?= $r1->name; ?></center></td>
                       
                        <td><center><?= $r1->address; ?></center></td>
                       
                        
                    </tr> 
                        <?php
                    }
                    ?>
                    
                      
                </table>
                
            </div></center>
            
        </div>
        <div id= "footer"><h4 align="center">Team-14</h4>
            
        </div>
    </div>    
</div>
</body>
</html>