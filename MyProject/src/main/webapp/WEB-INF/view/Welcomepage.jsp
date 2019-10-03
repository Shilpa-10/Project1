<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
 <meta charset="utf-8"> 
 <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta http-equiv="Pragma" content="no-cache">
   <meta http-equiv="Cache-Control" content="no-cache">
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">
<title>Welcome</title>
</head>
<body>
<h2><center>Welcome</center></h2>
<div role="navigation">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="/index">Home</a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="/login">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/register">New Registration</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/show-users#">All Users</a>
    </li>
  </ul>
</nav>
</div>
<div class="container" id="homediv">
<div class="jumbotron text-center">
<h1>Welcome</h1>
</div>
</div>












<script src="static/js/jquery-min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>