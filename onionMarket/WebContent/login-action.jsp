<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="onionMarket.*"%>
<%@ include file="header.jsp" %>





<c:if test="${udao.login(param.userid, param.userpw) != null}">
	<c:set var="login" value="${udao.login(param.userid, param.userpw) }" scope="application" />
	<c:redirect url="index.jsp" />
</c:if>

<c:if test="${udao.login(param.userid, param.userpw) == null }">
	<c:redirect url="login.jsp" />
</c:if>




</body>
</html>