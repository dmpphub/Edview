<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>College</title>
    <!-- Semantic Core CSS
    <link href="css/semantic/semantic.min.css" rel="stylesheet">-->

    <!-- Bootstrap Core CSS -->
    <spring:url value="/resources/css/bootstrap.min.css" var="boostrapCss" />
 	<script src="${boostrapCss}"></script>
    <link href="${boostrapCss}" rel="stylesheet">

    <!-- Custom CSS -->
    <spring:url value="/resources/css/sb-admin.css" var="sbAdminCss" />
    <link href="${sbAdminCss}" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <spring:url value="/resources/css/plugins/morris.css" var="morrisCss" />
    <link href="${morrisCss}" rel="stylesheet">

    <!-- Custom Fonts -->
    <spring:url value="/resources/font-awesome/css/font-awesome.min.css" var="fontAwesomeCss" />
    <link href="${fontAwesomeCss}" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
	.container-fluid {
		min-height: 550px;
	}
	.badge-bgcolor {
		background-color: #d9534f;
	}
</style>
</head>
<!-- jQuery -->
<spring:url value="/resources/js/jquery.js" var="jqueryJs" />
<script src="${jqueryJs}"></script>

<!-- Semantic Core JavaScript
   <script src="js/semantic/semantic.min.js"></script> -->
<!-- Semantic Side Bar
<script src="js/semantic/sidebar.min.js"></script>-->

<!-- Bootstrap Core JavaScript -->
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
<script src="${bootstrapJs}"></script>

<!-- Morris Charts JavaScript -->
<spring:url value="/resources/js/plugins/morris/raphael.min.js" var="raphaelJs" />
<script src="${raphaelJs}"></script>
<spring:url value="/resources/js/plugins/morris/morris.min.js" var="morrisJs" />
<script src="${morrisJs}"></script>
<spring:url value="/resources/js/plugins/morris/morris-data.js" var="morrisDataJs" />
<script src="${morrisDataJs}"></script>