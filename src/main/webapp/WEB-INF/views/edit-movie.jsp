<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<title>EditMovie</title>
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
		<div class="row">
			<form name="EditMovie" method="POST">
				<h1>Edit Movie</h1>
				<div>
					<h3>
						<label for="title_movie">Title</label>
					</h3>
					<input id="item_name_input" name="name" type="text"
						style="width: 90%; height: 30px" required>
				</div>
				<div class="edit_form_row">
					<div class="edit_form_col">
						<h3>
							<label for="boxoffice">Gross ($)</label>
						</h3>
						<input type="number" name="boxOffice" required>
					</div>
					<div class="edit_form_col">
						<h3>
							<label for="active">Active</label>
						</h3>
						<input type=radio id="yes" name="yes"> <label for="yes">Yes</label>
						<input type=radio id="no" name="no"> <label for="no">No</label>
					</div>
					<div class="edit_form_col">
						<h3>
							<label for="date_of_launch">Date Of launch</label>
						</h3>
						<input type="datetime-local" id="edit_date" required
							name="dateOfLaunch" style="width: 90%; height: 30px">
					</div>
					<div class="edit_form_col">
						<h3>
							<label for="genre">Genre</label>
						</h3>
						<select id="genre" name="genre" style="width: 90%; height: 30px">
							<option value="Superhero">Superhero</option>
							<option value="Science Friction">Science Fiction</option>
							<option value="Romance">Romance</option>
							<option value="Comedy">Comedy</option>
							<option value="Thriller">Thriller</option>
						</select>
					</div>
				</div>
				<input type="checkbox" id="free_del" name="free_del"> <label
					for="free_del">Has Teaser</label><br>
				<button type="submit" id="save_edit_btn">Save</button>
			</form>
		</div>

	</div>
	<footer class="bg-light text-center text-lg-start"
		style="position: fixed; width: 100%; bottom: 0">
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2); height: 30px">
			Copyright &copy; 2021</div>
	</footer>
</body>