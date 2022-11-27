<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp</title>
<style>
	table{
	border-collapse: collapse;
	
	}
	a{
	text-decoration: none;
	color : inherit;
	}
	td,th{
	border: 1px solid black;
	padding : 5px 10px;
	}
</style>
</head>
<body>
<h1>도서 관리 프로그램(GUI, Web)</h1>
<hr>

<nav>
	<ul>
		<li><a href="index.jsp">목록</a></li>
		<li><a href="add.jsp">추가</a></li>
		<li><a href="delete.jsp">삭제</a></li>
	</ul>
</nav>
<%@page import="day03.*,java.util.ArrayList" %>
<%
// 	Handler hd = new Handler();
// 	ArrayList<Book> list = hd.getList();

	Handler hd = (Handler)application.getAttribute("handler");
	if(hd == null) {		// 없으면
		hd = new Handler();	// 새로 생성하여
	}
	application.setAttribute("handler", hd);	// application에 넣어둔다
	
	
	ArrayList<Book> list = (ArrayList<Book>)application.getAttribute("list");
	if(list == null) {
		list = hd.getList();
	}
	application.setAttribute("list", list);
%>

<form action="delete-result.jsp">
	<h3>삭제할 도서의 관리 번호를 입력하세요</h3>
	<input type="number" name="idx" min="1" required autofocus>
	<input type="submit" value="삭제">
</form>


</body>
</html>