<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<title>Favorites</title>
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
		<h2>Movies</h2>
		<div class="edit_status"></div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th id="title">Title</th>
					<th id="box">Box Office</th>
					<th>Genre</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="movie">
					<tr>
						<td>${movie.title}</td>
						<td>${movie.boxOffice}</td>
						<td>${movie.genre}</td>
						<td><a href="delete?id=${movie.id}"><input type="button"
								class="btn btn-danger" value="delete"></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h3>Total no of movies: ${total}</h3>
	</div>
	<footer class="bg-light text-center text-lg-start"
		style="position: fixed; width: 100%; bottom: 0">
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2); height: 30px">
			Copyright &copy; 2021</div>
	</footer>

</body>
</html>