<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="mainLayout" flush="true">
	<tiles:putAttribute name="title">
		Disciplinary Issue Tracker
	</tiles:putAttribute>
	<tiles:putAttribute name="body">
	
		<div class="item">
			${requestScope['javax.servlet.forward.request_uri']}
		</div>
	
	</tiles:putAttribute>
</tiles:insertDefinition> 