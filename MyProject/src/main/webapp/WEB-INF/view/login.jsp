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
<link href="static/css/style1.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">

			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card card-signin my-5">
					<div class="card-body">
						<h2 class="card-title text-center">Sign In</h2>
						<form class="form-signin" action="login-user" method="post">
							<c:if test="${not empty error }">
								<div class="alert alert-danger">
									<c:out value="error"></c:out>
								</div>
							</c:if>
							<div class="form-label-group">
								<input type="text" id="username" class="form-control"
									value="${user.username}" placeholder="Username" required
									autofocus>

							</div>
							<br>

							<div class="form-label-group">
								<input type="password" id="inputPassword" class="form-control"
									value="${user.password}" placeholder="Password" required>

							</div>
							<br>

							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1"> <label class="custom-control-label"
									for="customCheck1">Remember password</label>
							</div>
						</form>
						<button class="btn btn-lg btn-primary btn-block text-uppercase"
							type="submit">Sign in</button>

					</div>
				</div>
			</div>
		</div>
	</div>



</body>