<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<div class="frame">
		<c:forEach var="product" items="${dao.getList() }">
		
		<div class="item">
				<div><a href="detail.jsp?idx=${product.idx }"><img src="${cpath }/image/${product.img }"></a></div>
				<div id="name" >${product.menu }</div>
				<div id="memo" >${product.memo }</div>
				<div id="price" >${product.price }원</div>
		</div>
		
		</c:forEach>	
	</div>

</body>
</html>