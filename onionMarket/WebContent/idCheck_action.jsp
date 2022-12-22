<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="idchk" value="${udao.idCheck(param.userid) }"/>
<h3>${idck }</h3>

<c:if test="${idchk == null }">
<div class="login-box">
	<h3 style="color: white;">사용 가능한 아이디입니다</h3>
	<a href="signup.jsp?userid=${param.userid }"><button style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px">가입진행하기</button></a>
</div>
</c:if>

<c:if test="${idchk != null }">
<div class="login-box">
	<h3 style="color: white;">중복 아이디입니다</h3>
	<a href="idCheck.jsp"><button style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px">아이디 다시 만들기</button></a>
</div>
</c:if>







</body>
</html>