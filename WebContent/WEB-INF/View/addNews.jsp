<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<meta charset="UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
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
				<li class="active"><a href="add.action">发布新闻</a></li>
				<li><a href="update.action">更改新闻</a></li>
				<li><a href="delete.action">删除新闻</a></li>
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
			<h3 class="text-muted page-header">发布新闻</h3>
					<form action="add1.action" method="post"  class="form-horizontal" id="AddNewsForm">
				    <div class="form-group">
						<label for="news_id" class="col-md-2 control-label">新闻id</label>
						<div class="col-md-6">
							<input type="text" name="id" class="form-control"
								id="news_id" placeholder="新闻id">
						</div>
						<div class="col-md-4"></div>
					</div>
					<div class="form-group">
						<label for="news_title" class="col-md-2 control-label">新闻标题</label>
						<div class="col-md-6">
							<input type="text" name="head" class="form-control"
								id="news_title" placeholder="新闻标题">
						</div>
						<div class="col-md-4"></div>
					</div>
					<div class="form-group">
						<label for="news_summary" class="col-md-2 control-label">内容摘要</label>
						<div class="col-md-6">
							<input type="test" name="summary" class="form-control"
								id="news_summary" placeholder="新闻摘要">
						</div>
						<div class="col-md-4"></div>
					</div>
					<div class="form-group">
						<label for="news_content" class="col-md-2 control-label">正文内容</label>
						<div class="col-md-10">
							<textarea type="text" style="height: 100px; width: 400px"
								name="body" class="form-control" id="body"
								placeholder="内容">
					</textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="news_date" class="col-md-2 control-label">发表日期</label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="news_date"
								name="date" placeholder="格式yyyy-mm-xx" >
						</div>
						<div class="col-md-7"></div>
					</div>
					<div class="form-group">
						<label for="author_id" class="col-md-2 control-label">发表人</label>
						<div class="col-md-2">
							<input type="text" class="form-control" id="news_author"
								name="author" placeholder="作者姓名" >
						</div>
						<div class="col-md-8"></div>
					</div>
			
					<div class="form-group">
						<div class="col-md-offset-2 col-md-12 ">
							<button type="submit" class="btn btn-default" id="submit1">提交</button>
						</div>
					</div>
				</form>
		</div>
	</div>
	 </div>
</body>
</html>