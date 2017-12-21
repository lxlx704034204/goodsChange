<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我提交的请求</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/font-awesome.css">
<link type="text/css" rel="stylesheet" href="css/mySubmitPage.css">


<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table.js"></script>
<script type="text/javascript" src="js/myJs/mySubmit.js"></script>
<style type="text/css">

</style>
</head>
<body>
<jsp:include page="../head.jsp"></jsp:include>
	<div class="top">
		<div class="tl">
			<h1 style="color: white;">${sessionScope.user.nickname}的提交</h1>
		</div>
		
	</div>
	<!-- top -->
	
	<div class="right-data">
		<div class="u-data">
			<div class="u-logo"></div>
			<div class="u-nick">${sessionScope.user.username}(${sessionScope.user.nickname})</div>
		</div>
		<div class="d-table">
			<div class="dt-param" style="color:red">已提交的</div>
			<div class="dt-param">待处理的</div>
			<div class="dt-param">未处理的</div>
			<div class="dt-param" style="border-right: 0;">已接受的</div>
		</div>
		<div class="itemTable"></div>
		<div class="loadbox"></div>
	</div>

</body>
</html>