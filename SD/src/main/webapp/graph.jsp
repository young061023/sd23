<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://d3js.org/d3.v5.min.js"></script>

<link rel="stylesheet" href="css/billboard.css">
<script src="js/billboard.js"></script>

<link rel="stylesheet" href="css/billboard.css">
<script src="js/billboard.pkgd.js"></script>
<link rel = "stylesheet" href="css/bootstrap.css">
<link rel = "stylesheet" href="css/custom.css">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">신도고등학교 어플리케이션</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="bbs.jsp">공지사항 </a></li>
				<li class="active"><a href="graph.jsp">성적추이</a></li>
			</ul>
			<%
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="login.jsp">로그인 </a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="logoutAction.jsp">로그아웃 </a></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1>내 성적추이</h1>
			<p>그래프로 알아보는 내 성적추이</p>
		</div>
	</div>
	<div id="pieChart"></div>
	<script>
		var a = prompt("첫번째로 입력할 성적",a);
		var b = prompt("두번째로 입력할 성적",b);
		var c = prompt("세번째로 입력할 성적",c);
		var d = prompt("네번째로 입력할 성적",d);
		var chart = bb.generate({
	    	bindto: "#chart",
	    	data: {
	        	type: "spline",
	        	columns: [
	            	["성적 추이", a, b, c, d]
	        	]
	    	}
		});
	</script>
	<script src = "https://code.jqury.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
</body>
</html>