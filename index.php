<?php

include('php/login.php');
if(isset($_SESSION['login_user'])){
    header('Location: dashboard.php');
}
?>
<?php 
	require_once('php/configuration.php');
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Acadspace login</title>
    <link rel="icon" href="<?php echo FEVICON;?>" type="image/png" sizes="16x16">
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
  <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="index.php"><b><img src="<?php echo LOGO;?>" width="300px" height="150px"></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sign in</p>
          <p><?php if(isset($response)){ echo $response;}?></p>
        <form action="" method="post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Username" name='username'/>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Password" name='password'/>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
	  <div class="form-group has-feedback">
	    <label>Sign in as</label>
	    <select class="form-control" name='userType'>
		<option value='student' id='0'>Student</option>
		<option value='institute' id='1'>Institute</option>
		<option value='institute' id='2'>Class</option>
	    </select>
	  </div>
          <div class="row">
            <div class="col-md-12">    
              <div class="checkbox icheck">
                <!--label>
                  <input type="checkbox"> Remember Me
                </label-->
                <label>To sign up as Institute or Class please mail us at <a href="mailto:contact@acadspace.com">contact@acadspace.com</a></label>

              </div>                        
            </div><!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat" id="logged_in" name="submit">Sign In</button>
            </div><!-- /.col -->
          </div>
        </form>

        <!--div class="social-auth-links text-center">
          <p>- OR -</p>
          <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
          <a href="#" class="btn btn-block btn-social btn-google-plus btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
        </div--><!-- /.social-auth-links -->

        <!--a href="#">I forgot my password</a--><br>
        <a href="register.php" class="text-center">Signup as student</a>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>