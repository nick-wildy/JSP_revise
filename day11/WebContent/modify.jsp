<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>수정할 상품을 선택하세요</h3>

<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>IMGPATH</th>
			<th></th>
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
				<td>
					<a href="modify-form.jsp?idx=${dto.idx }"><button>수정</button></a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>