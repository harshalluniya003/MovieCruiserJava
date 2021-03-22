<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<title>SignUp2</title>
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
		<form class="form-horizontal" action='' method="POST">
			<fieldset>
				<div id="legend">
					<legend class="">Signup</legend>
				</div>
				<div class="control-group">
					<label class="control-label" for="username">Username</label>
					<div class="controls">
						<input type="text" id="username" name="username" placeholder=""
							class="input-xlarge">
						<p class="help-block">Username can contain any letters or
							numbers, without spaces</p>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="email">E-mail</label>
					<div class="controls">
						<input type="text" id="email" name="email" placeholder=""
							class="input-xlarge">
						<p class="help-block">Please provide your E-mail</p>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="password">Password</label>
					<div class="controls">
						<input type="password" id="password" name="password"
							placeholder="" class="input-xlarge">
						<p class="help-block">Password should be at least 4 characters</p>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="password_confirm">Password
						(Confirm)</label>
					<div class="controls">
						<input type="password" id="password_confirm"
							name="password_confirm" placeholder="" class="input-xlarge">
						<p class="help-block">Please confirm password</p>
					</div>
				</div>

				<div class="control-group">
					<div class="controls">
						<button class="btn btn-success" type="submit">Register</button>
					</div>
				</div>
			</fieldset>
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