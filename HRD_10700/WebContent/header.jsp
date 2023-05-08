<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dbpkg.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style>
	header {
		position: fixed;
		top: 0;
		width: 100%;
		height: 40px;
		background-color: blue;
		color: white;
		text-align: center;
		line-height: 40px;
		font-size: 30px;
	}
	
	nav {
		position: fixed;
		top: 40px;
		width: 100%;
		height: 20px;
		background-color: lightblue;
		color: white;
		line-height: 20px;
		padding-left: 20px;
	}
	section {
		position: fixed;
		top: 60px;
		width: 100%;
		height: 100%;
		background-color: lightgray;
	}
	h2 {
		text-align: center;
	}
	p {
		padding-left: 10px;
	}
	
	footer {
		position: fixed;
		bottom: 0px;
		width: 100%;
		height: 30px;
		background-color: blue;
		color: white;
		text-align: center;
		line-height: 30px;
	}
	
	.frm {
		display: flex;
		align-items: center;
		justify-content: center;
		text-align: center;
	}
	
</style>
</head>
<body>

<script type="text/javascript" src="check.js"></script>

<header> 쇼핑몰 회원관리 ver 1.0</header>

<nav> 

	<a href="join.jsp">회원등록</a>   &nbsp;&nbsp;
	<a href="list.jsp">회원목록조회/수정</a>&nbsp;&nbsp;  
	<a href="salary.jsp">회원매출조회</a>&nbsp;&nbsp;  
	<a href="index.jsp">홈으로</a>

</nav>







</body>
</html>