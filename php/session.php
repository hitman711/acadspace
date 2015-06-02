<?php
require_once('configuration.php');
include('query.php');
require_once('database_connect.php');
$connect = new databases();
$db_connect = $connect->select_db();
session_start();
if(isset($_SESSION['login_user'])){
    //echo $_SESSION['login_user'];        
    $user_check =$_SESSION['login_user'];
    $query = new querys();
    $sql = mysql_query($query->session($user_check,'register'),$connect->database_info());
    $sql2 = mysql_query($query->session($user_check,'institute'),$connect->database_info());
    $row = mysql_fetch_assoc($sql);
    //print_r($row);
    $row2 = mysql_fetch_assoc($sql2);
    //print_r($row2);
    if($row){
        $username =ucwords($row['username']);
        $user_valid = "$username";
        $userType='student';
    }elseif($row2){
        $username =ucwords($row2['username']);
        $user_valid = "$username";
        $userType='institute';
    }
    else{
        header('Location : ./index.php');
    }
}else{
    header('Location: ./index.php');
}
$connect->close_database();
?>