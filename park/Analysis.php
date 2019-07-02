<?php
session_start();if(!isset($_SESSION['username'])){   header("Location: ../login.php");   exit(); }
include_once("../config/config.php");

if(!isset($_SESSION['username'])){
  header("Location: ../login.php");
  exit();
}


?>                  
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Data Tables</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

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
        <a href="../../index.php" class="logo">
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
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                  <span class="hidden-xs"><?php echo $_SESSION['username'];?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    <p>
                      <?php echo $_SESSION['username'];?>
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
              <p><?php echo $_SESSION['username'];?></p>
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
            <li class="treeview">
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
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>Parking</span><i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="slotstaus.php"><i class="fa fa-circle-o"></i> Parking Status</a></li>
                <li><a href="booking.php"><i class="fa fa-circle-o"></i> Live Status</a></li>
              </ul>
            </li>
            <li>
            <li class="active treeview">
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
          Graphical Data Analysis
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Analysis</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-6">
              <!-- AREA CHART -->
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Customers visited in day (24 hr format)</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body">
                  <div class="chart">
                    <canvas id="areaChart" style="height:250px"></canvas>
                  </div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

              <!-- DONUT CHART -->
              <div class="box box-danger">
                <div class="box-header with-border">
                  <h3 class="box-title">Customers Load Monthwise</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body">
                    <canvas id="pieChart" style="height:250px"></canvas>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

            </div><!-- /.col (LEFT) -->
            <div class="col-md-6">
              <!-- LINE CHART -->
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Customers count weekly basis in month</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body">
                  <div class="chart">
                    <canvas id="lineChart" style="height:280px"></canvas>
                  </div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

              <!-- BAR CHART -->
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title" id="mr" >Monthly Revenue</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body">
                  <div class="chart">
                    <canvas id="barChart" style="height:230px"></canvas>
                  </div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

            </div><!-- /.col (RIGHT) -->
          </div><!-- /.row -->

        </section><!-- /.content --> 
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.3.0
        </div>
        
      </footer>

    </div><!-- ./wrapper -->

    
    <script>
      // $(function () 
      // {

      /* ChartJS
       * -------
       * Here we will create a few charts using ChartJS
       */

      //--------------
      //- AREA CHART -
      //--------------

      // Get context with jQuery - using jQuery's .get method.



      //calling server for json response of live status

      var xmlhttp = new XMLHttpRequest();


      xmlhttp.onreadystatechange = function () {

        if (this.readyState == 4 && this.status == 200) {
          console.log("reachefd");

          var user_count_by_time = JSON.parse(this.responseText);
          console.log(user_count_by_time);



          var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
          // This will get the first returned node in the jQuery collection.


          //generation of time labels
          var timelabel = [];
          var counts = [];
          for (var x = 0; x < user_count_by_time.length; ++x) {
            var entry = user_count_by_time[x];
            timelabel.push(entry['hh']);
            counts.push(entry['cnt']);
          }
          var areaChart = new Chart(areaChartCanvas);

          var areaChartData = {
            labels: timelabel,
            datasets: [

              {
                label: "Daily customer count",
                fillColor: "rgba(148, 0, 211,0.49)",
                strokeColor: "rgba(148, 0, 211,0.49)",
                pointColor: "#3b8bba",
                pointStrokeColor: "rgba(60,141,188,1)",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(60,141,188,1)",
                data: counts
              }
            ]
          };

          var areaChartOptions = {
            //Boolean - If we should show the scale at all
            showScale: true,
            //Boolean - Whether grid lines are shown across the chart
            scaleShowGridLines: true,
            //String - Colour of the grid lines
            scaleGridLineColor: "rgba(0,0,0,.07)",
            //Number - Width of the grid lines
            scaleGridLineWidth: 1,
            //Boolean - Whether to show horizontal lines (except X axis)
            scaleShowHorizontalLines: true,
            //Boolean - Whether to show vertical lines (except Y axis)
            scaleShowVerticalLines: true,
            //Boolean - Whether the line is curved between points
            bezierCurve: true,
            //Number - Tension of the bezier curve between points
            bezierCurveTension: 0.3,
            //Boolean - Whether to show a dot for each point
            pointDot: true,
            //Number - Radius of each point dot in pixels
            pointDotRadius: 4,
            //Number - Pixel width of point dot stroke
            pointDotStrokeWidth: 1,
            //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
            pointHitDetectionRadius: 20,
            //Boolean - Whether to show a stroke for datasets
            datasetStroke: true,
            //Number - Pixel width of dataset stroke
            datasetStrokeWidth: 2,
            //Boolean - Whether to fill the dataset with a color
            datasetFill: true,
            //String - A legend template
            legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].lineColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
            //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
            maintainAspectRatio: true,
            //Boolean - whether to make the chart responsive to window resizing
            responsive: true
          };

          //Create the line chart
          areaChart.Line(areaChartData, areaChartOptions);





        } else {
          console.log("Eror in request to server for querries");
        }
      }
      xmlhttp.open("GET", "./queries/user_count_by_time.php", true);
      xmlhttp.send();



      //Pie  chart

