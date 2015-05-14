<?php
//include three file for further processing
require_once('configuration.php');
include('query.php');
include('mail.php');

//Check all necessary data available 
   if(isset($_POST['first']) &&
      isset($_POST['last']) &&
      isset($_POST['email']) &&
      isset($_POST['user']) &&
      isset($_POST['pass']) &&
      isset($_POST['rpass']) &&
      (isset($_POST['pass']) == isset($_POST['rpass']))
      /*
      &&
      isset($_POST['s_type']) &&
      isset($_POST['s_board']) &&
      isset($_POST['s_name']) &&
      isset($_POST['s_stream'])
      */
      )
    {
	$conn = mysql_connect(HOST, USERNAME, PASSWORD) or Die("database connectivity failed");
        $fname =mysql_real_escape_string(strip_tags($_POST['first']));
        $lname =mysql_real_escape_string(strip_tags($_POST['last']));
        $email =mysql_real_escape_string(strip_tags($_POST['email']));
        $username =mysql_real_escape_string(strip_tags($_POST['user']));
        $pass = mysql_real_escape_string(strip_tags($_POST['pass']));
        $salt = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 5);
        $pass = md5($pass+$salt);
        $activation = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 12);
        $db = mysql_select_db(MAIN_DATABASE,$conn);
        $sql = new querys();
        $unique_code = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 15);
        $profileImg =0;
        

        //$profile_img = getimagesize($_FILES['profile_img']["tmp_name"]);
        $query = $sql->register($fname,$lname,$email,$username,$pass,$salt,$activation,$unique_code);
        //echo $query;
        $insert = mysql_query($query,$conn);
        $insert =1;
        if($insert =='1'){
           $mail = new mails();
           if($mail->activationmail($username,$email,$activation) =='1'){
               echo "Activation key send on your mail<br>
           click below to redirect login page<br><a href='index.php'>Login<a>";
           }
         }
	   mysql_close($conn);
     }

?>