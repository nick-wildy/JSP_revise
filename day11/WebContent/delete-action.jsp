<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dao" class="product.ProductDAO" />

<c:set var="row" value="${dao.delete(param.idx) }" />

<c:if test="${row != 0 }">
	<h3>삭제 성공</h3>
	<c:redirect url="/list.jsp" />
	<%--c:redirect 에서는 cpath를 작성하지 않는다 --%>
</c:if>

<c:if test="${row == 0 }">
	<h3>삭제 실패</h3>
</c:if>

</body>
</html>