var xmlhttp = new XMLHttpRequest();


xmlhttp.onreadystatechange = function () {

  if (this.readyState == 4 && this.status == 200) {
    console.log("reachefd");

    var user_count_by_month = JSON.parse(this.responseText);
    console.log(user_count_by_month);

        //-------------
        //- PIE CHART -
        //-------------
        // Get context with jQuery - using jQuery's .get() method.
        var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
        var pieChart = new Chart(pieChartCanvas);
        var PieData = [
          {
            value: 0,
            color: "#264E36",
            highlight: "#264E36",
            label: "January "
          },
          {
            value: 0,
            color: "#577284",
            highlight: "#577284",
            label: "February"
          },
          {
            value: 0,
            color: "#2A4B7C",
            highlight: "#2A4B7C",
            label: "March"
          },
          {
            value: 0,
            color: "#E08119",
            highlight: "#E08119",
            label: "April"
          },
          {
            value: 0,
            color: "#935529",
            highlight: "#935529",
            label: "May"
          },
          {
            value: 0,
            color: "#FF69B4",
            highlight: "#FF69B4",
            label: "June"
          },
          {
            value: 0,
            color: "#5A3E36",
            highlight: "#5A3E36",
            label: "July"
          },
          {
            value: 0,
            color: "#FA9A85",
            highlight: "#FA9A85",
            label: "August"
          },
          {
            value: 0,
            color: "#77212E",
            highlight: "#77212E",
            label: "September"
          },
          {
            value: 0,
            color: "#00c0ef",
            highlight: "#00c0ef",
            label: "October"
          },
          {
            value: 0,
            color: "#F5D6C6",
            highlight: "#F5D6C6",
            label: "November"
          },
          {
            value: 0,
            color: "#9B1B30",
            highlight: "#9B1B30",
            label: "December"
          }
        ];


        for (var x=0;x<user_count_by_month.length;++x){
          var entry = user_count_by_month[x];
          for(var y=0;y<PieData.length;++y){
            if(PieData[y]['label']==entry['month']){
              PieData[y]['value']=entry['cnt'];
            }
          }
          
          

        }
        var pieOptions = {
          //Boolean - Whether we should show a stroke on each segment
          segmentShowStroke: true,
          //String - The colour of each segment stroke
          segmentStrokeColor: "#fff",
          //Number - The width of each segment stroke
          segmentStrokeWidth: 2,
          //Number - The percentage of the chart that we cut out of the middle
          percentageInnerCutout: 30, // This is 0 for Pie charts
          //Number - Amount of animation steps
          animationSteps: 100,
          //String - Animation easing effect
          animationEasing: "easeOutBounce",
          //Boolean - Whether we animate the rotation of the Doughnut
          animateRotate: true,
          //Boolean - Whether we animate scaling the Doughnut from the centre
          animateScale: true,
          //Boolean - whether to make the chart responsive to window resizing
          responsive: true,
          // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
          maintainAspectRatio: true,
          //String - A legend template
          legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>"
        };
        //Create pie or douhnut chart
        // You can switch between pie and douhnut using the method below.
        pieChart.Doughnut(PieData, pieOptions);






  } else {
    console.log("Eror in request to server for querries(month)");
  }
}
xmlhttp.open("GET", "./queries/user_count_by_month.php", true);
xmlhttp.send();



