<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dto" value="${KFC_File.getDTO(pageContext.request) }"/>
<c:set var="result" value="${dao.insert(dto) }"/>

<c:if test="${result == 1 }">
<h1>추가 성공</h1>
</c:if>

<c:if test="${result != 1 }">
<h1>추가 실패</h1>
</c:if>


</body>
</html>