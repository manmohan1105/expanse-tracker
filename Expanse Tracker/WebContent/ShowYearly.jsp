<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Yearly Expense - Expense Tracker</title>

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
        <em>Here You Can See Yearly Expense</em>
      </h3>
      <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
    </div>
    <div class="overlay"></div>
  </header>

  <!-- About -->
  <section class="content-section bg-light" id="about">
   <style>
      .hide{
  display:none;
}
.show{
  display:block;
}
  

* {
  box-sizing: border-box;
  box-sizing: 300%;
}

.body1 {
  background: #f6f5f7;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  font-family: 'Montserrat', sans-serif;
  height: 100vh;
  margin: -20px 0 50px;
}

h1 {
  font-weight: bold;
  margin: 0;
}

h2 {
  text-align: center;
}

p {
  font-size: 14px;
  font-weight: 100;
  line-height: 20px;
  letter-spacing: 0.5px;
  margin: 20px 0 30px;
}

span {
  font-size: 12px;
}

a {
  color: #333;
  font-size: 14px;
  text-decoration: none;
  margin: 15px 0;
}

button {
  border-radius: 20px;
  border: 1px solid #FF4B2B;
  background-color: #FF4B2B;
  color: #FFFFFF;
  font-size: 12px;
  font-weight: bold;
  padding: 12px 45px;
  letter-spacing: 1px;
  text-transform: uppercase;
  transition: transform 80ms ease-in;
}

button:active {
  transform: scale(0.95);
}

button:focus {
  outline: none;
}
form {
  background-color: #FFFFFF;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 0 50px;
  height: 100%;
  text-align: center;
}

input {
  background-color: #eee;
  border: none;
  padding: 12px 15px;
  margin: 8px 0;
  width: 100%;
}

.container1 {
  background-color: #fff;
  border-radius: 10px;
    box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
      0 10px 10px rgba(0,0,0,0.22);
  position: relative;
  overflow: hidden;
  width: 768px;
  max-width: 100%;
  min-height: 800px;
}

.form-container {
  position: absolute;
  top: 0;
  height: 100%;
  transition: all 0.6s ease-in-out;
}

/*.sign-in-container {
  left: 0;
  width: 50%;
  z-index: 2;
}*/

  </style>


<%   
  
String email=(String)session.getAttribute("uemail");  
//out.print("Hello "+email);  
  
%> 



<div class="body1">
<!-- <h2>Please do the login or register</h2> -->
<div class="container1" >
   <div class="form-container sign-up-container">
      <form action="ShowYearly2.jsp" method="post"> 
       <center>
         <h1>Select Year</h1><hr>
         <!-- <span>or use your email for registration</span> -->
        <input type="text" name="email" value ="<%= email %>" readonly>
        <input type="number" name="eyear" value="2019" placeholder="year" required />
  <button>Submit</button>

      </center>
      </form>
   </div>
</div></div></section>

 <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/stylish-portfolio.min.js"></script>
</body>
</html>
    
