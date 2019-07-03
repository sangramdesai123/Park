<?php 
session_start();if(!isset($_SESSION['username'])){   header("Location: ../login.php");   exit(); } 

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cidco Parking  | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="./dist/css/seatchart.css">
    <link rel="shortcut icon" href="#" />
    <script type="text/javascript" src="./dist/js/seatchart.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">

        <!-- Logo -->
        <a href="index.php" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              
              
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                  <span class="hidden-xs"><?php echo $_SESSION['username']; ?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    <p>
                      <?php echo $_SESSION['username']; ?>
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-success btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="../logout.php" class="btn btn-danger btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>

        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><?php echo $_SESSION['username']; ?></p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="active"><a href="index.php"><i class="fa fa-circle-o"></i>Main Dashboard</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>Booking</span><i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="slotstaus.php"><i class="fa fa-circle-o"></i> Slots Status</a></li>
                <li><a href="booking.php"><i class="fa fa-circle-o"></i> Booking Status</a></li>
              </ul>
            </li>
            <li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>Oprator Info</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="oprator.php"><i class="fa fa-circle-o"></i> Oprator info</a></li>
              </ul>
            </li>

            <li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>Customer Info</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="customer.php"><i class="fa fa-circle-o"></i> Customer info</a></li>
                <li><a href="vehical.php"><i class="fa fa-circle-o"></i> Vehical info</a></li>
              </ul>
            </li>

           <li class="treeview">
              <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>Analysis</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="Analysis.php"><i class="fa fa-circle-o"></i>Graphical Data </a></li>
               
               
               
              </ul>
            </li>
      
            <li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i> <span>Forms</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="./newmap.php"><i class="fa fa-circle-o"></i> Create New Map</a></li>
                <li><a href="./newoprator.php"><i class="fa fa-circle-o"></i> New Oprator</a></li>
              </ul>
            </li>
            
           
            <li class="header">LABELS</li>
            <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Info boxes -->
          <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-user"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text"><strong>Live Customer <br> count<strong></span>
                  <span class="info-box-number" id='cust_cnt'><small>%</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-red"><i class="fa fa-clock-o"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text" >Avgerage Parking<br> Time</span>
                  <span class="info-box-number" id="avg_park" ></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>

            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-green"><i class="fa fa-inr" aria-hidden="true"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text" >Revenue</span>
                  <span class="info-box-number"id='revenue'></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text" >Unique<br>customers</span>
                  <span class="info-box-number"id="unique_cust"></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
          </div><!-- /.row -->



            <div class="row">
            <div class="col-md-12">
              <div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title"><strong>Live Status of slots</strong></h3>
                  
                    <div id="seatmaps">
                    </div>
                    
                     
                      
                 
                       
                      
                    </div>
                   
                     



                  </div>
                </div><!-- /.box-header -->
                </div><!-- ./box-body -->
                 </div><!-- /.box-footer -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->



          
          
   




        </section><!-- /.content -->    
      </div><!-- /.content-wrapper -->

      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.3.0
        </div>
        <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
      </footer>

      

    </div><!-- ./wrapper -->

      <!-- Dashboad Anayltics -->
     <script>
             var xmlhttp = new XMLHttpRequest();


             xmlhttp.onreadystatechange = function () {

               if (this.readyState == 4 && this.status == 200) {
                 console.log("reached");

                 var analytics = JSON.parse(this.responseText);
                 console.log("analytics");
                 console.log(analytics);
                
                 
                if(analytics[0]["customer_count"]!=null)  
                document.getElementById("cust_cnt").textContent=analytics[0]["customer_count"];
                else{
                  document.getElementById("cust_cnt").textContent="0";
                }

                if(analytics[1]["avg_park_time"]!=null)
                document.getElementById("avg_park").textContent=analytics[1]["avg_park_time"]+" mins";
                else{
                  document.getElementById("avg_park").textContent="0";
                }

                
                if(analytics[2]["revenue"]!=null)                
                document.getElementById("revenue").textContent="Rs "+analytics[2]["revenue"];
                else{
                document.getElementById("revenue").textContent="Rs 0";
                }

                if(analytics[3]["unique_cust"]!=null)
                document.getElementById("unique_cust").textContent=analytics[3]["unique_cust"];
                else{
                  document.getElementById("unique_cust").textContent="0";
                }



                



               } else {
                 console.log("Eror in request to server for querries");
               }
             }
             xmlhttp.open("GET", "./queries/dashboard_querry.php", true);
             xmlhttp.send();



      </script>
     


    <script >

      
      var xmlhttp2 = new XMLHttpRequest();
      var parking_info = [];

      xmlhttp2.onreadystatechange = function () {

        if (this.readyState == 4 && this.status == 200) {
          console.log("reached inside for getting parking infor");

          parking_info = JSON.parse(this.responseText);
          console.log(parking_info);
          var baksa=document.getElementById('seatmaps');
          for(var x=0;x<parking_info.length;++x){
           var map_el= document.createElement("div");
           var leg_el= document.createElement("div");
           map_el.setAttribute("id","map"+(x+1));
           leg_el.setAttribute("id","leg"+(x+1));
           baksa.appendChild(map_el);
           baksa.appendChild(leg_el);
          }



          // get request for live_status of slots inside parking_info get status becoz this should happen
          //after parking_info get request
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function () {

            if (this.readyState == 4 && this.status == 200) {
              console.log("reached inside for getting live status");
              var live_status;
              try {
                live_status = JSON.parse(this.responseText);
                console.log(live_status);
              } catch (e) {
                live_status = null;
              }


              // Reserved and disabled seats are indexed
              // from left to right by starting from 0.
              // Given the seatmap as a 2D array and an index [R, C]
              // the following values can obtained as follow:
              // I = cols * R + C
              var sel = {};
              for (var x = 1; x <= parking_info.length; ++x) sel[x] = new Array();
              console.log("sdfsdfdsfs");
              if (live_status != null) {

                for (var x = 0; x < live_status.length; x++) {
                  // var entry=live_status[x];
                  //0 indexed slots 
                  sel[live_status[x]["level_number"]].push(live_status[x]['slot_number'] - 1);

                }
              }
              console.log("sel");
              console.log(sel);

              var ans = [];

              for (var x = 0; x < parking_info.length; ++x) {

                // var entry=parking_info[x];

                //console.log("giw "+sel[entry["level_number"]]);
                var rr = parking_info[x]["number_of_slots"];


                var map = {
                  rows: parseInt(rr) / 20,
                  cols: 20,
                  // e.g. Reserved Seat { Row: 1 (starts from 0), Col: 2 } = 9 * 1 + 2 = 11
                  //reserved: [1, 2, 3, 5, 6, 7, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21],
                  //disabled: [4, 8],
                  // disabledRows: [1],
                  //disabledCols: [4]
                };

                var types = new Array();
                types = [{
                  type: "booked",
                  color: "green",
                  price: 0,
                  selected: sel[parking_info[x]["level_number"]]
                }, ];


                //console.log("types");
                //console.log(types);
                // var sc = new Seatchart(map, types,entry["level_number"]);
                //sc.setAssetsSrc("/path/to/assets");
                console.log("live status");
                console.log(live_status);

                ans.push([parking_info[x]["level_number"], new Seatchart(map, types, parking_info[x]["level_number"], live_status)]);


              }


              //console.log(ans);
              for (var x = 0; x < ans.length; ++x) {
                //var p = ans[x];
                ans[x][1].createMap("map" + ans[x][0]);
                //ans[x][1].createLegend("leg"+ans[x][0]);
                //if (x==1  ) break;

              }




            } else {
              console.log("Eror in request to server for querries in live status");
            }
          }
          xmlhttp.open("GET", "./queries/live_status.php", true);
          xmlhttp.send();




        } else {
          console.log("Eror in request to server for querries in parking");
        }

      }
  xmlhttp2.open("GET", "./queries/parking_info.php", true);
  xmlhttp2.send();

     



</script>

    
    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- ChartJS 1.0.1 -->
    <script src="plugins/chartjs/Chart.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
