<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST" action="join-action.jsp">
	<p><input type="text" name="userid" placeholder="ID" autocomplete="off" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required></p>
	<p><input type="text" name="username" placeholder="Name" autocomplete="off" required></p>
	<p><input type="number" name="age" placeholder="Age" autocomplete="off" required></p>
	<p><input type="date" name="birth" required></p>
	<p><input type="submit" value="가입신청"></p>
</form>

</body>
</html>