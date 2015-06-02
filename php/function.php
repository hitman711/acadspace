<?php
require_once('query.php');
require_once('configuration.php');
require_once('database_connect.php');

$call_operation = new operation();
if(isset($_POST['profile_data'])){
    $active_code = $_POST['profile_data'];
    $user_data = $call_operation->user_data($active_code);
    echo $user_data;
}

if(isset($_POST['educational_data'])){
    $send_back = [];
    $active_code = $_POST['educational_data'];
    $verify_availability = $call_operation->available_data($active_code);
    $educational_data = $call_operation->educational_data($active_code);
    $send_back['form_data'] = $educational_data;
    $send_back['user_data'] =$verify_availability;
    //print_r($send_back['user_data']);
    echo json_encode($send_back);
}

if(isset($_POST['user']) && isset($_POST['update_form']) && isset($_POST['info'])){
    $username =htmlspecialchars($_POST['user']);
    $form_name = htmlspecialchars($_POST['update_form']);
    $information = $_POST['info'];
    $form_name = htmlspecialchars($_POST['update_form']);
    $data =json_decode($information);
    $check_availability = $call_operation->check_availability_of_user_data($username,$form_name);

    if($check_availability =="update"){
        $update_data = $call_operation->update_educational_data($username,$data,$form_name);  
        if($update_data == "success"){
            echo $check_availability;
        }else{
            echo $update_data;
        }
    }else{
        $insert_data = $call_operation->insert_educational_data($username,$data,$form_name);
        if($insert_data =="success"){
            echo $check_availability;
        }else{
            echo $insert_data;
        }
    }
}


class operation {
/*---------------------geu user unique code -------------------------------*/
    public function user_data($username){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($username);
        $data = $call_function->registration_information($unique_code);
        return $data;
    }

/*---------------------------to collect already user filled data -------------------------------------*/
    public function available_data($active_code){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($active_code);
        $pass = [];
        $forms = $this->educational_data($active_code);
        $forms = json_decode($forms);

//echo json_encode($forms,true);
        foreach($forms as $key=>$value){
            $table_name = $key;
            $check_availability = $call_function->get_user_data($unique_code,$table_name);
//echo " $check_availability";
            $check_availability = json_decode($check_availability,true);
            if($check_availability !='failure'){
                if($check_availability != null){
//print_r($check_availability);
                    foreach($check_availability as $column_name=>$key_code){

                        if($column_name =='id' && $column_name='unique_code'){
                            
                        }else{
//print_r($check_availability);
                            $check_availability[$column_name] = $call_function->get_key_value($table_name,$column_name,$key_code);
                        }
                    }
                    $check_availability = json_encode($check_availability);
                    $pass[$key] = $check_availability;

                }else{
                   $pass[$key] = $check_availability;
                }
            }else{
            }
        }
        //echo json_encode($pass,true);
        return json_encode($pass,true);
    }
    
/*-------------------------------collect form filled data ----------------------------*/
    public function educational_data($active_code){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($active_code);
        $data = $call_function->educational_information($unique_code);
        return $data;
    }
    
/*-------------------------------verify user data already filled ------------------------*/
    public function check_availability_of_user_data($active_code,$table_name){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($active_code);
        $check_available = $call_function->check_available($unique_code,$table_name);
        if($check_available =="success"){
            return "update";
        }else{
            return "insert";
        }
    }
    
/*------------------------------update Educational data -------------------------*/
    public function update_educational_data($active_code,$user_data,$form_name){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($active_code);
        $update_form_data = $call_function->update_form_information($unique_code ,$form_name,$user_data);
        echo $update_form_data;
    }



    
    
/*------------------------------insert Educational data -------------------------*/
    public function insert_educational_data($active_code,$user_data,$form_name){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($active_code);
        $insert_form_data = $call_function->insert_form_information($unique_code ,$form_name,$user_data);
        echo $insert_form_data;
        
    }
    
/*----------------------------verify user filled data is correct or not --------------*/
    public function validate_educational_data($active_code,$user_data, $form_name){
        $call_function = new functions();
        $unique_code = $call_function->user_unique_code($active_code);
        $form_data = $call_function->verify_form_information($unique_code ,$form_name,$user_data);
        if($form_data =="success"){
            return "success";
        }else{
            return "failure";
        }
    }
}


