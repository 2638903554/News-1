<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<meta charset="UTF-8">
<script src="/news/resources/js/jquery-2.2.0.js"></script>
<link
	href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js">
	
</script>
<title>管理网站</title>
</head>
<body>
	<div class="container">
		<div class="masthead">
			<h3 class="text-muted page-header">欢迎你，管理员</h3>
			<nav>
			<ul class="nav nav-justified">
			    <li><a href="add.action">发布新闻</a></li>
				<li><a href="update.action">更改新闻</a></li>
				<li class="active"><a href="delete.action">删除新闻</a></li>
				<li><a href="news.action">浏览新闻</a></li>
				<li><a href="exit.action">退出登录</a></li>
			</ul>
			</nav>
		</div>
		<!-- background image -->
	
		<!-- 添加新闻界面 -->
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-9">
			<h3 class="text-muted page-header">删除新闻</h3>
				<form action="delete1.action" method="post" class="form-horizontal" id="deleteNewsForm">
					<div class="form-group">
						<label for="news_id" class="col-md-2 control-label">删除新闻</label>
						<div class="col-md-4">
							<input type="text" name="id" class="form-control"
								id="id" placeholder="要删除的新闻的id">
						</div>
						<div class="col-md-4"></div>
					</div>

					<div class="form-group">
						<div class="col-md-offset-2 col-md-10 ">
							<button type="submit" class="btn btn-default" id="submit1">删除</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>