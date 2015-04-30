<?php
include('query.php');
include('configuration.php');
$call_function = new operation();

/*-------------------------------------------------------------------------------------the  below function take input form user and pass to specific function----------------------------------------------------------------------------*/
//users old saved record
if(isset($_POST['saved_user_name'])){
    $username = htmlspecialchars($_POST['saved_user_name']);    
    $get_available_record = $call_function->user_saved_record_info($username); 
    return $get_available_record;
}
//first selection box
if(isset($_POST['level_1_selection_box'])){
    $level = $_POST['level_1_selection_box'];
    $level_one_record = $call_function->first_selection_box($level);
    return $level_one_record;
}
//next level selection box
if(isset($_POST['next_level_info'])){
    $level = htmlspecialchars($_POST['next_level_info']);
    $next_level_info = $call_function->next_selection($level);
    return $next_level_info;
}
//display form
if(isset($_POST['get_form_to_display']) && isset($_POST['user_name'])){
    $form_display = htmlspecialchars($_POST['get_form_to_display']);
    $username = htmlspecialchars($_POST['user_name']);
    $display_form = $call_function->get_form_to_display($form_display,$username);
    return $display_form;
}


//saved form display
if(isset($_POST['user_name']) && isset($_POST['saved_form_no']) && isset($_POST['Attempt'])){
    $user = htmlspecialchars($_POST['user_name']);
    $form_no = htmlspecialchars($_POST['saved_form_no']);
    $attempt = htmlspecialchars($_POST['Attempt']);
    $get_available_filled_form = $call_function->get_available_fiiled_record($user, $form_no,$attempt);
    return $get_available_filled_form;
}

//insert user data
if(isset($_POST['insert_data']) &&  isset($_POST['insert_marks']) && isset($_POST['total']) ){
    $username = htmlspecialchars($_POST['insert_data']['user_name']);
    $form_no = htmlspecialchars($_POST['insert_data']['form']);
    $marks = $_POST['insert_marks'];
    $total = htmlspecialchars($_POST['total']);
    $validate_user_data = $call_function->validate_user_form_data($marks,$form_no);
    if($validate_user_data == "success"){
        $insert_user_record = $call_function->insert_user_record($username,$form_no,$marks, $total);
        if($insert_user_record == 'success'){
            $user_analytic_record = $call_function->user_analytic_record($username,$form_no);
            if($user_analytic_record =='success'){
                echo "success";
            }else{
                echo "failure";
            }
        }else{
            return $insert_user_record;
        }
    }else{
        echo "failure";    
    }
}


//update user data
if(isset($_POST['update_user_data']) &&  isset($_POST['data']) && isset($_POST['total']) && isset($_POST['Attempt'])){
    $username = htmlspecialchars($_POST['update_user_data']['user_name']);
    $form_no = htmlspecialchars($_POST['update_user_data']['form_no']);
    $updated_data = $_POST['data'];
    $total = htmlspecialchars($_POST['total']);
    $attempt_no = htmlspecialchars($_POST['Attempt']);    
    $validate_user_data = $call_function->validate_user_form_data($updated_data,$form_no);
    if($validate_user_data == "success"){
        $update_user_data = $call_function->update_user_data($username, $form_no, $updated_data,$total, $attempt_no);
        if($update_user_data == 'success'){
            $user_analytic_record = $call_function->user_analytic_record($username,$form_no);
            if($user_analytic_record =='success'){
               echo "success";
            }else{
               echo "failure";
            }
        }else{
            echo "failure";
        }   
    }else{
        echo "failure";
    }
}

//delete user data
if(isset($_POST['user_name']) && isset($_POST['delete_user_form']) && isset($_POST['Attempt'])){
    $username = htmlspecialchars($_POST['user_name']);
    $form_no = htmlspecialchars($_POST['delete_user_form']);
    $attempt_no =  htmlspecialchars($_POST['Attempt']);
    $delete_user_data = $call_function->delete_user_record($username, $form_no, $attempt_no);
    if($delete_user_data =='success'){
        $delete_analytic_record = $call_function->delete_analytic_record($username,$form_no);
        if($delete_analytic_record =='success'){
            $user_analytic_record = $call_function->user_analytic_record($username,$form_no);
            if($user_analytic_record=='success'){
                echo "success";
            }else{
                echo "failure";
            }
        }else{
            echo "failure";
        }
    }else{
        echo "failure";
    }
}




