<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="header.jsp" %>

<jsp:useBean id="user" class="정재훈9A.KFC_DTO"/>
<jsp:setProperty property="*" name="user"/>

<%-- <c:set var="user" value="${dao.getDTO(param.idx, param.menu, param.price, param.kfcCategory, param.memo, param.img, param.kfcDelete) }"/> --%>
<c:set var="result" value="${dao.modify(user) }"/>



<c:if test="${result != 0 }">


<h1>수정성공</h1>
</c:if>

<c:if test="${result == 0 }">


<h1>수정실패</h1>
</c:if>

</body>
</html>