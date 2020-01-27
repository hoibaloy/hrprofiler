<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE STUDENT</title>
</head>
<body>
	<a href="http://localhost:8020/">Home</a>
	<span id="message"></span>
	<form action="http://localhost:8020/api/customer/${customer.id}" method="post" id="customerFrm">
		ID: <input type="text" name="id" value="${customer.id}" />
		<br />
		Name: <input type="text" name="name" value="${customer.name}" />
		<br />
		City: <input type="text" name="city" value="${customer.city}" />
		<br>
		<br>
		<button type="button" onClick="updateCustomer();">Update Me!!!</button>
	</form>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
	
</head>
</html>