/*-------------------------------------------------------------------------------------database connection start , selection and close function define--------------------------------------------------------------------------------------*/
// database connection ,selection and close
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






/*--------------------------------------------------------------------------------------mian operation define on user input -----------------------------------------------------------------------------------------------------------------*/
//user operations
class operation {
    
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
    
//get form name
    public function get_form_name($form_code){
        global $sample_data;
        $connect = new databases();
        $db_connect = $connect->select_db($sample_data);
        $sql = new querys();
        $query = $sql->get_form_name($form_code);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return $row['form_title'];
        $connect->close_database();
    }
    
//user filled form record
    function user_saved_record($username){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->read_user_filled_form($this->user_unique_code($username));
        //echo $query;
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return $row['form_filled'];    
        $connect->close_database();
    }
    
//get user saved record
    function user_saved_record_info($username){
        $data = $this->user_saved_record($username);
        if($data){
            $pass =array();
            $data = json_decode($data,true);
            for($i =0; $i<$data['Parameter']['Total_Simple_Exam_Field']; $i++){
                $form_code = $data['Simple_Exam'][$i]['Form_Code'];
                $title = $this->get_form_name($form_code);
                $sub_type = $data['Simple_Exam'][$i]['form_type'];
                array_push($pass,array($sub_type,$title,$form_code)); 
            }
            $pass = array_filter($pass);
            sort($pass);
            $simple = array("simple"=>$pass);
            $pass = array();
            for($i =0; $i<$data['Parameter']['Total_Comp_Exam_Field']; $i++){
                $form_code =$data['Comp_Exam'][$i]['Form_Code'];
                $title = $this->get_form_name($form_code);
                $attempt =$data['Comp_Exam'][$i]['Attempt'];
                $table_name = $data['Comp_Exam'][$i]['Table_name'];
                $sub_type = $data['Comp_Exam'][$i]['form_type'];
                array_push($pass,array($sub_type,$title,$form_code,$table_name,$attempt,));
            }
            $pass = array_filter($pass);
            sort($pass);
            $comp = array("comp"=>$pass);
            echo json_encode(array_merge($simple,$comp));
            unset($pass,$simple,$comp);
        }
    }
    
//update user saved record
    function update_user_saved_record($user_code,$existing_data,$type,$new_data){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $obj = json_decode($existing_data);
        if($type == "acadmic"){
            $obj->{'Parameter'}->{'Total_Simple_Exam_Field'} = $obj->{'Parameter'}->{'Total_Simple_Exam_Field'}+1; 
            array_push($obj->{'Simple_Exam'},$new_data);
        }
        else if($type == "comp"){
            $obj->{'Parameter'}->{'Total_Comp_Exam_Field'} = $obj->{'Parameter'}->{'Total_Comp_Exam_Field'}+1; 
            array_push($obj->{'Comp_Exam'},$new_data);    
            }
        $obj = json_encode($obj);
        $query = $sql->update_user_filled_form($user_code,$obj);
        $result = mysql_query($query,$connect->database_info());
        if($result){
            return "success";
        }else{
            return "failure";
        }
    }
//insert new user saved record
    public function insert_new_user_saved_record($user_code,$type,$new_data){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $data = array("Parameter"=>array("Total_Simple_Exam_Field"=>0,"Total_Comp_Exam_Field"=>0),"Simple_Exam"=>array(),"Comp_Exam"=>array());
        if($type =="acadmic"){
            $data['Parameter']["Total_Simple_Exam_Field"] = $data['Parameter']["Total_Simple_Exam_Field"]+1;
            array_push($data['Simple_Exam'],$new_data);
    
        }else if($type=="comp"){
            $data['Parameter']["Total_Comp_Exam_Field"] = $data['Parameter']["Total_Comp_Exam_Field"]+1;
            array_push($data['Comp_Exam'],$new_data);
        }
        $data =json_encode($data,true);
        $query = $sql->insert_user_filled_form($user_code,$data);
        $result = mysql_query($query,$connect->database_info());
        if($result){
            return "success";
        }else{
            return "failure";
        }
        $connect->close_database();
    }
    
//get attempt record
    public function get_attempt_record($user_code, $table_name, $form_no){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->get_attempt_record($user_code,$table_name,$form_no);
        $result = mysql_query($query, $connect->database_info());
        $row =  mysql_fetch_assoc($result);
        if(!empty($row)){
            return $row['attempt'];
        }else{
            return "0";
        }
         $connect->close_database();
    }
    
//first selection box
    public function first_selection_box($first_table){
        global $sample_data;
        $connect = new databases();
        $db_connect = $connect->select_db($sample_data);
        $sql = new querys();
        $query = $sql->get_field($first_table);
        $result = mysql_query($query,$connect->database_info());
        $pass = array();
        for($i=0; $i<mysql_num_rows($result); $i++){
            $row = mysql_fetch_assoc($result);
            //print_r($row);
            $data = array("level_data"=>$row['Level_Data']
                          ,"level_code"=>$row['Level_Code']
                          ,"next_level"=>$row['Next_Level']
                          ,"next_table"=>$row['Next_Table']);
            array_push($pass,$data);
        }
        echo json_encode($pass);
        $connect->close_database();
    }
    
    
//validate compatative exam code
    public function validate_exam_code($form_no){
        global $sample_data;
        $connect = new databases();
        $db_connect = $connect->select_db($sample_data);
        $sql = new querys();
        $query = $sql->validate_exam_code($form_no);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        if(!empty($row)){
            return $row['table_name'];    
        }else{
            return "failure";
        }
        $connect->close_database();
    }
    
//next selection box info 
    public function next_selection($next_information){
        $split = preg_split('/\-/',$next_information);
        $level_code =$split[0];
        $next_level =$split[1];
        $next_table = $split[2];
        if($next_level== '1'){
            echo "form";
        }
        else{
            global $sample_data;
            $connect = new databases();
            $db_connect = $connect->select_db($sample_data);
            $sql = new querys();
            $query = $sql->get_next_field($level_code,$next_table);
            $result = mysql_query($query,$connect->database_info());
            $pass = array();
            for($i=0; $i<mysql_num_rows($result); $i++){
              $row = mysql_fetch_assoc($result);
                $data = array("level_data"=>$row['Level_Data']
                          ,"level_code"=>$row['Level_Code']
                          ,"next_level"=>$row['Next_Level']
                          ,"next_table"=>$row['Next_Table']);
                array_push($pass,$data);
            }
            echo json_encode($pass);
            $connect->close_database();
        }
    }  
//get form record
    public function get_form_info($table_name,$form_no){
        global $sample_data;
        $connect = new databases();
        $db_connect = $connect->select_db($sample_data);
        $sql = new querys();
        $query = $sql->get_form($table_name,$form_no);
        $result = mysql_query($query,$connect->database_info());
        $row= mysql_fetch_assoc($result);
        return $row;
        $connect->close_database();
    }
    
    
//get form field
    public function get_form_field($form_no){
        global $sample_data;
        $connect = new databases();
        $db_connect = $connect->select_db($sample_data);
        $sql = new querys();
        $query = $sql->get_form_field($form_no);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        if($row){
            return $row;
        }else{
            return "failure";
        }
        $connect->close_database();
    }
//get form to display
    public function get_form_to_display($form_no,$username){
        $split = preg_split('/\-/',$form_no);
        $form_code =$split[0];
        $next_level =$split[1];
        $next_table = $split[2];
        $data = json_decode($this->user_saved_record($username),true);
        if(!empty($data) && stristr(json_encode($data['Simple_Exam']),$form_code)){
            if(stristr(json_encode($data['Simple_Exam']),$form_code)){
                echo "filled";
            }
        }
        else{
            $form_data = $this->get_form_info($next_table,$form_code);
            $form_field = file_get_contents($form_data['form_field']);
            $security = file_get_contents($form_data['security']);
            $pass_data =array(
                              "form_no"=>$form_code,
                              "form_field"=>$form_field,
                              "security"=>$security
                              );
            echo json_encode($pass_data,true);
        }
    }
    
//insert record
    public function insert_record($table_name,$user_code, $form_no, $marks,$total_marks,$attempt){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query =$sql->insert_record($table_name,$user_code, $form_no, $marks,$total_marks,$attempt);
        $result = mysql_query($query,$connect->database_info());
        if($result == '1'){
            return "success";
        }else{
            return "failure";
        }
        $connect->close_database();
    }
    
