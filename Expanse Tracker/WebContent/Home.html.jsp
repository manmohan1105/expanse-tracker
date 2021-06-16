<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<title>Home Page - Expense Tracker</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Home page</title>

  <!-- Bootstrap Core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="css/stylish-portfolio.min.css" rel="stylesheet">

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
        String emaill=(String)session.getAttribute("uemail");
		try {
  			Class.forName("com.mysql.jdbc.Driver");
  			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
  			Statement statement = conn.createStatement();
  			ResultSet result = statement.executeQuery("SELECT uname from userdata where uemail = '"+emaill+"' ");
  			
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
      <h1 class="mb-1">Welcome To Expense Tracker </h1>
      <h3 class="mb-5">
        <em>Here you can track all your daily expenses and save money.</em>
      </h3>
      <a class="btn btn-primary btn-xl js-scroll-trigger" href="#portfolio">Click Here To Start </a>
    </div>
    <div class="overlay"></div>
  </header>



 <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
  
  <section class="content-section" id="portfolio">
    <div class="container">
      <div class="content-section-heading text-center">
        <h3 class="text-secondary mb-0">Menu to go</h3>
        <h2 class="mb-5">Choose The Desired Option</h2>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6">
          <a class="portfolio-item" href="ExpenseEntry.jsp">
            <span class="caption">
              <span class="caption-content">
                <h1>New Expense Entry</h1>
                <p class="mb-0">Here you can add a new expense entry to your record with a wide range of description help you to create records easily!!</p>
              </span>
            </span>
            <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="ShowAllE.jsp">
            <span class="caption">
              <span class="caption-content">
                <h1>Previous Expenses</h1>
                <p class="mb-0">Here you can collect all your previous expenses information and track where you need to do savings!</p>
              </span>
            </span>
            <img class="img-fluid" src="img/portfolio-2.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="ShowMonthly.jsp">
            <span class="caption">
              <span class="caption-content">
                <h1>Expenses Within A Month </h1>
                <p class="mb-0">Here you can check your expenses by giving a month this will show your money consumption within that given period of time!</p>
              </span>
            </span>
            <img class="img-fluid" src="img/portfolio-3.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="ShowYearly.jsp">
            <span class="caption">
              <span class="caption-content">
                <h1>Expenses Within A Year </h1>
                <p class="mb-0">Here you can check your expenses by giving a Year this will show your money consumption within that given period of time!</p>
              </span>
            </span>
            <img class="img-fluid" src="img/portfolio-4.jpg" alt="">
          </a>
        </div>
      </div>
    </div>
  </section>


  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/stylish-portfolio.min.js"></script>


</body>
</html>
