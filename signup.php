<?php
$check = 0;
$check_pass = 0;
$check_email  = 0;

include "_dbconnect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST"){
    
    $name = $_POST['name'];
    $email = $_POST['email'];
    $pass1 = $_POST['pass1'];
    $pass2 = $_POST['pass2'];
    $date = $_POST['date'];
    $gender= $_POST['gender'];
   
    if ($name == null) {
        $a = 1;
        $check = 1;
    }
    if ($email == null) {
        $a = 1;
        $check = 1;
    }
    if ($pass1 == null || strlen($pass1) < 6) {
        $a = 1;
        $check = 1;
    }
    if ($pass2 == null || strlen($pass2) < 6) {
        $a = 1;
        $check = 1;
    }
    if ($gender == null) {
        $a = 1;
        $check = 1;
    }
    if ($date == null) {
        $a = 1;
        $check = 1;
    }
    if ($check == 0) {
        if ($pass1 == $pass2) {
            $check_pass = 1;

        $sql2 = "SELECT * FROM user WHERE u_email = '$email'";
        $result1 = mysqli_query($con, $sql2);
        $num1 = mysqli_num_rows($result1);
        
        if ($num1 == 0) {
        $sql = "INSERT INTO `user` (`u_name`, `u_email`, `u_gender`, `u_password`, `date`) 
            VALUES ('$name', '$email', '$gender', '$pass1', '$date');";
            $result = mysqli_query($con, $sql);
        
            header("Location:/EduShare/login.html");

            exit();
        }
               
        }
    }else{
        header("Location:/EduShare/signup.html");
        
    }
    

}