    public function form_sub_type($form_no){
        global $sample_data;
        $connect = new databases();
        $db_connect = $connect->select_db($sample_data);
        $sql = new querys();
        $query = $sql->form_sub_type($form_no);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        return $row['sub_type'];
        $connect->close_database();
    }
    
    
    
//add user record in database
    public function insert_user_record($username,$form_no,$marks, $total_user_mark){
        $user_code = $this->user_unique_code($username);
        $validate_exam_code = $this->validate_exam_code($form_no);
        $sub_type = $this->form_sub_type($form_no);
        //compatative record
        if($validate_exam_code != "failure"){
            $table_name = $validate_exam_code;
            $attempt = $this->get_attempt_record($user_code,$table_name,$form_no);
            if($attempt !=0){
                $attempt = $attempt+1;
            }else{
                $attempt = 1;
            }
            
            $insert_record = $this->insert_record($table_name,$user_code,$form_no,$marks,$total_user_mark,$attempt);
            if($insert_record == "success"){
                $new_exam = array("form_type"=>$sub_type,"Form_Code"=> "$form_no","Table_name"=> "$table_name","Attempt"=>$attempt);
                $data = $this->user_saved_record($username);
                if(empty($data)){
                    $insert_new_record = $this->insert_new_user_saved_record($user_code,'comp',$new_exam);
                    if($insert_new_record =="success"){
                        return "success";
                    }else{
                        return "failure";
                    }
                }else{
                    $new_exam = array("form_type"=>$sub_type,"Form_Code"=> "$form_no","Table_name"=> "$table_name","Attempt"=>$attempt);
                    $update_user_filled_form = $this->update_user_saved_record($user_code,$data,'comp',$new_exam);
                    return $update_user_filled_form;  
                }
            }
        }
        //Academic record
        else{
            $attempt = 0;
            $table_name = "user_record";
            $insert_record = $this->insert_record($table_name,$user_code,$form_no,$marks,$total_user_mark, $attempt);
            if($insert_record =="success"){
                $new_exam = array("form_type"=>$sub_type,"form_type"=>$sub_type,"Form_Code"=> "$form_no","Table_name"=> "$table_name");
                $data = $this->user_saved_record($username);
                if(empty($data)){
                    $insert_new_record = $this->insert_new_user_saved_record($user_code,'acadmic',$new_exam);
                    if($insert_new_record =="success"){
                        return "success";
                    }else{
                        return "failure";
                    }
                }else{
                    $new_exam = array("form_type"=>$sub_type,"form_type"=>$sub_type,"Form_Code"=> "$form_no","Table_name"=> "$table_name");
                    $update_user_filled_form = $this->update_user_saved_record($user_code,$data,'acadmic',$new_exam);
                    return $update_user_filled_form;
                }
            }
            else{
                return "failure to insert record";
            }
        }
    }

//get user saved record
    public function get_user_record($user,$table_name,$form_no,$attempt){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->get_user_record($user,$table_name,$form_no,$attempt);
        $result = mysql_query($query, $connect->database_info());
        $row = mysql_fetch_assoc($result);
        if($row){
            return array_filter($row);
        }else{
            return "failure";
        }
        $connect->close_database();
    }
    
    
//show saved user record
    public function get_available_fiiled_record($username, $form_no , $attempt_no){
        $user_code = $this->user_unique_code($username);
        $form_data = $this->get_form_field($form_no);
        $table_name = $this->validate_exam_code($form_no);
        if($table_name == "failure"){
            $table_name = "user_record";
        }
        if($form_data !="failure"){
            $form_field = file_get_contents($form_data['form_field']);
            $security = file_get_contents($form_data['security']);
            $form_title =$form_data['form_title'];
            
            $form_name = $this->get_form_name($form_no);
            if($form_name !="failure"){
                $user_data = $this->get_user_record($user_code,$table_name,$form_no,$attempt_no);
                
                if($user_data !="failure"){
                    $user_data = json_encode($user_data);              
                    $pass = array("title"=>"$form_title",
                                  "form_field"=>$form_field,
                                  "security"=>$security,                                 
                                  "user_data" =>"$user_data",
                                  "attempt_no" =>"$attempt_no"
                                  );
                    //print_r($pass);
                    echo json_encode($pass,true);
                }
                else{
                   return "failure"; 
                }
            }else{
                return "failure";
            }
        }else{
            return "failure";
        }
    }
    
    
//update user database record
    public function update_record($user,$form_no,$table_name,$data, $total_user_data, $attempt){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->update_comp_record($user,$form_no,$table_name,$data, $total_user_data ,$attempt);
        $result = mysql_query($query,$connect->database_info());
        if($result){
            return "success";
        }else{
            return "failure";
        }
        
    }
    
//update data
    public function update_user_data($username, $form_no, $user_data, $total_user_data ,$attempt){
        $user_code = $this->user_unique_code($username);
        $validate_form_no = $this->validate_exam_code($form_no);
        if($validate_form_no !="failure" ){
            $table_name = $validate_form_no; 
        }else{
            $table_name ='user_record';
        }
        $update_info = $this->update_record($user_code,$form_no,$table_name,$user_data, $total_user_data ,$attempt);
        //return $update_info;
        if($update_info == "success"){
            return "success";
        }else{
            return "failure";
        }
    }
    
    
//delete user data
    public function delete_record($user_code,$form_no ,$table_name, $attempt_no){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->delete_record($table_name, $user_code, $form_no,$attempt_no);
        $result = mysql_query($query, $connect->database_info());
        //echo $query;
        if($result){
            return "success";
        }else{
            return "failure";
        }
        $connect->close_database();
    }
    
    
//delete user saved record
    public function delete_user_saved_record($username,$user_code, $table_name, $form_no,$attempt){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $data = $this->user_saved_record($username);
        if($data != "failure"){
            $data = json_decode($data,true);
            if(stristr($table_name,"comp")){
                for($i=0; $i<$data['Parameter']['Total_Comp_Exam_Field']; $i++){
                    if($data['Comp_Exam'][$i]['Form_Code']==$form_no && $data['Comp_Exam'][$i]['Attempt']==$attempt){
                        unset($data['Comp_Exam'][$i]);
                        $data['Parameter']['Total_Comp_Exam_Field'] = $data['Parameter']['Total_Comp_Exam_Field']-1;
                    }
                }
                $data['Comp_Exam'] = array_values($data['Comp_Exam']);
            }
            else{
                for($i=0; $i<=$data['Parameter']['Total_Simple_Exam_Field']; $i++){
                    if($data['Simple_Exam'][$i]['Form_Code']==$form_no){
                        unset($data['Simple_Exam'][$i]);
                        $data['Parameter']['Total_Simple_Exam_Field'] = $data['Parameter']['Total_Simple_Exam_Field']-1;
                    }
                }
                $data['Simple_Exam'] = array_values($data['Simple_Exam']);
            }
            $data = json_encode($data,true);
            $query = $sql->update_user_filled_form($user_code, $data);
            $result = mysql_query($query, $connect->database_info());
            if($result){
                return "success";    
            }else{
                return "failure";
            }
        }
        else{
            return "failure";
        }
        $connect->close_database();
    }
//delete user data and user saved data
    public function delete_user_record($username, $form_no, $attempt_no){
        $user_code = $this->user_unique_code($username);
        $table_name = $this->validate_exam_code($form_no);
        if($table_name == 'failure'){
            $table_name = "user_record";
        }
        $delete_record = $this->delete_record($user_code,$form_no,$table_name, $attempt_no);
        $delete_record =1;
        if($delete_record != "failure"){
            $delete_user_saved_record = $this->delete_user_saved_record($username, $user_code,$table_name,$form_no, $attempt_no);
            if($delete_user_saved_record =='success'){
                return "success";
            }else{
                return "failure";
            }
        }else{
            return "failure";
        }
    }
    
    
 
