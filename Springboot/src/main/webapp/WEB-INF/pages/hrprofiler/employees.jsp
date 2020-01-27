<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="mainLayout" flush="true">
	<tiles:putAttribute name="title">
		Employees
	</tiles:putAttribute>
	<tiles:putAttribute name="body">
	
				<div class="item">
					<div class="searcharea">
						<form action="#">
							<input type="text" placeholder="Name/ID">
							<a href="" class="abutton">Search</a>
							<a href="addemployee" id="requestbtn" class="addbtn">Add</a>
						</form>
					</div>
					<table class="request_table">
						<thead>
							<tr>
								<th>Employee ID</th>
								<th>Name</th>
								<th>Update</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
							  <c:when test="${!empty empList }">
								<c:forEach items="${empList }" var="emp">
									<tr>
										<td>${emp.getId() }</td>
										<td>${emp.getLastName() }, ${emp.getFirstName() } ${emp.getMiddleName() }</td>
										<td><a href="updateemployee" id="requestbtn" class="requestbtn">Update</a></td>
									</tr>
								</c:forEach>
							  </c:when>
							  <c:otherwise>
							  </c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
				
	</tiles:putAttribute>
	<tiles:putAttribute name="jsLinks">
		<script>
			$(document).ready(function(){
				$(".hamburger").click(function(){
				   $(".wrapper").toggleClass("collapse");
				});
			});
		</script>
	</tiles:putAttribute>
</tiles:insertDefinition>