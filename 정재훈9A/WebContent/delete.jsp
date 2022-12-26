<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="delete" value="${dao.delete(param.idx) }"/>

<c:if test="${delete == 1 }">
<h1>삭제 완료</h1>
</c:if>

<c:if test="${delete != 1 }">
<h1>삭제 실패</h1>
</c:if>



</body>
</html>