 /*------------------------------------------------------------------------------------add analytic information -----------------------------------------------------------------*/  
//update user_analytic record
    public function user_analytic_record($username,$form_no){
        $unique_code =$this->user_unique_code($username);
        $form_no = $form_no;
        //echo "$unique_code  $form_no";
        $record = $this->read_user_analytic_stats($unique_code,$form_no);
        if($record !="failure"){
            $update = $this->update_user_analytic_record($unique_code,$form_no, $record);
            return $update;
        }else{
            $insert = $this->insert_user_analytic_record($unique_code,$form_no);
            return $insert;
        }
    }
    
 
//read user analytic information 
    function read_user_analytic_stats($unique_code){
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->read_user_analytic_stats($unique_code);
        $result = mysql_query($query,$connect->database_info());
        $row = mysql_fetch_assoc($result);
        //echo print_r($row);
        if($row){
            return $row;    
        }else{
            return "failure";
        }
        $connect->close_database();
    }  

//insert user analytic information
    public function insert_user_analytic_record($unique_code,$form_no){
        $unique_code = $unique_code;
        $record_update_stats = 1;
        $record_update_info =json_encode(array("Total_Edited_Forms"=>$record_update_stats, "Edited_Form_List"=>array($form_no)));       
        //echo " $unique_code, $record_update_stats , $record_update_info, $completed_analytics , $partial_analytic";
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->insert_user_analytic_stats($unique_code, $record_update_stats , $record_update_info);
        $result = mysql_query($query,$connect->database_info());
        if($result){
            return "success";
        }else{
            return "failure";
        }
        $connect->close_database();
    }

    
//update user analytic record    
    public function update_user_analytic_record($unique_code,$form_no,$old_data){
        $old_data = $old_data;
        $unique_code = $unique_code;
        $record_update_stat = json_decode($old_data['record_update_stat'],true)+1; 
        $update_info = json_decode($old_data['record_update_info'],true);
        $update_info['Total_Edited_Forms'] = $update_info['Total_Edited_Forms']+1;
        array_push($update_info['Edited_Form_List'],$form_no);
        $record_update_info = json_encode($update_info);
        //echo "$unique_code ,  $record_update_stat ,  $record_update_info";
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->update_user_analytic_stats($unique_code,$record_update_stat,$record_update_info);
        //echo $query;
        $result = mysql_query($query, $connect->database_info());
        if($result){
            return "success";
        }else{
            return "failure";
        }
        $connect->close_database();
    }
    

//delete user analytic records    
public function delete_analytic_record($username,$form_no){
        $unique_code =$this->user_unique_code($username);
        $form_no = $form_no;
        //echo "$unique_code  $form_no";
        $record = $this->read_user_analytic_stats($unique_code,$form_no);
        if($record !="failure"){
            $delete = $this->delete_user_analytic_record($unique_code,$form_no,$record);
            return $delete;
        }else{
            return "success";
        }
    }
    
    
    
//delete user analytic record    
    public function delete_user_analytic_record($unique_code,$form_no,$old_data){
        $old_data = $old_data;
        $unique_code = $unique_code;
        $update_info = json_decode($old_data['record_update_info'],true);
        for($i=0; $i<sizeof($update_info['Edited_Form_List']); $i++){
            if($update_info['Edited_Form_List'][$i]==$form_no){
                unset($update_info['Edited_Form_List'][$i]);
            }
        }
        $update_info['Edited_Form_List'] = array_values($update_info['Edited_Form_List']);
        $record_update_stat = json_decode($old_data['record_update_stat'],true);
        $record_update_stat = sizeof($update_info['Edited_Form_List']);
        $update_info['Total_Edited_Forms'] = $record_update_stat;
        $record_update_info = json_encode($update_info);
        global $database;
        $connect = new databases();
        $db_connect = $connect->select_db($database);
        $sql = new querys();
        $query = $sql->update_user_analytic_stats($unique_code,$record_update_stat,$record_update_info);
        $result = mysql_query($query, $connect->database_info());
        if($result){
            return "success";
        }else{
            return "failure";
        }
        //$connect->close_database();
    }    
    
    



/*----------------------------------User form data validation -----------------------*/

