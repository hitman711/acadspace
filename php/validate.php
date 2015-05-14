<?php
require_once('configuration.php');
include('query.php');
$conn = mysql_connect(HOST, USERNAME, PASSWORD) or Die("database connectivity failed");

if(isset($_POST['username']))
{    
    $db = mysql_select_db(MAIN_DATABASE,$conn) or Die('Database not selected');
    $username = $_POST['username'];
    $sql = new querys();
    $query = $sql->username_validate($username);
    $check = mysql_query($query,$conn);
    $row = mysql_fetch_row($check);
    if($row){
        echo "invalid";
    }else{
        echo "valid";
    }
    mysql_close();
}

if(isset($_POST['email']))
{
    $db = mysql_select_db(MAIN_DATABASE,$conn) or Die('Database not selected');
    $email = $_POST['email'];
    if(filter_var($email, FILTER_VALIDATE_EMAIL) === false){
        echo "invalid";
    }else{
        $sql = new querys();
        $query = $sql->email_validate($email);
        $check = mysql_query($query,$conn);
        $row = mysql_fetch_row($check);
        if($row){
            echo "invalid";
        }else{
            echo "valid";
        }
        mysql_close();
    }
}






?>