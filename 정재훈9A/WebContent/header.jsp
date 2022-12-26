<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="정재훈9A.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="dao" value="${KFC_DAO.getInstance() }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body{
width: 1800px;
}

#category{
display:flex;
margin: auto;
}
.nav{
width: 100px;
height: 30px;
padding: 0;
text-align: center;
}
#name{
font-weight: bold;
font-size: 20px;
}
#price{
color: 4A4747;
}

.frame{
width: 300px;

display: flex;
flex-wrap:wrap;
margin-top: 20px;
margin-left: 80px;
}
fram > item{
width: 200px;
text-align: center;

}
.item > img {
width: 100px;
}

.detailitem{
 width: 500px;
}

</style>
</head>
<body>
<h1>정재훈</h1>

<div class="wrap">
<div id="category">
	<div class="nav"><a href="recommend.jsp">추천메뉴</a></div>
	<div class="nav"><a href="chickenSet.jsp">치킨&세트</a></div>
	<div class="nav"><a href="burgerSet.jsp">버거&세트</a></div>
	<div class="nav"><a href="snack.jsp">스낵&사이드</a></div>
	<div class="nav"><a href="beverage.jsp">음료</a></div>
	<div class="nav"><a href="add.jsp">메뉴추가하기</a></div>
</div>

<div class="icon">
	
</div>

</div>