    public function validate_user_form_data($user_data,$form_no){
        $form_data = $this->get_form_field($form_no);
        $form_data = json_decode(file_get_contents($form_data['form_field']),true);
        $i =0;
        for($i; $i<$form_data['Total_Fields']; $i++){
            if($form_data['Field_'.($i+1)]['limit'] && $form_data['Field_'.($i+1)]['input_length'] && $form_data['Field_'.($i+1)]['input_type']){
                $input_type = $form_data['Field_'.($i+1)]['limit'];
                $input_length = $form_data['Field_'.($i+1)]['input_length'];
                $input_format =$form_data['Field_'.($i+1)]['input_type'];
                if(gettype($input_type)=="array"){
                    if(in_array(strtoupper($user_data[$i]),$input_type) && $input_length == sizeof($user_data[$i])){
                        continue;
                    }else{
                        return "failure";
                        break;
                    }    
                }else{
                    if($input_length >= sizeof($user_data[$i])){
                        if($input_format == "date"){
                            if(date("m/d/Y")>=date('m/d/Y',strtotime($user_data[0]))){
                               continue; 
                            }else{
                                return "failure";
                                break;     
                            }
                        }else{
                            continue;
                        }
                    }else{
                        return "failure";
                        break;
                    }
                }
            }
        }
        return "success";
    }
}


?>