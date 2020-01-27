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
		${employee.getFirstName() }
		*Navigation menu*<br/>
		<a href="/recruitment" class="btn btn-success">Back</a><br/>
		<c:choose>
			<c:when test="${employee!=null }">
				<form method="post" action="/employee/update">
			</c:when>
			<c:otherwise>
				<form method="post" action="/employee/add">
			</c:otherwise>
		</c:choose>
			<table>
				<tr>
					<td>Add Employee</td>
				</tr>
				<tr>
					<td>first name</td>
					<td><input type="text" name="firstName" value="${employee.getFirstName() }"></td>
				</tr>
				<tr>
					<td>last name</td>
					<td><input type="text" name="lastName" value="${employee.getLastName() }"></td>
				</tr>
				<tr>
					<td>date of birth</td>
					<td><input type="date" name="dateOfBirth" value="${employee.getDateOfBirth() }"></td>
				</tr>
				<tr>
					<td>category</td>
					<td><input type="text" name="empCategory" value="${employee.getEmpCategory() }"></td>
				</tr>
				<tr>
					<td>level</td>
					<td><input type="text" name="level" value="${employee.getLevel() }"></td>
				</tr>
				<tr>
					<input type="hidden" value="${erfNum }" name="erfNum"/>
					<td>
						<c:choose>
							<c:when test="${employee!=null }">
								<button type="submit" class="btn btn-success">Update</button>
							</c:when>
							<c:otherwise>
								<button type="submit" class="btn btn-success">Add</button>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</table>
		</form>
		
		<c:if test="${not empty addStatus}">
			<c:choose>
				<c:when test="${addStatus!=null&&addStatus }">
					<p>employee successfully added!</p>
				</c:when>
				<c:otherwise>
					<p>error while trying to add an employee!</p>
				</c:otherwise>
			</c:choose>
		</c:if>
		
	</div>
</body>
</html>