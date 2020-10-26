<?php
include('connection.php');
session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Donor Registration</title>
    <link rel="stylesheet" type="text/css" href="css/s1.css">
</head>
<body>
<div id="full">
    <div id="inner_full">
        <div id="header"><h2><a href="admin-home.php" style="text-decoration; none;color: white;">DBMS for blood bank</a></h2></div>
        <div id="body">
            <br>
           
            <h1>Donor Registration</h1><br>
            <center><div id="form">
                <form action="" method="post">
                <table>
                    <tr>
                        <td width="200px" height="50px">Name</td>
                        <td width="200px" height="50px"><input type="text" name="name" placeholder="Name"></td>
                        <td width="200px" height="50px">Date of Donation</td>
                        <td width="200px" height="50px"><input type="text" name="date_of_donation" placeholder="Date of Donation"></td>
                    </tr>
                    
                    <tr>
                        <td width="200px" height="50px">Blood Group</td>
                        <td width="200px" height="50px">
                            <select name="blood_group">
                                <option>A+</option>
                                <option>A-</option>
                                <option>B+</option>
                                <option>B-</option>
                                <option>AB+</option>
                                <option>AB-</option>
                                <option>O+</option>
                                <option>O-</option>
                            </select>
                        </td>
                        <td width="200px" height="50px">Address</td>
                        <td width="200px" height="50px"><input type="text" name="address" placeholder="Address"></td>
                    </tr>
                    
                    <tr>
                        <td width="200px" height="50px">Sex</td>
                        <td width="200px" height="50px"><input type="text" name="sex" placeholder="Sex"></td>
                        <td width="200px" height="50px">Age</td>
                        <td width="200px" height="50px"><input type="text" name="age" placeholder="Age"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="sub" value="Save"></td>
                    </tr>
                </table>
            </form>
            <?php
            if(isset($_POST['sub']))
            {
                $name=$_POST['name'];
                $date_of_donation=$_POST['date_of_donation'];
                $blood_group=$_POST['blood_group'];
                $address=$_POST['address'];
                $sex=$_POST['sex'];
                $age=$_POST['age'];
                $q=$db->prepare("INSERT INTO blood_donor (name,date_of_donation,blood_group,address,sex,age) VALUES
                    (:name,:date_of_donation,:blood_group,:address,:sex,:age)");
                $q->bindValue('name',$name);
                $q->bindValue('date_of_donation',$date_of_donation);
                $q->bindValue('blood_group',$blood_group);
                $q->bindValue('address',$address);
                $q->bindValue('sex',$sex);
                $q->bindValue('age',$age);
                if($q->execute())
                {
                    echo "<script>alert('Donor Registration Successful')</script>";
                }
            }
            
            ?>
            </div></center>
            
        </div>
        <div id= "footer"><h4 align="center">Team-14</h4>
            <p align="center"><a href="logout.php"><font color="white">Logout</font></a></p>
        </div>
    </div>    
</div>
</body>
</html>