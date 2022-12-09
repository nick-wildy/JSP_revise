<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%--modify-form.jsp --%>

<jsp:useBean id="dao" class="product.ProductDAO" />
<c:set var="dto" value="${dao.selectOne(param.idx) }" />

<h3>수정하기</h3>
<form method="POST" action="modify-action.jsp">
	<p><input type="number" name="idx" placeholder="idx" value="${dto.idx }" readonly></p>
	<p><input type="text" name="name" placeholder="name" value="${dto.name }"></p>
	<p><input type="number" name="price" placeholder="price" value="${dto.price }"></p>
	<p><input type="text" name="imgPath" placeholder="imgPath" value="${dto.imgPath }"></p>
	<p><input type="submit" value="수정"></p>
</form>

</body>
</html>