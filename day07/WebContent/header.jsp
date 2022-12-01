<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day07.*, java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	pageContext.setAttribute("cpath", request.getContextPath());
	
	MemberHandler memberHandler = (MemberHandler)application.getAttribute("memberHandler");
	if(memberHandler == null) {
		memberHandler = new MemberHandler();
		application.setAttribute("memberHandler", memberHandler);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header>
	<h1><a href="${cpath }">회원 관리</a></h1>
	
	<div align="right">
		<h4>${not empty login ? login.username : null }</h4>
	</div>
	
	<nav>
		<ul>
			<li><a href="${cpath }/list.jsp">회원목록 / 검색</a></li>
			
			<li><a href="${cpath }/${empty login ? 'login.jsp' : 'logout.jsp'}">
			
				${empty login ? '로그인' : '로그아웃' }</a></li>
				
			<li><a href="${cpath }/join.jsp">가입</a></li>
			<li><a href="${cpath }/mypage.jsp">마이페이지</a></li>
		</ul>
	</nav>
</header>












