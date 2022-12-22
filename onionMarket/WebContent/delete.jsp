<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="delete" value="${pdao.delete(param.productIdx) }" />

<h3>${delete != 0 ? '삭제성공' : '삭제실패' }</h3>


</body>
</html>