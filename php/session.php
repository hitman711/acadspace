<?php
include('configuration.php');
include('query.php');
$conn = mysql_connect($host, $admin,$pass) or Die("database connectivity failed");
session_start();
if(isset($_SESSION['login_user'])){
    //echo $_SESSION['login_user'];     
    $db = mysql_select_db($database, $conn);   
    $user_check =$_SESSION['login_user'];
    $query = new querys();
    $sql = mysql_query($query->session($user_check),$conn);
    $row = mysql_fetch_assoc($sql);
    if($row){
        $username =$row['username'];
        $user_valid = "$username";
    }else{
        mysql_close($conn);
        header('Location : ./index.php');
    }
}else{
    header('Location: ./index.php');
}
mysql_close($conn);
?>