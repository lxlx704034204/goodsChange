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
<link type="text/css" rel="stylesheet" href="css/myCollectPage.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table.js"></script>
<style type="text/css">

</style>

</head>
<body>
<jsp:include page="../head.jsp"></jsp:include>
	<div class="top">
		<div class="tl">
			<h1 style="color: white;">${sessionScope.user.nickname}的收藏</h1>
		</div>
		
	</div>
	<!-- top -->
	
	<div class="right-data">
        <div class="row">
        	<!-- <div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div>
		  	
		  	<div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div>
		  	
		  	<div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div>
		</div>
		
		<div class="row">
		  	<div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div>
		  	
		  	<div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div>
		  	
		  	<div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div> -->
		<!-- </div> -->
		
		<!-- <div class="row">
		  	<div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div>
		  	
		  	<div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div>
		  	
		  	<div class="col-sm-3 col-md-4">
		    	<div class="thumbnail">
		     		<img src="..." alt="..." style="width:200px;height:195px">
		      		<div class="caption">
		        		<h3>商品名称</h3>
		        		<p>商品价格：10￥</p>
		      		</div>
		    	</div>
		  	</div> -->
		</div>
    </div>
    
    <div style="display:none;" id="uid">${user.username}</div>

</body>
<script type="text/javascript" src="/js/jquery-3.1.1.js"></script>
<script type="text/javascript">
var itemlist = null;
var num = 10;
// 获取收藏列表
function getCollect() {
	var uid = $("#username").text();
	$.ajax({
		type : "post",
		url : "../getCollect",
		dataType : "text",
		data : {
			'username' : username
		},
		success : function(data) {
			itemlist = JSON.parse(data);
			showItem();
		},
		erro : function() {
		}
	});
}
// 显示评论
function showItem(){
	
	var box = $(".row");
	box.empty();
	for (var j =0; j < num; j++) {
		if (itemlist[j] == null) {
			box.append("<div class='tips'>已无更多收藏</div>");
			return;
		}
		var e = "<div class='col-sm-3 col-md-4'>" + "<div class='thumbnail'>" 
				+"<img src='"+ itemlist[j].imgpath + "' alt='...' style='width:200px;height:195px'>"
				+ "<div class='caption's>" +"<h3>"+ itemlist[j].name + "</h3>"+"<p>商品价格："+itemlist[j].price+"</p>"
				+ "</div>" +"</div>"+ "</div>";
		box.append(e);
	}
	if (num < itemlist.length) {
		load
				.append("<a href='javascript:onload()'><div class='load'>加载更多...</div></a>");
	}
}
// 加载更多
function onload() {
	num += 10;
	showItem();
}

</script>
</html>