<?php
include('query.php');
include('configuration.php');
/*
$host = 'localhost';
$admin='root';
$pass='28263506';
$database ='acadspace';
$sample_data= 'acadmic';
*/
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

if(isset($_POST['user']) && isset($_POST['update_form']) && isset($_POST['info'])){
    $username =htmlspecialchars($_POST['user']);
    $form_name = htmlspecialchars($_POST['update_form']);
    $information = $_POST['info'];
    $validate_user_data = $call_operation->validate_educational_data($username,$information,$form_name);
    return $validate_user_data;
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
    
    public function educational_data($active_code){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($active_code);
        $data = $call_function->educational_information($unique_code);
        return $data;
    }
    
    public function validate_educational_data($active_code,$user_data, $form_name){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($active_code);
        $form_data = $call_function->verify_form_information($unique_code ,$form_name,$user_data);
        if($form_data !="failure"){
            $update_data = $call_function->update_form_information($unique_code ,$form_name,$user_data);
            if($update_data =="success"){
                return "success";
            }else{
                return "failure";
            }
        }
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

//user registration information
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

//get user profile data
    function educational_information($unique_code){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->read_profile($unique_code);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return json_encode($row);
        $connect->close_database();
    }

//get user profile data for verification
    function form_information($unique_code,$form_name){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->edu_form_data($unique_code,$form_name);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return $row[$form_name];
        $connect->close_database();
    }

//update user profile
    function update_form_information($unique_code,$form_name, $user_data){
        $form_data = json_decode($this->form_information($unique_code,$form_name),true);
        $user_info = json_decode($user_data,true);
        for($i=0; $i<sizeof($user_info);$i++){
            $form_label = split(",",$user_info[$i]);
            $form_data[$form_label[0]]['ans'] = $form_label[1];    
        }
        $form_data = json_encode($form_data);
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->update_form_data($unique_code,$form_name,$form_data);
//VERIFICATION remains
        //$result = mysql_query($query,$connect->database_info());
        //$row = mysql_fetch_assoc($result);
        //return $row[$form_name];
        $connect->close_database();
    }
    
    
    function verify_form_information($unique_code ,$form_name,$user_data){
        $form_data = json_decode($this->form_information($unique_code,$form_name),true);
        $user_info = json_decode($user_data,true);
        for($i=0; $i<sizeof($user_info);$i++){
            $form_label = split(",",$user_info[$i]);
//verification code goes here            
            //$form_data[$form_label[0]]['ans'] = $form_label[1];    
        }
    }
}




?>