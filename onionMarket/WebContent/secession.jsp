<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>



<c:set var="secession" value="${udao.secession(login.userIdx) }" />
<c:remove var="login"/>

<c:if test="${secession != 0 }">
	<c:redirect url="index.jsp" />
</c:if>

<c:if test="${secession == 0 }">
<h3><a href="index.jsp">삭제실패 홈으로</a> </h3>
</c:if>



</body>
</html>