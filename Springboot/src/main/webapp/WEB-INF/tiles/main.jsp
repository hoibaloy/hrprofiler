<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>
		<tiles:insertAttribute name="title" />
	</title>
		<link rel="stylesheet" href="/resources/css/styles.css">
		<link rel="stylesheet" href="/resources/fontawesome/css/all.min.css">
	
	<tiles:insertAttribute name="cssLinks" />
</head>
<body>
	<tiles:insertAttribute name="header" />
	<div class="wrapper">
	
		<tiles:insertAttribute name="topnavbar" />
		<tiles:insertAttribute name="sidebar" />
		
		<div class="main_container">
			
			<tiles:insertAttribute name="body" />
			
		</div>
	</div>
	<tiles:insertAttribute name="footer" />
</body>
<script src="/resources/js/jquery-3.4.1.min.js"></script>
<script src="/resources/fontawesome/js/all.min.js"></script>
<script src="/resources/js/jquery.easing.min.js"></script>
<script src="/resources/js/aw.js"></script>
	<script>
		$(document).ready(function(){
			$(".hamburger").click(function(){
			   $(".wrapper").toggleClass("collapse");
			});
		});
	</script>
<tiles:insertAttribute name="jsLinks" />
</html>