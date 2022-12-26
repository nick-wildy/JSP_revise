<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="ob" value="${dao.getDetail(param.idx) }"/>

<form method="post" action="modify_action.jsp">
	<p><input type="hidden" name="idx" value="${ob.idx }"></p>
	<p>메뉴이름:<input type="text" name="menu" value="${ob.menu }"></p>
	<p>메뉴 가격<input type="number" name="price" value="${ob.price }"></p>
	<p>메뉴 분류<input type="text" name="kfcCategory" value="${ob.kfcCategory }"></p>
	<p>메뉴 설명<input type="text" name="memo" value="${ob.memo }"></p>
	<p><input type="hidden" name="img" value="${ob.img }"></p>
	<p><input type="hidden" name="kfcDelete" value="${ob.kfcDelete }"></p>
	<p><input type="submit"> 수정하기 </p>
</form>



</body>
</html>