//bar chart

      var xmlhttp = new XMLHttpRequest();


xmlhttp.onreadystatechange = function () {

  if (this.readyState == 4 && this.status == 200) {
    console.log("reachefd month Revenue");

    var monthly_revenue = JSON.parse(this.responseText);
    console.log(monthly_revenue);
    //-------------
        //- BAR CHART -
        //-------------
        var barChartCanvas = $("#barChart").get(0).getContext("2d");
        var barChart = new Chart(barChartCanvas);
        var timelabel = [];
          var counts = [];
          for (var x = 0; x < monthly_revenue.length; ++x) {
            var entry = monthly_revenue[x];
            timelabel.push(entry['month']);
            counts.push(entry['revenue']);
          }


          var ddd = new Date();
          var nnn = ddd.getFullYear();
          document.getElementById("mr").innerHTML = "Monthly Revenue "+nnn;
        var barChartData = {
            labels: timelabel,
            datasets: [

              {
                label: "Monthly Revenue "+nnn,
                fillColor: "rgba(0, 0, 255,0.49)",
                strokeColor: "rgba(0, 0, 255,0.48)",
                pointColor: "#3b8bba",
                pointStrokeColor: "rgba(60,141,188,1)",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(60,141,188,1)",
                data: counts
              }
            ]
          };
        // barChartData.datasets[1].fillColor = "#00a65a";
        // barChartData.datasets[1].strokeColor = "#00a65a";
        // barChartData.datasets[1].pointColor = "#00a65a";
        var barChartOptions = {
          //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
          scaleBeginAtZero: true,
          //Boolean - Whether grid lines are shown across the chart
          scaleShowGridLines: true,
          //String - Colour of the grid lines
          scaleGridLineColor: "rgba(0,0,0,.05)",
          //Number - Width of the grid lines
          scaleGridLineWidth: 1,
          //Boolean - Whether to show horizontal lines (except X axis)
          scaleShowHorizontalLines: true,
          //Boolean - Whether to show vertical lines (except Y axis)
          scaleShowVerticalLines: true,
          //Boolean - If there is a stroke on each bar
          barShowStroke: true,
          //Number - Pixel width of the bar stroke
          barStrokeWidth: 2,
          //Number - Spacing between each of the X value sets
          barValueSpacing: 5,
          //Number - Spacing between data sets within X values
          barDatasetSpacing: 1,
          //String - A legend template
          legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
          //Boolean - whether to make the chart responsive
          responsive: true,
          maintainAspectRatio: true
        };

        barChartOptions.datasetFill = true;
        barChart.Bar(barChartData, barChartOptions);








  } else {
    console.log("Eror in request to server for querries(month_revenue)");
  }
}
xmlhttp.open("GET", "./queries/monthly_revenue.php", true);
xmlhttp.send();


//line chart

var xmlhttp2 = new XMLHttpRequest();

var weekdays = new Array(7);
        weekdays[0] = "Sunday";
        weekdays[1] = "Monday";
        weekdays[2] = "Tuesday";
        weekdays[3] = "Wednesday";
        weekdays[4] = "Thursday";
        weekdays[5] = "Friday";
        weekdays[6] = "Saturday";


