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
      <title>User Analytics</title>
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
        <section class="sidebar">
          <?php include('sidebar.php');?>
          <!-- Sidebar user panel (optional) -->
          <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" id='analytics'>
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Analytics
				<small>your analytics</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Analytics</a></li>
				<li class="active">Here</li>
			</ol>
			</section>
<script type='text/javascript' src='js/analytics.js'></script>
<div class='row'>
  <div class='col-md-12'>
			<!-- Main content -->
			<section class="content">
                
				<div>
					<div class="row">
                                          <div id='ranks'>
                                          </div>
                                        </div>
                                        <div class="row">
						<div id='graphs'>
						</div>
					</div>
					
				</div>
					<!-- Your Page Content Here -->
			</section><!-- /.content -->
  </div>
</div>

                      <div class='row'>
                        <div class='col-md-12'>
                          <section class="competitive_content">
                            <div>
                              <div class="row">
                                <div id='ranks'>
                                </div>
                              </div>
                              <div class="row">
                                <div id='graphs'>
                                </div>
                              </div>
                            </div>
                          </section>
                        </div>
                      </div>
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
	
<!--------------------------Dev express chart lib ----------------->	
	<script src="chart/knockout-3.0.0.js"></script>
	<script src="chart/globalize.min.js"></script>
	<script src="chart/jChart.js"></script>
	<script src="chart/dx.chartjs.js"></script>

        
	</body>
	
	
	
</html>