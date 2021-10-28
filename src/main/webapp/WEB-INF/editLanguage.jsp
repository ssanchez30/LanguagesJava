<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="./css/style.css" />
</head>
<body>

	<section>

		<div class="container">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Languages</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse  text-end" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#">Dashboard</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Delete</a></li>
						</ul>
					</div>
				</div>
			</nav>
			
			<div>
				<c:out value="${errorMessage }"></c:out>
			</div>


			<form action="/updated/${language.id}" method="POST">

				<label for="languageName" class="form-label">Name:</label> 
				<input type="text" id="languageName" name="languageName" class="form-control" value="${language.name }" />
				<label for="creatorName" class="form-label">Creator:</label>
				<input type="text" id="creatorName" name="creatorName" class="form-control" value="${language.creator }" />
				<label for="versionLanguage" class="form-label">Version:</label>
				<input type="text" id="versionLanguage" name="versionLanguage" class="form-control" value="${language.version }" />
				<button type="submit" class="btn btn-primary mt-3">Update</button>

			</form>

		</div>




	</section>






	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script src="./js/script.js"></script>
</body>
</html>