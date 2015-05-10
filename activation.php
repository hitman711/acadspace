<html>
  <head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Log in</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.1.3.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="login-page" onload='myfunction()'>
    <div class="login-box">
      <div class="login-logo">
        <a href="index.php"><b><img src="img/acadspace.jpg" width="300px" height="150px"></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <?php
            include('php/configuration.php');
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
                    echo "<h1>Link is invalid</h1>";
                }

            }else{
                echo "<h1>data not recived</h1>";
            }
        ?>
      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.3 -->
    <script src="../../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script>
      function myfunction() {
                setInterval(function(){
                    window.location.replace('index.php');
                    },5000);
            }
    </script>
  </body>
</html>
