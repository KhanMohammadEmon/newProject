<?php
include '_dbconnect.php';

session_start();
$a = 0;
$check = 0;
$t = 0;

$queries = array();
parse_str($_SERVER['QUERY_STRING'], $queries);
$id = $queries['id'];
echo $id ;
$sql = "DELETE FROM  ans_before_varification WHERE S_no = $id";

$result = mysqli_query($con, $sql);
echo $result;

if(!$result){
    echo "ga";
    $_SESSION['msg'] = " Can't delete, Ambulence is appointed with some patients";
}

$con->close();

header("Location: /EduShare/ans_list.php");
exit();