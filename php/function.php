<?php
include('query.php');
include('config.php');
$host = 'localhost';
$admin='root';
$pass='28263506';
$database ='acadspace';
$sample_data= 'acadmic';

$call_operation = new operation();
if(isset($_POST['profile_data'])){
    $active_code = $_POST['profile_data'];
    $user_data = $call_operation->user_data($active_code);
    echo $user_data;
}

if(isset($_POST['educational_data'])){
    $active_code = $_POST['educational_data'];
    $educational_data = $call_operation->educational_data($active_code);
    echo $educational_data;
}





class databases {
    function database_info(){
        global $host;
        global $admin;
        global$pass;
        $conn = mysql_connect($host,$admin,$pass) or Die("error");
        if($conn){
            return $conn;    
        }else{
            echo "error";
        }
        
    }
    
    function select_db($database_name){
        $db = mysql_select_db($database_name,$this->database_info());
        if($db){
            return $db;    
        }else{
            echo "error";
        }
        
    }
    function close_database(){
        return mysql_close($this->database_info());
    }
}
  

class operation {
    public function user_data($username){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($username);
        $data = $call_function->registration_information($unique_code);
        return $data;
    }
    
    public function educational_data($username){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($username);
        $data = $call_function->educational_information($unique_code);
        return $data;
    }
}


  
class functions {
//get user unique code
    function user_unique_code($username){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->get_user_code($username);
        $result = mysql_query($query, $connect->database_info());
        $row = mysql_fetch_assoc($result);
        return $row['unique_code'];
        $connect->close_database();
    }
    
    function registration_information($unique_code){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->read_register($unique_code);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return json_encode($row,true);
        $connect->close_database();
    }
    
    function educational_information($unique_code){
        global $sample_data;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $result = $sql->get_form_field();
        return "hello";
    }
}




?>