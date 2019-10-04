<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700"
	rel="stylesheet">
<title>Edit User</title>
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

	<div class="signup-form">
		<form action="save-user" method="post">
			<h2>Update User</h2>
			<p class="hint-text">Update your details.
				 .</p>
				  
			<div class="form-group">
				<div class="row">
				
					<div class="col-xs-4">
					 	<input type="hidden" name="id" value="${user.id }" />
						<input type="text" class="form-control" name="firstname"
							placeholder="First Name" value="${user.firstname }"
							 >
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control" name="lastname"
							placeholder="Last Name"  
							value="${user.lastname}">
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control" name="age"
							placeholder="Age"    value="${user.age }">
					</div>

				</div>

			</div>
			<div class="form-group">
				<input type="text" class="form-control" name="username"
					placeholder="User Name" value="${user.username}"
					 >
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="password"
					placeholder="Password" value="${user.password }"
					 >
			</div>
			 
			<div class="form-group">
				<input type="password" class="form-control" name="confirm_password"
					placeholder="Confirm Password">
			</div>
			<div class="form-group">
				<label class="checkbox-inline"><input type="checkbox"
					required="required"> I accept the <a href="#">Terms of
						Use</a> &amp; <a href="#">Privacy Policy</a></label>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-success btn-lg btn-block" value="Update">Update
					 </button>
			</div>
			 
		</form>
		<div class="text-center">
			Already have an account? <a href="#">Sign in</a>
		</div>
	</div>
</body>
</html>