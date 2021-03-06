<?php

class querys {
    
//user login
    public function username_validate($username){
        $username_validate = "SELECT `username` from `register` where `username` ='$username'";
        return $username_validate;
    }
    
//validate email
    public function email_validate($email){
        $email_validate = "SELECT `email` from `register` where `email` ='$email'";
        return $email_validate;
    }
        
//registeration
    public function register($fname,$lname, $email,$username, $pass, $salt,$status, $uniqe_code){
        $register = "INSERT INTO `register`(`fname`, `lname`, `email`, `username`, `password`,`salt`,`status`,`unique_code`) VALUES ('$fname','$lname', '$email','$username','$pass','$salt','$status','$uniqe_code')";
        return $register;
    }
    
//read registration

    public function read_register($unique_code){
        $read_register = "SELECT `fname`, `lname`, `email`, `username` FROM `register` WHERE `unique_code`='$unique_code'";
        return $read_register;
    }

    
//activated_data
    public function activation_test($user,$activation){
        $activation_test = "SELECT `username` FROM `register` WHERE `username`='$user' AND `status`='$activation'";
        return $activation_test;
    }
    
//activation
    public function activation($user){
        $activation = "UPDATE `register` SET `status` ='activated' WHERE `username`='$user'";
        return $activation;
    }
    
//login
    public function login($table_name,$username){
        $login = "SELECT `password`,`salt`,`status`,`unique_code` FROM `$table_name` WHERE `username`='$username'";
        return $login;
    }
    
//validate active user
    public function active_user($username){
        $active_user = "SELECT `username` FROM `active_user` WHERE `username`='$username'";
        return $active_user;
    }

//get active user code
    public function get_active_code($username){
        $active_user = "SELECT `active_code` FROM `active_user` WHERE `username`='$username'";
        return $active_user;
    }

    
//add new active user
    public function insert_active_user($username,$unique_code,$active_code){
        $active_user = "INSERT INTO `active_user`(`username`, `unique_code`, `active_code`) VALUES ('$username','$unique_code','$active_code')";
        return $active_user;
    }
    
//delete active user
    public function delete_active_user($active_code){
        $active_user = "DELETE FROM `active_user` WHERE `active_code`='$active_code'";
        return $active_user;
    }
    
    
//session
    public function session($active_key,$table_name){
        $session = "SELECT CONCAT(`fname`,' ',`lname`) AS `username` FROM `$table_name` WHERE `username`=(SELECT `username` from `active_user` where active_code='$active_key')";
        //$session = "SELECT `id`, `username` FROM `active_user` WHERE `active_code`='$active_key'";
        return $session;
    }
    
/*---------------------------------------------------------------------------User Profile--------------------------------------------------------*/    

//read profile data
    public function read_profile($username){
        $read_profile = "SELECT `primary`, `secondary`, `undergraduate`, `postgraduate`, `doctorate` FROM `edit_profile`";
        return $read_profile;
    }
    
    public function edu_form_data($username,$form_name){
        $edu_form_data = "SELECT `$form_name` FROM `user_profile` WHERE `user_code`='$username'";
        return $edu_form_data;
    }
    
    public function update_form_data($username,$form_name,$form_data){
        $update_form_data = "UPDATE `user_profile` SET `$form_name`='$form_data' WHERE `user_code`='$username'";
        return $update_form_data;
    }
    
