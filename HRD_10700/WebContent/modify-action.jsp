<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify-action</title>
</head>
<body>

<jsp:useBean id="dao" class="dbpkg.Util"/>
<jsp:useBean id="member" class="dbpkg.MemberDTO"/>
<jsp:setProperty property="*" name="member"/>
${dao.modify(member) }
<%-- <c:set var="row" value="${dao.modify(member) }"/> --%>
	<c:redirect url="list.jsp"/>

<%-- <c:if test="${row != 0 }"> --%>
<!-- 	<h3>추가되었습니다</h3> -->
<%-- </c:if> --%>


</body>
</html>