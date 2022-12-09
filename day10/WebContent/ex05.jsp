<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
<style>
	div#wrap {
		width: 800px;
		display: flex;
		flex-flow: wrap;
		margin: 20px auto;
	}
	div.product {
		margin: 10px;
		padding: 10px;
		text-align: center;
		border: 1px solid #ccc;
	}
	div.product:hover {
		background-color: antiquewhite;
		cursor: pointer;
	}
</style>
</head>
<body>

<h1>flex를 이용하여 모양 출력하기</h1>
<hr>
<jsp:useBean id="dao" class="product.ProductDAO" />

<div id="wrap">

	<c:forEach var="product" items="${dao.selectList() }">
	
	<div class="product">
		<div class="img">
			<a href="ex05-detail.jsp?idx=${product.idx }" title="상세보기">
			<img src="img/${product.imgPath }" width="200"></a>
		</div>
		<div class="name">${product.name }</div>
		<div class="price">${product.price}원</div>
	</div>
	
	</c:forEach>
	
</div>

</body>
</html>