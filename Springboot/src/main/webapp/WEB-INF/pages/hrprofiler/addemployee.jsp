<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="mainLayout" flush="true">
	<tiles:putAttribute name="title">
		Dashboard
	</tiles:putAttribute>
	<tiles:putAttribute name="body">
	
		<div>
			<form id="msform">
				<jsp:include page="forms/employeedetails.jsp"/>
				<jsp:include page="forms/educationwork.jsp" />
				<jsp:include page="forms/companydetails.jsp" />
				<jsp:include page="forms/reviewform.jsp" />
			</form>
		</div>
	
	</tiles:putAttribute>
	<tiles:putAttribute name="footer">
		<div class="poparea">
			<div class="popuprequest">
				<div class="close">+</div>
					<img src="/resources/img/approve.png" style="width:50px;height:50px;">
					<h1>Employee Added!</h1>
			</div>
		</div>
	</tiles:putAttribute>
	<tiles:putAttribute name="jsLinks">
		<script src="/resources/js/index.js"></script>
	</tiles:putAttribute>
</tiles:insertDefinition>