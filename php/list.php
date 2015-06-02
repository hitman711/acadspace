<?php
$sub ='#';
$check = array("Board Name"=>"../forms/data/$sub/board.php",
               "Medium"=>"../forms/data/$sub/medium.php",
               "Year of passing"=>"../forms/data/$sub/year_of_passing.php",
               "Institute Name"=>"../forms/data/$sub/institute.php",
               "University Name"=>"../forms/data/$sub/university.php",
               "College Name"=>"../forms/data/$sub/college.php",
               "Stream Name"=>"../forms/data/$sub/stream.php",);

$call = array("Board Name"=>'board_name',
               "Medium"=>'medium',
               "Year of passing"=>'year_of_passing',
               "Institute Name"=>'institute_name',
               "University Name"=>'university_name',
               "College Name"=>'college_name',
               "Stream Name"=>'stream_name');
               
if(isset($_POST['list_name']) && isset($_POST['field_name'])){
    //echo array_key_exists($_POST['list_name'],$check);
    if(array_key_exists($_POST['list_name'],$check)){
        $check[$_POST['list_name']] = str_replace("#",$_POST['field_name'],$check[$_POST['list_name']]);
        include($check[$_POST['list_name']]);
        $list = $$call[$_POST['list_name']];
        $list_name = $_POST['list_name']; 
        $pass = "<datalist id='$list_name'>";
        foreach($list as $key=>$value){
            $pass = $pass."<option value='$key'>";   
        }
        $pass = $pass."</datalist>";
        echo $pass;
    }
}


class verify {

    public function verification($sub,$key, $value){
	$check = array("Board Name"=>"../forms/data/$sub/board.php",
               "Medium"=>"../forms/data/$sub/medium.php",
               "Year of passing"=>"../forms/data/$sub/year_of_passing.php",
               "Institute Name"=>"../forms/data/$sub/institute.php",
               "University Name"=>"../forms/data/$sub/university.php",
               "College Name"=>"../forms/data/$sub/college.php",
               "Stream Name"=>"../forms/data/$sub/stream.php",);

	$call = array("Board Name"=>'board_name',
               "Medium"=>'medium',
               "Year of passing"=>'year_of_passing',
               "Institute Name"=>'institute_name',
               "University Name"=>'university_name',
               "College Name"=>'college_name',
               "Stream Name"=>'stream_name');

        if(array_key_exists($key,$check)){
            include($check[$key]);
            $list = $$call[$key];
            
            if(array_key_exists($value,$list)){
                return "success";
            }else{
                return "failure";
            }
        }   
    }

    public function validate($sub,$key, $value){
	$check = array("Board Name"=>"../forms/data/$sub/board.php",
               "Medium"=>"../forms/data/$sub/medium.php",
               "Year of passing"=>"../forms/data/$sub/year_of_passing.php",
               "Institute Name"=>"../forms/data/$sub/institute.php",
               "University Name"=>"../forms/data/$sub/university.php",
               "College Name"=>"../forms/data/$sub/college.php",
               "Stream Name"=>"../forms/data/$sub/stream.php",);

	$call = array("Board Name"=>'board_name',
               "Medium"=>'medium',
               "Year of passing"=>'year_of_passing',
               "Institute Name"=>'institute_name',
               "University Name"=>'university_name',
               "College Name"=>'college_name',
               "Stream Name"=>'stream_name');

        if(array_key_exists($key,$check)){
            include($check[$key]);
            $list = $$call[$key];
            
            if(array_key_exists($value,$list)){
                return $list[$value];
            }else{
                return "failure";
            }
        }   
    }
    
    
    public function get_keys($sub,$key, $value){
      $check = array("Board Name"=>"../forms/data/$sub/board.php",
               "Medium"=>"../forms/data/$sub/medium.php",
               "Year of passing"=>"../forms/data/$sub/year_of_passing.php",
               "Institute Name"=>"../forms/data/$sub/institute.php",
               "University Name"=>"../forms/data/$sub/university.php",
               "College Name"=>"../forms/data/$sub/college.php",
               "Stream Name"=>"../forms/data/$sub/stream.php",);

      $call = array("Board Name"=>'board_name',
               "Medium"=>'medium',
               "Year of passing"=>'year_of_passing',
               "Institute Name"=>'institute_name',
               "University Name"=>'university_name',
               "College Name"=>'college_name',
               "Stream Name"=>'stream_name');

       $key =ucwords($key); 
        if(array_key_exists($key,$check)){
            include($check[$key]);
            $list = $$call[$key];  
            foreach($list as $keys=>$val){
                if( $val== $value){
                    return $keys;
                }
            }
            //echo $list;
        }
          
    }
    
    
    
    
    
    
    
}


?>