    public function verify_user_field_data($username,$table_name){
        $verify_available = "SELECT `unique_code` FROM `$table_name` WHERE `unique_code`='$username'";
        return $verify_available;
    }
    
    
    public function read_user_field_data($unique_code,$table_name){
        $read_user_data = "SELECT * FROM `$table_name` WHERE `unique_code`='$unique_code'";
        return $read_user_data;
    }
    
    
    public function insert_profile_query($username, $column_name, $form_name, $data){
        $col_name ='';
        $data_name ='';
        for($i=0; $i<sizeof($column_name); $i++){
            $insert_col_name =strtolower($column_name[$i]);
            $col_name = $col_name."`$insert_col_name`";
            $data_name = $data_name."'$data[$i]'";
            if($i != (sizeof($column_name) -1)){
                $col_name = $col_name.",";
                $data_name = $data_name.",";
            }else{
                
            }
        }
        $insert_profile_query = "INSERT INTO `$form_name`(`unique_code`,$col_name) VALUES ('$username',$data_name)";
        return $insert_profile_query;
    }
    
    
    public function update_profile_query($username, $column_name,$form_name, $data){
        $pass ='';
        for($i=0; $i<sizeof($column_name); $i++){
            $insert_col_name =strtolower($column_name[$i]);
            $pass = $pass."`$insert_col_name` ='$data[$i]'";
            if($i != (sizeof($column_name) -1)){
                $pass = $pass.",";    
            }else{
                
            }
            
        }
        $insert_profile_query = "UPDATE `$form_name` SET $pass WHERE `unique_code` = '$username'";
        return $insert_profile_query;
    }
    
    

/*--------------------------------------------------------------------------------------above function define user registration, login and session data -------------------------------------------------------------------------------- */
//get table name
    public function get_table_name($form_no){
        $get_table_name = "SELECT `table_name` FROM `comp_exam_mapping` WHERE `form_code`='$form_no'";
        return $get_table_name;
    }
    
    
    //get user record
    public function get_user_record($user_code,$table_name,$form_code, $attempt){
        $get_user_record = "SELECT `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `data_field_8`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`,total FROM `$table_name` WHERE `user_code`='$user_code' AND `form_code`='$form_code' AND `attempt`='$attempt'";
        return $get_user_record;
    }
    
    //get attempt record
    public function get_attempt_record($user_code, $table_name, $form_no){
        $get_attempt = "SELECT MAX(`attempt`) As `attempt` FROM `$table_name` WHERE `form_code`='$form_no' AND `user_code`='$user_code'";
        //$get_attempt = "SELECT `attempt` FROM `$table_name` WHERE `form_code`='$form_no' AND `user_code`='$user_code'";
        return $get_attempt;
    }
    
    
    //check availability record
    public function check_availability($user_code, $table_name, $form_no){
        $check_availability = "SELECT `user_code` AS `validity` FROM `$table_name` WHERE `form_code`='$form_no' AND `user_code`='$user_code'";
        return $check_availability;
        //return $get_attempt;
    }
    
    
    
    
    
    //filled information
    public function get_form_field($form_no){
        $get_form_filed ="SELECT `total_field`,`form_field`,`security` , `form_title` FROM `form_field` WHERE `form_id`='$form_no'";
        return $get_form_filed;
    }
    
    //get form sub type
    public function form_sub_type($form_no){
        $form_sub_type = "SELECT `sub_type` FROM `sub_type` WHERE `form_no`='$form_no'"; 
        return $form_sub_type;
    }
    

    //get field
    public function get_field($table){
        $get_field = "SELECT `Level_Data`, `Level_Code`, `Next_Level`, `Next_Table` FROM `$table`";
        return $get_field;
    }
    
    //get next field
    public function get_next_field($parent,$table){
        $get_next_field = "SELECT `Level_Data`, `Level_Code`, `Next_Level`, `Next_Table` FROM $table where `parent_code`=$parent";
        return $get_next_field;
    }
    
    //get form
    public function get_form($form, $form_no){
        $get_form = "SELECT `form_field`,`security` FROM `$form` where `form_id`='$form_no'";
        return $get_form;
    }
    
    //get form name
    public function get_form_name($form_no){
        $get_form_name = "SELECT `form_title` FROM `form_field` WHERE `form_id`='$form_no'";
        return $get_form_name;
    }
    
    //validate user filled form
    public function validate_user_filled_form($user_code){
        $validate_user_filled_form = "SELECT `form_filled`FROM `user_filled_form` WHERE `user_code`='$user_code'";
        return $validate_user_filled_form;
    }

    
    //validate exam form
    public function validate_exam_code($form_no){
        $validate_exam_code ="SELECT `table_name`, `exam_name`, `exam_type`, `multiple` FROM `comp_exam_mapping` WHERE `form_code`='$form_no'";
        return $validate_exam_code;
    }
    
    
    //user_unique_code
    public function get_user_code($username){
        $get_user_code = "SELECT `unique_code` FROM `active_user` WHERE `active_code`='$username'";
        return $get_user_code;
    }
    
    //insert user acadmic record
    public function insert_record($table_name,$user_code, $form_code, $data, $total,$attempt){
        $field_name = "";
        $field_value = "";
        for($i=0; $i<sizeof($data); $i++){
            $data[$i]= mysql_real_escape_string($data[$i]);
            $field_name = $field_name."`data_field_".($i+1)."`,";
            $field_value = $field_value."'$data[$i]',";
        }
        $field_name = substr($field_name,0,-1);
        $field_value = substr($field_value,0,-1);
        $insert_record = "INSERT INTO `$table_name`(`user_code`, `form_code`,$field_name,`attempt`,`total`) VALUES ('$user_code','$form_code',$field_value,'$attempt','$total')";
        return $insert_record;
    }
    
