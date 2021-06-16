<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Stylish Portfolio - Start Bootstrap Template</title>

  <!-- Bootstrap Core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="css/stylish-portfolio.min.css" rel="stylesheet">

</head>
<body>
<%
HttpSession sessionn=request.getSession();  
sessionn.invalidate();  
%>
<header class="masthead d-flex">
    <div class="container text-center my-auto">
      <h1 class="mb-1">Expense Tracker</h1>
      <h3 class="mb-5">
        <em>You have been successfully logout...............</em>
      </h3>
      <a class="btn btn-primary btn-xl js-scroll-trigger" href="Index.jsp">Sign In</a>
    </div>
    <div class="overlay"></div>
  </header>
  </body>
  </html>
  
