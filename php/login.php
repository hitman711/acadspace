<?php
require_once('configuration.php');
include('query.php');
session_start();
if(isset($_POST['submit'])){
    if(isset($_POST['username']) && isset($_POST['password']) && isset($_POST['userType']))   
    {
        $conn = mysql_connect(HOST, USERNAME,PASSWORD) or Die("database connectivity failed");
        $username = $_POST['username'];
        $pass = $_POST['password'];
        $table_name ='';
        if(strtolower($_POST['userType'])=="student"){
            $table_name = 'register';
        }else{
            $table_name = strtolower($_POST['userType']);
        }
        $db = mysql_select_db(MAIN_DATABASE, $conn) or Die("database not selected");
        $sql = new querys();
        $query = $sql->login($table_name,$username); 
        $check = mysql_query($query,$conn);
        $row = mysql_fetch_row($check);
        if($row){
            $password = $row[0];
            $salt = $row[1];
            $unique_code = $row[3];
            if($row[2] == 'activated'){
                $pass = md5($pass.$salt);    
                if($password == $pass){
                    $query = $sql->active_user($username);
                    $result = mysql_query($query,$conn);
                    $row = mysql_fetch_assoc($result);
                    if($row['username'] != $username){
                        $active_key = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 10);
                        $query = $sql->insert_active_user($username,$unique_code,$active_key);
                        $result = mysql_query($query,$conn);
                        if($result == "1"){
                            $_SESSION['login_user'] = $active_key;
                            echo $_SESSION['login_user'];
                            header('Location: ../dashboard.php');    
                        }
                        else{
                            $response = "user already active";
                        }
                    }else{
                        $active_key = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 10);
                            $query = $sql->get_active_code($username);
                            $result = mysql_query($query,$conn);
                            $row = mysql_fetch_assoc($result);
                            $_SESSION['login_user'] = $row['active_code'];
                            echo $_SESSION['login_user'];
                            header('Location: ../dashboard.php');  
                    }
                }else{
                    $response = "username and password does not match";
                }
            }else{
                $response =  "username and password does not match.";
            }
        }else{
            $response = "username and password does not match.";
        }
    }else{
    
    }
    mysql_close($conn);
}
?>