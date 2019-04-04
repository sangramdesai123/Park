<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Analysis</title>





 <!-- <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>

 <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script> -->
 <script src="https://cdnjs.com/libraries/Chart.js"></script>

</head>

<body>
<div id="tushar" style="height: 20%; width:40%;  "></div>
<div id="test" style="height: 20%; width:40%;  "></div>



//  var xx= new Morris.Donut({
//   // ID of the element in which to draw the chart.
//   element: 'test',
//   // Chart data records -- each entry in this array corresponds to a point on
//   // the chart.
//   data: [
//     { label: 'Jan', value: 20 },
//     { label: 'Feb', value: 10 },
//     { label: 'March', value: 5 },
//     { label: 'April', value: 5 },
//     { label: 'Map', value: 20 }
//   ],
//   // The name of the data record attribute that contains x-values.
//   xkey: 'year',
//   // A list of names of data record attributes that contain y-values.
//   ykeys: ['value'],
//   // Labels for the ykeys -- will be displayed when you hover over the
//   // chart.
//   labels: ['Value']
// });



// var xmlhttp = new XMLHttpRequest(); 
  
//   xmlhttp.onreadystatechange = function() { 

//                 if (this.readyState == 4 && this.status == 200) { 
//                   //console.log(this.responseText);
//                    var  bookings = JSON.parse(this.responseText); 
//                     console.log(bookings);

//                     new Morris.Donut({
//                           // ID of the element in which to draw the chart.
//                           element: 'tushar',
//                           // Chart data records -- each entry in this array corresponds to a point on
//                           // the chart.
//                           data:bookings,

//                           // The name of the data record attribute that contains x-values.
//                           // xkey: 'month',
//                           // // A list of names of data record attributes that contain y-values.
//                           // ykeys: ['noOfcust'],
//                           // // Labels for the ykeys -- will be displayed when you hover over the
//                           // // chart.
//                           // labels: ['Customers']
//                     });
          
//       } 
//   }; 
//   xmlhttp.open("GET", "booking_json.php", true); 
//   xmlhttp.send(); 





<canvas id="myChart" width="400" height="400"></canvas>
<script>
var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
</script>

</body>
</html>