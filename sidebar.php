<div class="user-panel">
            <div class="pull-left image">
              <img src="img/blank-profile.jpg" class="img-circle" alt="User Image" id='user_profile'/>
            </div>
            <div class="pull-left info">
              <p><?php if(isset($user_valid)){echo $user_valid;}?></p>
              <!-- Status -->
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- search form (Optional) -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->

          <!-- Sidebar Menu -->
          <ul class="sidebar-menu">
            <li class="header">HEADER</li>
            <!-- Optionally, you can add icons to the links -->
            <li id='exam'><a href="exam.php"><i class="fa fa-file-text-o"></i><span>Exam</span></a></li>
            <li><a href="analytics.php"><i class="fa fa-pie-chart"></i><span> Analytics</span></a></li>
            <li><a href="analytics.php"><i class="fa fa-user"></i><span> Friends</span></a></li>
            <li><a href="analytics.php"><i class="fa fa-trophy"></i><span> Record</span></a></li>
            <li><a href="analytics.php"><i class="fa fa-users"></i><span> About Us</span></a></li>
            <!--
            <li><a href="#"><span>Another Link</span></a></li>
            <li class="treeview">
              <a href="#"><span>Multilevel</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="#">Link in level 2</a></li>
                <li><a href="#">Link in level 2</a></li>
              </ul>
            </li>
            -->
          
          </ul>