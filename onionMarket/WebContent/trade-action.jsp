<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>



<c:set var="trade1" value="${udao.trade(param.userName, param.phoneNumber, param.address, param.sellerId, param.productName, param.productIdx)}" />

<c:redirect url="index.jsp" />

</body>
</html>