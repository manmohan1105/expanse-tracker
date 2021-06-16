<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Previous Expense - Expense Tracker</title>

  <!-- Bootstrap Core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="css/stylish-portfolio.min.css" rel="stylesheet">

  <style type="text/css">
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  /*background-color:#ff00cc;*/
   background: -webkit-linear-gradient(to right, #333399, #ff00cc);
   background: linear-gradient(to right, #333399, #ff00cc);
}

h4 {
  font-size:3em;
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}
h1{
  {
  font-weight: 700;
}

.text-faded {
  color: rgba(255, 255, 255, 0.7);
}
}

h2 {
  font-size:1em;
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: #FB667A;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container1 th h4 {
 font-weight: bold;
 font-size: 1em;
  text-align: left;
  color: #185875;
}

.container1 td {
 font-weight: normal;
 font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
  -moz-box-shadow: 0 2px 2px -2px #0E1119;
       box-shadow: 0 2px 2px -2px #0E1119;
}

.container1 {
 text-align: left;
 overflow: hidden;
 width: 80%;
 margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.container1 td, .container1 th {
 padding-bottom: 2%;
 padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container1 tr:nth-child(odd) {
 background-color: #323C50;
 
}

/* Background-color of the even rows */
.container1 tr:nth-child(even) {
 background-color: #2C3446;
}

.container1 th {
 background-color: #1F2739;
}

.container1 td:first-child { color: #FB667A; }

.container1 tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
  -moz-box-shadow: 0 6px 6px -6px #0E1119;
       box-shadow: 0 6px 6px -6px #0E1119;
}

.container1 td:hover {
  background-color: #FFF842;
  color: #403E10;
  font-weight: bold;
 
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
 
  transition-delay: 0s;
 transition-duration: 0.4s;
 transition-property: all;
  transition-timing-function: line;
}

@media (max-width: 800px) {
.container1 td:nth-child(5),
.container1 th:nth-child(5) { display: none; }
.container1 td:nth-child(1),
.container1 th:nth-child(1) { display: none; }
}
.graph{
background-color:white;
}
</style>
 <script type = "text/javascript" src = "https://www.gstatic.com/charts/loader.js">
      </script>
      <script type = "text/javascript">
         google.charts.load('current', {packages: ['corechart']});     
      </script>
</head>

<body id="page-top">

    <!-- Navigation -->
  <a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a class="js-scroll-trigger" href="#page-top">
        <img src="img/user-image-with-black-background.png" width="50px">
        <%   
        String emailll=(String)session.getAttribute("uemail");
		try {
  			Class.forName("com.mysql.jdbc.Driver");
  			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
  			Statement statement = conn.createStatement();
  			ResultSet result = statement.executeQuery("SELECT uname from userdata where uemail = '"+emailll+"' ");
  			
  			while (result.next()) {
  				String name = result.getString(1);
  				out.print(name);
  			}
  			result.close();
  			statement.close();
  			conn.close();
  		}catch(SQLException e) {
  			System.out.println("Something went wrong :" + e.getMessage());
  		}catch(Exception e) {
  			
  		} 
%></a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="Home.jsp">Home</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="ExpenseEntry.jsp">New Expense Entry</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="ShowAllE.jsp">Previous Expense Entries</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="ShowMonthly.jsp">Expense Within A Month</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="ShowYearly.jsp">Expense Within A Year</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="Logout.jsp">Logout</a>
      </li>
    </ul>
  </nav>
  <!-- Header -->
  <header class="masthead d-flex">
    <div class="container text-center my-auto">
      <h1 class="mb-1">Welcome To Expense Tracker</h1>
      <h3 class="mb-5">
        <em>Here You Can See All Expense</em>
      </h3>
      <a class="btn btn-primary btn-xl js-scroll-trigger" href="#portfolio">Find Out More</a>
    </div>
    <div class="overlay"></div>
  </header>

   <section class="content-section main-home parallax-section" id="portfolio">
    <div class="container1">
   <%

String emaill=(String)session.getAttribute("uemail");  
%>
<!-- <h2><%out.print(emaill);%></h2>  -->
<h4><span class="yellow">All Expenses List </span></h4>
<h2>This table show all your expenses check each field</h2>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
	Statement statement = conn.createStatement();
	ResultSet result = statement.executeQuery("Select * from userentry where email='"+emaill+"'");
	%>
	<table class="container1">
<thead>
<tr>
<th><h4>Email</h4></th>
<th><h4>Field</h4></th>
<th><h4>Amount</h4></th>
<th><h4>Date</h4></th>
<th><h4>Discription</h4></th>
</tr>
</thead>
<tbody>
	<% 
	while(result.next()){
		 %>
        <tr>
            <td>
                <%=result.getString("email")%>
            </td>
            <td>
                <%=result.getString("efield")%>
            </td>
            <td>
                <%=result.getString("eamt")%>
            </td>
            <td>
                <%=result.getString("edate")%>
            </td>
            <td>
                <%=result.getString("edes")%>
            </td>
        </tr>
    
<!-- </form>  -->
	<%
	}%>
	</tbody>
	</table><br><hr>
     <div id = "container" style = "width: 550px; height: 400px; margin: 0 auto">
      </div>
     	
	<hr><center>
	<a class="btn btn-primary btn-xl js-scroll-trigger" href="Home.jsp">Home Page</a></center>
	</div>
	</section>
	
	<%
	
	result.close();
//	response.sendRedirect("Home.jsp");
	statement.close();
	conn.close();
}catch(SQLException e) {
	System.out.println("Something went wrong :" + e.getMessage());
}catch(Exception e) {
	
}
%>      
       <!-- </div>
      </div>
      
    </div>
  </section>  --> 


  <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/stylish-portfolio.min.js"></script>


      <script language = "JavaScript">
         function drawChart() {
            // Define the chart to be drawn.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Browser');
            data.addColumn('number', 'Percentage');
            data.addRows([
               ['Food', <%
            	   try {
            			Class.forName("com.mysql.jdbc.Driver");
            			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
            			Statement statement = conn.createStatement();
            			ResultSet result = statement.executeQuery("  SELECT SUM(eamt)from userentry where email='"+emaill+"' and efield='Food'");
            			
            			while (result.next()) {
            				String Food = result.getString(1);
            				out.print(Food);

            			}
            			result.close();
//            			response.sendRedirect("Home.jsp");
            			statement.close();
            			conn.close();
            		}catch(SQLException e) {
            			System.out.println("Something went wrong :" + e.getMessage());
            		}catch(Exception e) {
            			
            		}
            		%>          			
],
               ['Education', <%
            	   try {
           			Class.forName("com.mysql.jdbc.Driver");
           			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
           			Statement statement = conn.createStatement();
           			ResultSet result = statement.executeQuery("  SELECT SUM(eamt)from userentry where email='"+emaill+"' and efield='Education'");
           			
           			while (result.next()) {
           				String Education = result.getString(1);
           				out.print(Education);

           			}
           			result.close();
//           			response.sendRedirect("Home.jsp");
           			statement.close();
           			conn.close();
           		}catch(SQLException e) {
           			System.out.println("Something went wrong :" + e.getMessage());
           		}catch(Exception e) {
           			
           		}
           		%>],
               ['Personal', <%
            	   try {
           			Class.forName("com.mysql.jdbc.Driver");
           			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
           			Statement statement = conn.createStatement();
           			ResultSet result = statement.executeQuery("  SELECT SUM(eamt)from userentry where email='"+emaill+"' and efield='Personal'");
           			
           			while (result.next()) {
           				String Personal = result.getString(1);
           				out.print(Personal);

           			}
           			result.close();
//           			response.sendRedirect("Home.jsp");
           			statement.close();
           			conn.close();
           		}catch(SQLException e) {
           			System.out.println("Something went wrong :" + e.getMessage());
           		}catch(Exception e) {
           			
           		}
           		%>],
               ['Others', <%
            	   try {
              			Class.forName("com.mysql.jdbc.Driver");
              			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
              			Statement statement = conn.createStatement();
              			ResultSet result = statement.executeQuery("  SELECT SUM(eamt)from userentry where email='"+emaill+"' and efield <> 'Food' and efield <> 'Education' and efield <> 'Personal' ");
              			
              			while (result.next()) {
              				String Others = result.getString(1);
              				out.print(Others);

              			}
              			result.close();
//              			response.sendRedirect("Home.jsp");
              			statement.close();
              			conn.close();
              		}catch(SQLException e) {
              			System.out.println("Something went wrong :" + e.getMessage());
              		}catch(Exception e) {
              			
              		}
              		%>]
            ]);
               
            // Set chart options
            var options = {
               'title':'Graphical View Of Your Expanse',
               'width':550,
               'height':400,
               is3D:true
            };

            // Instantiate and draw the chart.
            var chart = new google.visualization.PieChart(document.getElementById('container'));
            chart.draw(data, options);
         }
         google.charts.setOnLoadCallback(drawChart);
      </script>
<!-- </div>  -->
</body>
</html>



