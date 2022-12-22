<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wrab1 {
		display: flex;
	}
	.item {
		border: 1px solid black;
		margin: 20px;
	}
		
</style>

</head>
<body>
<div class="root1">
	<c:if test="${login == null}">
	<h2 style="margin-left: 25%;">회원만 이용 가능합니다. 로그인 먼저 해주세요~ </h2>
	<img src="${cpath }/img/양파이미지.jpg" style="margin-left: 20%; width: 35%;" >
	</c:if>

	<c:if test="${login != null}">		
	<div>
		<div style="width: 70%; display: flex; justify-content: flex-start;"><a href="product-add.jsp" style="border: 3px solid black; padding: 5px; text-decoration: none; margin-left: 100px;
    border-radius: 20px;
    background-color: black;
    color: white;">판매글 등록 하기</a></div>
	</div>
	
	<div class="wrap1" style="width: 70%;">
			
		<c:forEach var="product" items="${pdao.getList() }">
		
		
		<div class="item" style="visibility: ${login != null ? 'visible' : 'hidden'};">
			<a href="product-detail.jsp?productIdx=${product.productIdx }" style="text-decoration: none;">
				<div><img src="${cpath }/onionMarketPic/${product.productImg }" alt="이미지없음" width="250px;"></div>
				<div style="font-size: 20px;">${product.productName }</div>
				<div style="font-weight: bold;">${product.productPrice } 원</div>
				<div style="font-size: 15px;">${product.loginUserAddress }</div>
			</a>
		</div>
		
		</c:forEach>	
		
	</div>
	</c:if>
</div>

</body>
</html>