xmlhttp2.onreadystatechange = function(){

  if (this.readyState == 4 && this.status == 200) {
    console.log("reached inside for getting weekly infor");

    var weekly_resonse = JSON.parse(this.responseText);
    console.log(weekly_resonse);
    var weekwise_sort  = [[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0]];
    for(var i=0;i<weekly_resonse.length;++i){
      var dd= new Date(weekly_resonse[i]["date"]);
      var w=Math.floor(dd.getDate()/7);
      var dw=dd.getDay();
      weekwise_sort[w][dw]+=Number(weekly_resonse[i]["cnt"])

    }
    console.log("weekly analysis");
    console.log(weekwise_sort);


          // -------------
          // - LINE CHART -
          // --------------


var ds=[
{
  label: "Week 1",
  fillColor: "rgba(148, 0, 211,0.49)",
  lineColor: "rgba(148, 0, 211,0.49)",
  strokeColor: "rgba(148, 0, 211,0.49)",
  pointColor: "#3b8bba",
  pointStrokeColor: "rgba(60,141,188,1)",
  pointHighlightFill: "#fff",
  pointHighlightStroke: "rgba(60,141,188,1)",
  data: weekwise_sort[0]
  
},
{
  label: "Week 2",
  fillColor: "rgba(0, 255, 0,0.49)",
  lineColor: "rgba(0, 255, 0,0.49)",
  strokeColor: "rgba(0, 255, 0,0.49)",
  pointColor: "#3b8bba",
  pointStrokeColor: "rgba(60,141,188,1)",
  pointHighlightFill: "#fff",
  pointHighlightStroke: "rgba(60,141,188,1)",
  data: weekwise_sort[1]
},
{
  label: "Week 3",
  fillColor: "rgba(255, 255, 0,0.49)",
  lineColor: "rgba(255, 255, 0,0.49)",
  strokeColor: "rgba(255, 255, 0,0.49)",
  pointColor: "#3b8bba",
  pointStrokeColor: "rgba(60,141,188,1)",
  pointHighlightFill: "#fff",
  pointHighlightStroke: "rgba(60,141,188,1)",
  data: weekwise_sort[2]
},
{
  label: "Week 4",
  fillColor: "rgba(255, 127, 0,0.49)",
  lineColor: "rgba(255, 127, 0,0.49)",
  strokeColor: "rgba(255, 127, 0,0.49)",
  pointColor: "#3b8bba",
  pointStrokeColor: "rgba(60,141,188,1)",
  pointHighlightFill: "#fff",
  pointHighlightStroke: "rgba(60,141,188,1)",
  data: weekwise_sort[3]
},
{
  label: "Week 5",
  fillColor: "rgba(0, 0, 255,0.49)",
  lineColor: "rgba(0, 0, 255,0.49)",
  strokeColor: "rgba(0, 0, 255,0.49)",
  pointColor: "#3b8bba",
  pointStrokeColor: "rgba(60,141,188,1)",
  pointHighlightFill: "#fff",
  pointHighlightStroke: "rgba(60,141,188,1)",
  data: weekwise_sort[4]
}
];



          var lineChartOptions = {
            //Boolean - If we should show the scale at all
            
            showScale: true,
            //Boolean - Whether grid lines are shown across the chart
            scaleShowGridLines: true,
            //String - Colour of the grid lines
            scaleGridLineColor: "rgba(0,0,0,.05)",
            //Number - Width of the grid lines
            scaleGridLineWidth: 1,
            //Boolean - Whether to show horizontal lines (except X axis)
            scaleShowHorizontalLines: true,
            //Boolean - Whether to show vertical lines (except Y axis)
            scaleShowVerticalLines: true,
            //Boolean - Whether the line is curved between points
            bezierCurve: true,
            //Number - Tension of the bezier curve between points
            bezierCurveTension: 0.4,
            //Boolean - Whether to show a dot for each point
            pointDot: true,
            //Number - Radius of each point dot in pixels
            pointDotRadius: 4,
            //Number - Pixel width of point dot stroke
            pointDotStrokeWidth: 1,
            //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
            pointHitDetectionRadius: 20,
            //Boolean - Whether to show a stroke for datasets
            datasetStroke: true,
            //Number - Pixel width of dataset stroke
            datasetStrokeWidth: 2,
            //Boolean - Whether to fill the dataset with a color
            datasetFill: true,

            datasets:ds,
            //String - A legend template
            legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].lineColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
            //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
            maintainAspectRatio: true,
            //Boolean - whether to make the chart responsive to window resizing
            responsive: true
          };

          var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
          var lineChart = new Chart(lineChartCanvas);
         
          lineChartOptions.datasetFill = true;


         

          var lineChartData = {
            labels: weekdays,
            datasets: ds
          };


          lineChart.Line(lineChartData, lineChartOptions);





  }
    
   else {
    console.log("Eror in request to server for querries in weekly");
  }
 }
xmlhttp2.open("GET", "./queries/weekly.php", true);
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
    <script src="dist/js/pages/dashboard2.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
  