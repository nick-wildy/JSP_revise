<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="delete" value="${pdao.delete(param.productIdx) }" />
<c:set var="listdelete" value="${udao.listDelete(param.productIdx) }"/>

<c:if test="${delete == 0 or listdelete == 0 }">
<h3> 실패</h3>
</c:if>

<c:if test="${listdelete != 0 and delete != 0}">
<% response.sendRedirect("index.jsp"); %>	
</c:if>


</body>
</html>