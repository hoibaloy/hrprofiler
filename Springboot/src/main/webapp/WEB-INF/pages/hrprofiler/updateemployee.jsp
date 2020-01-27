<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="mainLayout" flush="true">
	<tiles:putAttribute name="title">
		Resignations
	</tiles:putAttribute>
	<tiles:putAttribute name="body">
	
		<div class="item">
				<div class="tabContainer">
					<div class="buttonContainer">
						<button class="first" onClick="showPanel(0, '#fff')">Employee Details</button>
						<button onClick="showPanel(1, '#fff')">Company Details</button>
						<button onClick="showPanel(2, '#fff')">Education and Trainings</button>
						<button onClick="showPanel(3, '#fff')">Salary Package</button>
						<button onClick="showPanel(4, '#fff')">Benefits/Incentives</button>
						<button class="last" onClick="showPanel(5, '#fff')">Add Dependents</button>
					</div>
					<div class="tabPanel">
						<jsp:include page="forms/employeedetails.jsp"/>
					</div>
					<div class="tabPanel">
						<jsp:include page="forms/companydetails.jsp"/>
					</div>
					<div class="tabPanel">
						<jsp:include page="forms/educationwork.jsp"/>
					</div>
					<div class="tabPanel">
						<jsp:include page="forms/salarypackage.jsp"/>
					</div>
					<div class="tabPanel">
						<jsp:include page="forms/incentives.jsp"/>
					</div>
					<div class="tabPanel">
						<jsp:include page="forms/dependents.jsp"/>
					</div>
				</div>
		</div>
	
	</tiles:putAttribute>
	<tiles:putAttribute name="jsLinks">
		<script src="/resources/js/myScript.js"></script>
	</tiles:putAttribute>
</tiles:insertDefinition> 