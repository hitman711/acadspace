<html>
    <head>
        <title>activation</title>
    </head>
    <body onload='myfunction()'>
        <header></header>
        <main>
        <?php
            include('php/database.php');
            include('php/query.php');
            if(isset($_GET['user']) && isset($_GET['act']))
            {
            //echo "data recived";
                $db = mysql_select_db($database,$conn) or Die("Database not connected");
                $user = $_GET['user'];
                $activation = $_GET['act'];
                $sql = new querys();
                $query = mysql_query($sql->activation_test($user,$activation),$conn);
                $row = mysql_fetch_row($query);
                if($row){
                        if(mysql_query($sql->activation($user),$conn))
                            {
                            echo "<h1>your account is Activated now.<h1>";
                            echo "<h1>wait for some time we will redirect you on login page.<h1>";
                            mysql_close($conn);
                            }
                }else{
                    echo "Link is invalid";    
                }
                
            }else{
                echo "data not recived";
            }
        ?>
        </main>
        
        <footer></footer>
    </body>
    <script>
            function myfunction() {
                setInterval(function(){
                    window.location.replace('index.php');
                    },5000);
            }
        </script>
</html>
