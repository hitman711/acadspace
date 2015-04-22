<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script src='index.js'></script>
        <link href='index.css' rel='stylesheet'>
    </head>
    
    <body>
        <header class='page-header'>
            <div class='title'><img style='width: 200px; height: inherit'src='../img/acadspace.jpg'></div>
        </header>
        
        <section id='main'>
            <?php
            include('phpfunction.php');
            for($i=1; $i<=mysql_num_rows($result); $i++){
                $row = mysql_fetch_assoc($result);
                $form_id = $row['form_id'];
                $form_field = json_decode(stripcslashes($row['form_field']),true);
                $javasctipt = $form_field['Append'];
                $form_data = $form_field['form_data'];
                //echo $form_data;
                echo "<div><h1>$form_id</h1>";
                echo "<h2>Javascript Code</h2>";
                echo "<textarea rows='60' cols='100' id='jscode'>$javasctipt</textarea>";
                echo "<table class='table' id='".$form_id."'>";
                for($j=1; $j<=$form_data['Total_Fields']; $j++){
                    echo "<tr><th>Field ".$j."</th></tr>";
                    echo "<tr>";
                    foreach($form_data['Field_'.$j] as $key=> $value){
                        echo "<td><h4>".$key."</h4></td>";    
                    }
                    
                    echo "</tr><tr>";
                    foreach($form_data['Field_'.$j] as $key=> $value){
                        echo "<td><input type='text' id='".$key."' value='".stripcslashes(json_encode($value))."'/></td>";    
                    }
                    echo "</tr>";        
                    
                }
                echo "<table>";
                echo "<center><button title=".$form_id." class='btn btn-primary' id='update' >Update</button></center>";
                echo "</div>";
            }
            
            ?>
            
        </section>
        
        <footer>
            
        </footer>
        
    </body>
</html>