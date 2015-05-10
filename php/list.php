<?php
$sub ='#';
$check = array("Board Name"=>"../forms/data/$sub/board.php",
               "Medium"=>"../forms/data/$sub/medium.php",
               "Year of passing"=>"../forms/data/$sub/year_of_passing.php",
               "School Name"=>"../forms/data/$sub/school_name.php");

$call = array("Board Name"=>'board_name',
               "Medium"=>'medium',
               "Year of passing"=>'year_of_passing',
               "School Name"=>'school_name');
               
if(isset($_POST['list_name']) && isset($_POST['field_name'])){
    //echo array_key_exists($_POST['list_name'],$check);
    if(array_key_exists($_POST['list_name'],$check)){
        $check[$_POST['list_name']] = str_replace("#",$_POST['field_name'],$check[$_POST['list_name']]);
        include($check[$_POST['list_name']]);
        $list = $$call[$_POST['list_name']];
        $list_name = $_POST['list_name']; 
        $pass = "<datalist id='$list_name'>";
        for($i=0; $i<sizeof($list); $i++){
            $pass = $pass."<option value='$list[$i]'>";    
        }
        $pass = $pass."</datalist>";
        echo $pass;
    }
}


?>