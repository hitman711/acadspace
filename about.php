<?php
include('php/session.php');
?>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
  <head>
      <title>Acadspace About Us</title>
      <?php include('import.php');?>
    </head>
  <!--
  BODY TAG OPTIONS:
  =================
  Apply one or more of the following classes to get the 
  desired effect
  |---------------------------------------------------------|
  | SKINS         | skin-blue                               |
  |               | skin-black                              |
  |               | skin-purple                             |
  |               | skin-yellow                             |
  |               | skin-red                                |
  |               | skin-green                              |
  |---------------------------------------------------------|
  |LAYOUT OPTIONS | fixed                                   |
  |               | layout-boxed                            |
  |               | layout-top-nav                          |
  |               | sidebar-collapse                        |  
  |---------------------------------------------------------|
  
  -->
  <body class="skin-blue">
    
    
    <div class="wrapper">

      <!-- Main Header -->
      <header class="main-header">
        <?php include('header.php');?>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
          <?php include('sidebar.php');?>

        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            About Us
            <small>your analytics</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

<script src='js/about.js'></script>
        <!-- Main content -->
        <section class="content">
          <div class="box">
            <div class="box-header with-border" id="body_header">
                <div class='row' id='about_us'>
                    
                    <div class='col-md-12'>
                        <h2>Our Team</h2>
                        
                        <div id='member'>
<!-----------------------------------------JONHATHAN JOSHI------------------------------------->
                            <!--div class='col-md-4' id='img_div'>
                                <div id='member_img'>
                                    <img src='img/blank-profile.jpg'>
                                </div>
                                <div id='member_info'>
                                    <p id='member_name'>Dr. Jonathan Joshi</p>
                                    <p id='member_designation'><label>FOUNDER & CEO</label></p>
                                    <div id='member_social_net'>
                                        <ul>
                                            <li><i class="fa fa-facebook-square"></i></li>
                                            <li><i class="fa fa-google-plus-square"></i></li>
                                            <li><i class="fa fa-linkedin-square"></i></li>
                                            <li><i class="fa fa-twitter-square"></i></li>
                                        </ul></div>
                                    <p id='about_member'>He has a PhD in electrical engineering with a specialization in neuromorphic engineering based on VLSI and embedded systems from University of Southern California. He has over 7 years of experience in teaching and education strategy. He has received numerous teaching awards and research paper awards in the United States and holds a US patent as well. He advises many start up companies and is a director on the board of TDSWala a unit of E-Tax Services Pvt Ltd.</p>
                                </div>
                            </div-->
                            
<!----------------------------------GANESH GORE---------------------------------------------->
                            <!--div class='col-md-4' id='img_div'>
                                <div id='member_img'>
                                    <img src='img/blank-profile.jpg'>
                                </div>
                                <div id='member_info'>
                                    <p id='member_name'>Ganesh Gore</p>
                                    <p id='member_designation'><label>CTO</label></p>
                                    <div id='member_social_net'>
                                        <ul>
                                            <li><i class="fa fa-facebook-square"></i></li>
                                            <li><i class="fa fa-google-plus-square"></i></li>
                                            <li><i class="fa fa-linkedin-square"></i></li>
                                            <li><i class="fa fa-twitter-square"></i></li>
                                        </ul></div>
                                    <p id='about_member'>He has a PhD in electrical engineering with a specialization in neuromorphic engineering based on VLSI and embedded systems from University of Southern California. He has over 7 years of experience in teaching and education strategy. He has received numerous teaching awards and research paper awards in the United States and holds a US patent as well. He advises many start up companies and is a director on the board of TDSWala a unit of E-Tax Services Pvt Ltd.</p>
                                </div>
                            </div-->
                            
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="box-body" id='body_content'>
               
            </div>
          </div>
          
          
          
          <!-- Your Page Content Here -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <!-- Main Footer -->
      <footer class="main-footer">
        <?php  include('footer.php');?>
        
        </footer>

    </div><!-- ./wrapper -->

    <!-- REQUIRED JS SCRIPTS -->
    
    <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    
    <!-- Optionally, you can add Slimscroll and FastClick plugins. 
          Both of these plugins are recommended to enhance the 
          user experience -->
  </body>
</html>