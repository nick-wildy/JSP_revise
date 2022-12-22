<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="onionMarket.*"%>
<%@ include file="header.jsp" %>


<c:set var="udto" value="${OM_UserFile.getDTO(pageContext.request) }"/>
<c:set var="signup" value="${udao.signUp(udto) }" />


<c:if test="${signup != 0 }">
<div class="login-box">
	<h3 style="color: white;">회원 가입을 축하 합니다!</h3>
	<a href="login.jsp"><button style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px">로그인하기</button></a>
</div>
</c:if>

<c:if test="${signup == 0 }">
<div class="login-box">
	<h3 style="color: white;">가입 정보를 정확하게 입력하세요!</h3>
	<a href="index.jsp"><button style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px">처음부터 다시</button></a>
</div>
</c:if>


</body>
</html>