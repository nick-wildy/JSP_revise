<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-detail.jsp</title>
</head>
<body>

<h1>${param.idx }번 상품 상세보기</h1>
<hr>
<jsp:useBean id="dao" class="product.ProductDAO" />

<c:set var="product" value="${dao.selectOne(param.idx) }" />

<div class="product">
	<div class="img">
		<img src="img/${product.imgPath }" width="500">
	</div>
	<div class="name">${product.name }</div>
	<div class="price">${product.price}원</div>
</div>

</body>
</html>