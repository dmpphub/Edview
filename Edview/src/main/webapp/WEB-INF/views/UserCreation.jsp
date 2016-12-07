<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <spring:url value="/resources/js/jquery.js" var="jqueryJs" />
 <script src="${jqueryJs}"></script>
<!-- <script src="http://code.jquery.com/jquery-2.1.0.min.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Creation</title>
</head>
<body>
	<form:form action="/edview/HomeControllerMapping" commandName="userVO">
		<form:label path="userName" id="lbl_userName">User Name</form:label>
		<form:input path="userName" id="userName" />
		<a href="" onclick="callAjaxSupport()">Ajax Submit</a>
		<form:button name="submit" value="Submit">Submit</form:button>
	</form:form>
</body>
<script type="text/javascript">
	function callAjaxSupport() {
		$.ajax({
			type : 'POST',
			url : '/edview/HomeControllerAjaxMapping',
			dataType : 'text',
			success : function(result) {
				alert('Ajax Successful');
			},
			error : function(xhr, status, error) {
				alert('Ajax Failure');
			}
		});	
	}
</script>
</html>