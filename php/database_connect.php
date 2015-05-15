<?php
class databases {
    function database_info(){
        $conn = mysql_connect(HOST,USERNAME,PASSWORD) or Die("error");
        if($conn){
            return $conn;    
        }else{
            echo "error";
        }
        
    }
    
    function select_db(){
        $db = mysql_select_db(MAIN_DATABASE,$this->database_info());
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

?>