    //insert user competative record
    public function insert_comp_record($user_code,$form_code,$table_name, $data, $attempt){
        $field_name = "";
        $field_value = "";
        for($i=0; $i<sizeof($data); $i++){
            $data[$i]= mysql_real_escape_string($data[$i]);
            $field_name = $field_name."`data_field_".($i+1)."`,";
            $field_value = $field_value."'$data[$i]',";
        }
        $field_name = substr($field_name,0,-1);
        $field_value = substr($field_value,0,-1);
        $insert_comp_record ="INSERT INTO `$table_name`(`user_code`,`form_code`,$field_name,`attempt`) VALUES ('$user_code','$form_code',$field_value,'$attempt')";
        return $insert_comp_record;
    }
    
    
    //update user record
    public function update_record($user_code, $form_code, $data){
        $update_value ="";
        for($i=0; $i<sizeof($data)-1; $i++){
            $data[$i]= mysql_real_escape_string($data[$i]);
            $update_value = $update_value."`data_field_".($i+1)."` = '$data[$i]',";
        }
        $update_value = substr($update_value,0,-1);
        $update_record = "UPDATE `user_record` SET $update_value WHERE `user_code`='$user_code' AND `form_code`= '$form_code'";
        return $update_record;

    }
    
    //update user comp record
    public function update_comp_record($user_code,$form_code,$table_name, $data, $total,$attempt){
        $update_value ="";
        for($i=0; $i<sizeof($data); $i++){
            $data[$i]= mysql_real_escape_string($data[$i]);
            $update_value = $update_value."`data_field_".($i+1)."` = '$data[$i]',";
        }
        $update_value = substr($update_value,0,-1);
        $update_comp_record = "UPDATE `$table_name` SET $update_value ,`total`='$total' WHERE `user_code`='$user_code' AND `form_code`= '$form_code' AND `attempt`= '$attempt'";
        return $update_comp_record;
    }    
    
    //read form_filled_record
    public function read_user_filled_form($username){
        $read_filled_form ="SELECT `form_filled` FROM `user_filled_form` WHERE `user_code`='$username'";
        return $read_filled_form;
    }
    
    //update form_filled_record
    public function update_user_filled_form($username, $data){
        $update_filled_form ="UPDATE `user_filled_form` SET `form_filled`='$data' WHERE `user_code`='$username'";
        return $update_filled_form;
    }
    
    public function insert_user_filled_form($username, $data){
        $update_filled_form ="INSERT INTO `user_filled_form`(`user_code`, `form_filled`) VALUES ('$username','$data')";
        return $update_filled_form;
    }
    
    
    
    //delete user record
    public function delete_record($table_name, $user_code, $form_no,$attempt){
        $delete_user_record = "DELETE FROM `$table_name` WHERE `user_code`='$user_code' AND `form_code`='$form_no' AND `attempt`='$attempt'";
        return $delete_user_record;
    }
    



/*----------------------------------------------------user analytic stats ---------------------------------------------------------------------------------*/

    public function user_analytic_stats($unique_code){
        $user_analytics_stat = "SELECT `Completed_Analytics`, `Partial_Analytics` FROM `user_analytic_stat` WHERE `user_id`='$unique_code'";
        return $user_analytics_stat;
    }

    public function read_user_analytic_stats($unique_code){
        $read_user_analytics_stat = "SELECT `user_id`, `record_update_stat`, `record_update_info` FROM `user_analytic_stat` WHERE `user_id`='$unique_code'";
        return $read_user_analytics_stat;
    }

    
    public function insert_user_analytic_stats($unique_code,$record_update_stats,$record_update_info){
        $insert_user_analytic_form = "INSERT INTO `user_analytic_stat`(`user_id`, `record_update_stat`, `record_update_info`) VALUES ('$unique_code','$record_update_stats','$record_update_info')";
        return $insert_user_analytic_form;
    }

    public function update_user_analytic_stats($unique_code,$record_update_stats,$record_update_info){
        $update_user_analytic_form = "UPDATE `user_analytic_stat` SET `record_update_stat`='$record_update_stats',`record_update_info`='$record_update_info' WHERE `user_id`='$unique_code'";
        return $update_user_analytic_form;
    }


}
?>