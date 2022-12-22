<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>




<c:set var="udto" value="${OM_UserFile.getDTO2(pageContext.request) }"/>

<c:set var="userUpdate" value="${udao.userUpdate(udto) }" />

<c:redirect url="index.jsp" />







</body>
</html>