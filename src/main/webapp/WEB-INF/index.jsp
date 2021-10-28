<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard Page</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="./css/style.css" />
</head>
<body>

	<section>

		<div class="container">
		
		<div>
			<c:out value="${errorMessage }"></c:out>
		</div>
		
		<h1 class="text-center mt-5 mb-3">List of languages</h1>

			<table class="table table-striped table-hover">

				<thead>

					<tr>

						<th>Name</th>
						<th>Creator</th>
						<th>Version</th>
						<th>action</th>

					</tr>

				</thead>

				<tbody>
				
				<c:forEach var="language" items="${languageList}">
				
					<tr>
						<td><c:out value="${language.name}"></c:out></td>
						<td><c:out value="${language.creator}"></c:out></td>
						<td><c:out value="${language.version}"></c:out></td>
						
						<td class="d-flex align-items-center">
						
						<form action="/delete/${language.id}" method="POST">
						<button type="submit" class="btn btn-link text-danger">delete</button>
						</form>
						
						
						<form action="/edit/${language.id }" method="GET"> 
						<button type="submit" class="btn btn-link text-success">edit</button>
						</form>
						</td>
						
					</tr>

					</c:forEach>					
					


				</tbody>


			</table>
			
			
			<h1 class="text-center mt-5 mb-3">Add a new language</h1>
			
			<form action="/create" method="POST">
			<label for="nameLanguage" class="form-label">Name</label>
			<input type="text" id="nameLanguage" name="nameLanguage" class="form-control"/>
			<label for="creatorLanguage" class="form-label">Creator</label>
			<input type="text" id="creatorLanguage" name="creatorLanguage" class="form-control" />
			<label for="versionLanguage" class="form-label">Version</label>
			<input type="text" id="versionLanguage" name="versionLanguage" class="form-control" />
			
			<button type="submit" class="btn btn-success mt-3">Add Language</button>
			
			
			</form>


		</div>


	</section>

	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script src="./js/script.js"></script>

</body>
</html>