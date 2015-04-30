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
    <script src="js/exam.js"></script>
    
    <div class="wrapper">

      <!-- Main Header -->
      <header class="main-header">
	<?php include('header.php'); ?>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <?php include('sidebar.php');?>
          <!-- Sidebar user panel (optional) -->
          <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Exams
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content" id='contents'>
              <div class='box box-primary'>
                <div class='box-header with-border'>
		  <h3 class='box-title'>Select Exam Type</h3>
		</div>
		<div class='box-body'>
		  <div class='row' id='selection_box'>
		  </div>
		</div>
              </div>
              
              <div class="box box-default" id='display_form'>
                <div class="box-header with-border" id='selected'>
                  <h3 class="box-title"></h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  </div><!-- /.box-tools -->
                </div><!-- /.box-header -->
<!--success box-->		
		<div class="callout callout-info" id='success' style='display: none'>
		</div>
<!--warning box -->		
                <div class="callout callout-danger" id='warning' style='display: none'>
		</div><!-- #warning -->
		
                <div class="box-body" id='form_box' style="display: block;">
                </div><!-- /.box-body -->

              </div>
              
          <!-- Your Page Content Here -->
	    <div id='level_1' style='display: none'>
              <div class="box-body" id="form_box">

                <div class="box box-default">
                  <div class="box-header with-border">
                    <h3 class="box-title">
                      		  Academic Record
                    </h3>
                    <div class="box-tools pull-right">
                      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div><!-- /.box-tools -->
                  </div>
		  <div class='box-body'><!-- /.box-header -->
		    <div id="level1" class="row">
		    </div>
		  </div>
                </div>
              </div>
	    </div>
             
	    <div id='level_2' style='display: none'>  
              <div class="box-body" id="form_box">

                <div class="box box-default">
                  <div class="box-header with-border">
                    <h3 class="box-title">
                      		  Compatative Exam Record
                    </h3>
                    <div class="box-tools pull-right">
                      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div><!-- /.box-tools -->
                  </div><!-- /.box-header -->
		  <div class='box-body'>
		    <div id="level2" class="row">
		    </div>
		  </div>
                </div>
              </div> 
            </div>
            
              
              
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
    <!-- POPUP -->    
  </body>
</html>