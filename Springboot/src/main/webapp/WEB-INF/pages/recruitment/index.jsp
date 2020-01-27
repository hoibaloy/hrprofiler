<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		*Navigation Menu*<br/>
		<a href="/recruitment/new" class="btn btn-success">New Onboarding Request</a><br/>
		<a href="/" class="btn btn-success">Back</a><br/>
		*body*
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ERF#</th>
					<th>Date Requested</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${recruitmentDetails }" var="recruit">
					<tr>
						<td><a href="/employee/new?erfNum=${recruit.getErfNum() }">${recruit.getErfNum() }</a></td>
						<td>${recruit.getDateRequested() }</td>
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
		
	</div>
</body>
</html>