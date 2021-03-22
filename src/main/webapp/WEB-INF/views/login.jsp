<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/customer">Movie Cruiser <i
					class="fa fa-film" style="font-size: 25px;"></i></a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/customer">Home</a></li>
				<li><a href="/favorite">Favorites</a></li>
				<li><a href="/signup">Signup</a></li>
				<li><a href="/login">Login</a></li>
			</ul>
		</div>
	</nav>


	<div class="container">
		<h2>Login</h2>
		<form method="post" action="login" method="post">
			<div>
				<font color="red">${ErrorMessage}</font>
			</div>
			<div class="form-group">
				<label for="username">Username:</label> <input type="text"
					class="form-control" id="field_username"
					placeholder="Enter username" name="username">
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="field_password"
					placeholder="Enter password" name="password">
			</div>
			<div class="form-group form-check">
				<label class="form-check-label"> <input
					class="form-check-input" type="checkbox" name="remember">
					Remember me
				</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<footer class="bg-light text-center text-lg-start"
		style="position: fixed; width: 100%; bottom: 0">
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2); height: 30px">
			Copyright &copy; 2021</div>
	</footer>

</body>
</html>