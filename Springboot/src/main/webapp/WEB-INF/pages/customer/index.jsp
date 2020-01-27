<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Spring Boot</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">
			<h1>Spring Boot Web JSP Example</h1>
			<h2>Message: ${message}</h2>
		</div>


	<table border="1">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>City</td>
			<td>Action</td>
		</tr>
		<c:forEach items="${customerList}" var="customer">
			<tr>
				<td>${customer.id}</td>
				<td>${customer.name}</td>
				<td>${customer.city}</td>
				<td>
					<a class="btn btn-primary" href="http://localhost:8020/customer/update?customerId=${customer.id}">View</a>
					<a class="btn btn-secondary" href="http://localhost:8020/api/customer/delete/${customer.id}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<!-- /.container -->

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
