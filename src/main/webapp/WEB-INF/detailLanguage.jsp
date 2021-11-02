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
	
		<c:set var="mensaje" value="${errorMessage }" />
		<c:if test="${mensaje != null }">

			<div
				class="alert alert-${clase} alert-dismissible fade show messageOut"
				role="alert">
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
				<strong><c:out value="${errorMessage }"></c:out></strong>
			</div>
		</c:if>

		<div class="container d-flex justify-content-center mt-5">

			<div class="card" style="width: 48rem;">
				<div class="card-body">
					<h5 class="card-title">Language: Java</h5>
					<hr />
					<h6 class="card-subtitle mb-2 text-muted">Creator: James Gosling</h6>
					<p class="card-text">Version: 1.8</p>
					<a href="#" class="card-link">Edit</a> <a href="#"
						class="card-link">Delete</a>
				</div>
			</div>



		</div>

	</section>


	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script src="./js/script.js"></script>
</body>
</html>