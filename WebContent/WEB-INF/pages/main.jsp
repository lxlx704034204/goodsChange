<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>换了呗</title>
<link type="text/css" rel="stylesheet" href="css/main.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap-table.css">
<link type="text/css" rel="stylesheet" href="css/font-awesome.css">
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<!-- Bootstrap 核心 JavaScript 文件 -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table.js"></script>
<style type="text/css">
.dock {
	background-image: url("images/dock-a.jpg");
	width: 100%;
	height: 550px;
	padding: 1px 0 0 10%;
	line-height: 30px;
	float: left;
	color: white;
	background-color: rgba(237, 244, 237, 0.5);
	padding: 1px 0 0 1%;
}

.bottom {
	float: left;
	width: 100%;
	margin: 0 auto;
}
#sortlist {
	width:150px;
	height:30px;
	float:center;
	text-align:20%;
}
#sortlist a{
	font-size:120%;
	height:100%;
	color:black;
	float:center;
}
#sort{
	width:10%;
	height:100%;
	background-color: rgba(0,0,0,0.2);
}
#lunbo{
	width: 50%;
	height: 550px;
}
</style>
</head>
<body >
	<jsp:include page="head.jsp"></jsp:include>
	<div class="dock" >
	<div class="sort" id="sort">
		<li id="sortlist"><a href="#" id="smallsort">今日热门</a></li>
		<li id="sortlist"><a href="#" id="smallsort">最新上架</a></li>
		<li id="sortlist"><a href="#" id="smallsort">洗护用品</a></li>
		<li id="sortlist"><a href="#" id="smallsort">学习用具</a></li>
		<li id="sortlist"><a href="#" id="smallsort">生活用品</a></li>
		<li id="sortlist"><a href="#" id="smallsort">电脑配件</a></li>
		<li id="sortlist"><a href="#" id="smallsort">手机配件</a></li>
		<li id="sortlist"><a href="#" id="smallsort">化妆品</a></li>
		<li id="sortlist"><a href="#" id="smallsort">手机</a></li>
		<li id="sortlist"><a href="#" id="smallsort">电脑</a></li>
		<li id="sortlist"><a href="#" id="smallsort">服装</a></li>
		<li id="sortlist"><a href="#" id="smallsort">鞋靴</a></li>
		<li id="sortlist"><a href="#" id="smallsort">箱包</a></li>
		<li id="sortlist"><a href="#" id="smallsort">书本</a></li>
		<li id="sortlist"><a href="#" id="smallsort">零食</a></li>
		<li id="sortlist"><a href="#" id="smallsort">电器</a></li>
		<li id="sortlist"><a href="#" id="smallsort">装饰</a></li>
		<li id="sortlist"><a href="#" id="smallsort">其他</a></li>
	</div>
	
		<!-- <div class="btn-group btn-group-lg">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				学习用品 <span class="caret"></span>
			</button>
		</div>
		<div class="btn-group btn-group-lg">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				生活用品 <span class="caret"></span>
			</button>
		</div>
		<div class="btn-group btn-group-lg">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				运动用品 <span class="caret"></span>
			</button>
		</div>
		<div class="btn-group btn-group-lg">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				其他 <span class="caret"></span>
			</button>
		</div> -->
	</div>
	<!-- /.dock -->
	<div class="bottom">
		<div class="class-box">

			<span>今日热门</span>
			<div class="item-box">
				<c:forEach items="${newlist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="class-box">
			<span>最新上架</span>
			<div class="item-box">
				<c:forEach items="${newlist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="class-box">
			<span>手机控</span>
			<div class="item-box">
				<c:forEach items="${phonelist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="class-box">
			<span>电脑也能换</span>
			<div class="item-box">
				<c:forEach items="${computerlist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="class-box">
			<span>书达人</span>
			<div class="item-box">
				<c:forEach items="${booklist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="class-box">
			<span>美人装</span>
			<div class="item-box">
				<c:forEach items="${clothinglist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="class-box">
			<span>爱运动</span>
			<div class="item-box">
				<c:forEach items="${sportlist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="class-box">
			<span>游戏宅</span>
			<div class="item-box">
				<c:forEach items="${gamelist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="class-box">
			<span>创意达人</span>
			<div class="item-box">
				<c:forEach items="${originalitylist}" var="items" end="7">
					<div class="item">
						<a href="itemPage/itemid=${items.id}">
						<div class="item-img">
							<img alt="" src="${items.imgpath[0]}">
						</div>
						</a>
						<div class="span">${items.name}</div>
						<div class="span" style="text-align: right; color: red;">￥${items.price}</div>
					</div>
				</c:forEach>
			</div>
		</div>

	</div>

</body>
<script type="text/javascript" src="/js/jquery-3.1.1.js"></script>
<script type="text/javascript">
	var classification;
	var imgpath;
	$('#type li').click(function() {
		essay_type = ($(this).text());
		$("#s_type").empty();
		$("#s_type").append(essay_type);
	})
	$('#label li').click(function() {
		essay_label = ($(this).text());
		$("#s_label").empty();
		$("#s_label").append(essay_label);
	})
	function show(id) {
		var m = document.getElementById(id);
		m.style.display = "block";
	}
	function remove(id) {
		var m = document.getElementById(id);
		m.style.display = "none";
	}
	function uControl() {
		var m = document.getElementById("uName");
		m.style.display = "block";
		var a = document.getElementById('uName').innerText;
		if (a == "") {
			self.location = "loginPage";
		} else {
			self.location = "userMainPage";
		}
	}
	function out() {
		self.location = "./userQuit";
	}
	function uploadImg(file) {
		var fileReader = new FileReader();
		var path = "";
		uploadImages(file.files[0])
	}
	function uploadImages(file) {

		var form = new FormData();
		form.append("img", file);
		alert("123123");
		$.ajax({
			type : "post",
			url : "/_MSP_ItemByItem/uploadImg",
			data : form,
			async : false,
			cache : false,
			contentType : false,
			processData : false,
			success : function(data, status) {
				$("#logo")[0].src = "http://localhost:8080/_MSP_ItemByItem/"
						+ data;
			},
			error : function() {
				alert("服务器异常");
			},
			complete : function() {
			}
		});
	}

	function addItem() {

		var name = document.getElementById("name").value;
		var detail = document.getElementById("detail").value;
		var price = document.getElementById("price").value;
		var expect = document.getElementById("expect").value;

		if (name == "") {
			alert("请填写一个名称");
			return;
		}
		if (detail == "") {
			alert("你没有填写任何内容");
			return;
		}
		if (itemtype == "") {
			alert("请选择一个分类");
			return;
		}
		if (price == "") {
			alert("请填写一个预估价格");
			return;
		}
		if (expect == "") {
			alert("请填写一个期望商品");
			return;
		}
		$.ajax({
			url : '/uploadItem',
			type : 'post',
			dataType : 'text',
			data : {
				'name' : name,
				'detail' : detail,
				'img' : imgpath,
				'expect' : expect,
				'classification' : classification,
				'price' : price
			},
			success : function(data) {
			},
			error : function() {
				alert("服务器异常");
			}
		});
		classification = "";
		imgpath = "";
	}
</script>
</html>