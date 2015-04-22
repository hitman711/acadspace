<?php

$host = 'localhost';
$admin = 'root';
$pass = '28263506';
$sample_data = 'acadmic';
$database ='acadspace';
$conn = mysql_connect($host,$admin,$pass);
$db = mysql_select_db($sample_data);
$query = "SELECT `form_id`, `form_field`, `form_title` FROM `form_field`";
$result = mysql_query($query,$conn);
return $result;
mysql_close();
  

  
  
  

?>