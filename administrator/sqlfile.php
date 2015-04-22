<?php

include('query.php');
$host = 'localhost';
$admin = 'root';
$pass = '28263506';
$sample_data = 'acadmic';
$database ='acadspace';

//database connection
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
    }z
    
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


class querys_function {
    public function load_tables(){
        $connect = new databases();
        $db_connect = $connect->select_db('acadspace');
        $sql = new querys;
        $query = $sql->load_tables();
        $result = mysql_query($query, $connect->database_info());
        echo $result;
        $connect->close_database(); 
    }
    
}
















?>