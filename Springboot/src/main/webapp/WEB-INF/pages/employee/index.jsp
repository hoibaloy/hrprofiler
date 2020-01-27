<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		*Navigation menu*<br/>
		<a href="/" class="btn btn-success">Back</a><br/>
		<br/>
		
		*body*<br/>
		<form action="/employee/search" method="get">
			<input type="text" placeholder="Search for employee ID" name="empId">
			<button type="submit">Search</button>
		</form>
		</input>
		
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<c:if test="${not empty employee}">
				${employee.toString() }<br>
		</c:if>
	</div>
</body>
</html>