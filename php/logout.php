<?php
include('configuration.php');
include('query.php');
session_start();
$active_code =$_SESSION['login_user'];
$conn = mysql_connect($host, $admin,$pass) or Die("database connectivity failed");
$db = mysql_select_db($database, $conn);   
$user_check =$_SESSION['login_user'];
$sql = new querys();
$query = $sql->delete_active_user($active_code);
$result = mysql_query($query,$conn);

if($result =='1'){
    if(session_destroy()) // Destroying All Sessions
    {
        header("Location: ../index.php"); // Redirecting To Home Page
    }
}else{
    header("Location: ../dashboard.php");
}
mysql_close($conn);




?>