//Class function collect all database related and information gathering operation  
class functions {
    
/*----------------------------------------find user unique code in database--------------*/
    function user_unique_code($username){
        //global $database;
        $connect = new databases();
        $db_connect = $connect->select_db();
        $sql = new querys();
        $query = $sql->get_user_code($username);
        $result = mysql_query($query, $connect->database_info());
        $row = mysql_fetch_assoc($result);
        return $row['unique_code'];
        $connect->close_database();
    }


/*-------------------------------------------get user registration information from database ----------------------*/
    function registration_information($unique_code){
        //global $database;
        $connect = new databases();
        $db_connect = $connect->select_db();
        $sql = new querys();
        $query = $sql->read_register($unique_code);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return json_encode($row,true);
        $connect->close_database();
    }


/*-----------------------------------------get profile structure information ---------------------------------------*/
    function educational_information($unique_code){
        //global $sample_data;
        $connect = new databases();
        $db_connect = $connect->select_db();
        $sql = new querys();
        $query = $sql->read_profile($unique_code);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return json_encode($row);
        $connect->close_database();
    }

/*---------------------------check availability -------------------------------------------*/
    function check_available($unique_code,$table_name){
        //global $database;
        $connect = new databases();
        $db_connect = $connect->select_db();
        $sql = new querys();
        $query = $sql->verify_user_field_data($unique_code,$table_name);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        if(!empty($row)){
            return "success";
        }else{
            return "failure";
        }
        $connect->close_database();
    }
    
    

    
/*---------------------------------------check user already filled data or not -------------------------------------*/
    function get_user_data($unique_code,$table_name){
        //global $database;
        $connect = new databases();
        $db_connect = $connect->select_db();
        $sql = new querys();
        $query = $sql->read_user_field_data($unique_code,$table_name);
        $result = mysql_query($query,$connect->database_info());
        if($result){
            $row = mysql_fetch_assoc($result);
            if($row){
                return json_encode($row);
            }else{
                return "failure";
            }    
        }
        $connect->close_database();
    }
    

//get user profile data for verification
    function form_information($unique_code,$form_name){
        //global $database;
        $connect = new databases();
        $db_connect = $connect->select_db();
        $sql = new querys();
        $query = $sql->edu_form_data($unique_code,$form_name);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return $row[$form_name];
        $connect->close_database();
    }

/*------------------------------------------update data in database ------------------------*/

    function update_form_information($unique_code ,$form_name,$user_data){
        include_once('list.php');
        $keys =[];
        $data = [];
        foreach($user_data as $value){
            $check = json_decode($value);
            foreach($check as $key=>$val){
                $new = new verify();
                $collect = $new->validate($form_name,$key,$val);
                array_push($data,$collect);
                array_push($keys,$key);
            }
        }
        $pass  =$this->update_data($unique_code ,$form_name,$keys,$data);
        if($pass =="success"){
            return "success";    
        }else{
            return "failure";
        };
    }

/*----------------------------------update query ---------------------------------*/
    public function update_data($unique_code ,$form_name,$column_name,$value){
        //global $database;
        $connect = new databases();
        $db_connect = $connect->select_db();
        $sql = new querys();
        $query = $sql->update_profile_query($unique_code,$column_name,$form_name,$value);
        $result = mysql_query($query,$connect->database_info());
        if($result =='1'){
            return "success";
        }else{
            return "failure";
        }
        $connect->close_database();
    }





    
/*-----------------------------------------insert data in database -------------------------*/
    function insert_form_information($unique_code ,$form_name,$user_data){
        include_once('list.php');
        $keys =[];
        $data = [];
        foreach($user_data as $value){
            $check = json_decode($value);
            foreach($check as $key=>$val){
                $new = new verify();
                $collect = $new->validate($form_name,$key,$val);
                array_push($data,$collect);
                array_push($keys,$key);
            }
        }
        $pass = $this->insert_data($unique_code ,$form_name,$keys,$data);
        return $pass;
    
    }

/*-------------------------------------------------Run insert data Query -----------------------*/
    public function insert_data($unique_code ,$form_name,$column_name,$value){
        //global $database;
        $connect = new databases();
        $db_connect = $connect->select_db();
        $sql = new querys();
        $query = $sql->insert_profile_query($unique_code,$column_name,$form_name,$value);
        $result = mysql_query($query,$connect->database_info());
        if($result =='1'){
            return "success";
        }else{
            return "failure";
        }
        $connect->close_database();
    }
    
    
/*-------------------------user filled information display value -----------------------------*/
    function get_key_value($form_name,$key,$val){
        include_once('list.php');
        $response ='';
//echo "$form_name = $key  = $val";
        $new = new verify();
//echo "$key = $val";
        $get_key = $new->get_keys($form_name,$key,$val);

        return $get_key;
    }
    

/*---------------------------------verify filled information ------------------------------*/    
    function verify_form_information($unique_code ,$form_name,$user_data){
        include_once('list.php');
        $response ='';
        foreach($user_data as $value){
            $check = json_decode($value);
            foreach($check as $key=>$val){
                $new = new verify();
                $verify = $new->verification($form_name,$key,$val);
                if($verify =="failure"){
                    $response ="failure";
                    break;
                }else{
                    $response ="success";
                }
                //echo $key;
            }
        }
        return $response;
    }
}



?>