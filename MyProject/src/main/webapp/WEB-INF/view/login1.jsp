<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700"
	rel="stylesheet">
<title>Login Form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
 <link href="static/css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 
	<div class=" container text-center">
		<h3>User Login</h3>
		<br>
		<form class="form-horizontal" method="post" action="login-user">
		<c:if test="${not empty error }">
			<div class="alert alert-danger">
				<c:out value="${error}"></c:out>
			</div>
		</c:if>
		<div class="form-group">
			<label class="control-label col-md-3">Username </label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="username"
					value="${user.username}" />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Password </label>
			<div class="col-md-7">
				<input type="password" class="form-control" name="password"
					value="${user.password}" />
			</div>
		</div>
		<div class="form-group">
				<button class="btn   btn-primary   text-uppercase"
							type="submit">Sign in</button>

			</div>
</form>
	</div>
 
</body>