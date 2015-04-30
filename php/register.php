<?php
include('configuration.php');
include('query.php');
include('mail.php');

   if(isset($_POST['first']) &&
      isset($_POST['last']) &&
      isset($_POST['email']) &&
      isset($_POST['user']) &&
      isset($_POST['pass'])) 
    {
		$conn = mysql_connect($host, $admin,$pass) or Die("database connectivity failed");
         $fname =strip_tags($_POST['first']);
         $lname =strip_tags($_POST['last']);
         $email =strip_tags($_POST['email']);
         $username =strip_tags($_POST['user']);
         $pass = strip_tags($_POST['pass']);
         $salt = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 5);
         $pass = md5($pass+$salt);
         $activation = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 12);
         $db = mysql_select_db($database,$conn);
         $sql = new querys();
         $unique_code = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 15);
         //echo "$fname $lname $email $username $pass $salt $activation $unique_code";
         $query = $sql->register($fname,$lname,$email,$username,$pass,$salt,$activation,$unique_code);
         //echo $query;
         $insert = mysql_query($query,$conn);
         //echo $insert;
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