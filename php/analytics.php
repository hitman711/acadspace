<?php
include('query.php');
include('config.php');
$host = 'localhost';
$admin='root';
$pass='28263506';
$database ='acadspace';
$sample_data= 'acadmic';


//load user analytic stats

$call_operation = new operation();
if(isset($_POST['users'])){
    $active_code = $_POST['users'];
    $user_analytics_stat = $call_operation->user_stats($active_code);
    return $user_analytics_stat;
}


//Database
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


//OPERATIONS
class operation {

//username using user code
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

//user stats
    function user_stats($username){
        $unique_code = $this->user_unique_code($username);
        $user_analyatic_record = $this->user_analytic_stats($unique_code);
        return $user_analyatic_record;
        
    }
    
    function user_analytic_stats($unique_code){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->user_analytic_stats($unique_code);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        //echo print_r($row);
        echo $row['Completed_Analytics'];
        $connect->close_database();
    }

}


?>