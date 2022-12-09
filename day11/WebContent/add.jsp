<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>상품 추가</h3>

<form method="POST" action="add-action.jsp">
	<p><input type="number" name="idx" placeholder="idx"></p>
	<p><input type="text" name="name" placeholder="name"></p>
	<p><input type="number" name="price" placeholder="price"></p>
	<p><input type="text" name="imgPath" placeholder="imgPath"></p>
	<p><input type="submit" value="추가"></p>
</form>

</body>
</html>