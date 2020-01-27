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
		New Oboarding request<br/>
		*Navigation Menu*<br/>
		<a href="/recruitment" class="btn btn-success">Back</a><br/><br/>
		<form method="post" action="/recruitment/add">
			<table>
				<tr>
					<td>Date Requested</td>
					<td><input type="date" name="dateRequested"/></td>
				</tr>
				<tr>
					<td>Job Offered</td>
					<td><input type="date" name="dateJobOffer"/></td>
				</tr>
				<tr>
					<td>Date Accepted</td>
					<td><input type="date" name="dateAccepted"/></td>
				</tr>
				
				<tr>
					<td>Oboarding date</td>
					<td><input type="date" name="dateOnboarding"/></td>
				</tr>
				
				<tr>
					<td>
						<button type="submit" class="btn btn-primary">Save</button>
					</td>
				</tr>
			</table>
		</form>
		<c:if test="${erfNum!=null&&erfNum>0 }">
			<a href="/employee/new?erfNum=${erfNum }" class="btn btn-success">Add employee details</a>
			
		</c:if>
	</div>
</body>
</html>