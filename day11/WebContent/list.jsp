<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>상품 목록</h3>

<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>IMGPATH</th>
		</tr>
	</thead>
	<jsp:useBean id="dao" class="product.ProductDAO" />
	<c:set var="list" value="${dao.selectList() }" />
	<tbody>
		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.name }</td>
				<td>${dto.price }</td>
				<td>${dto.imgPath }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>