<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form enctype="multipart/form-data" action="add_action.jsp" method="post">
	
	<p>메뉴이름:<input type="text" name="menu"></p>
	<p>메뉴 가격<input type="number" name="price"></p>
	<select name="kfcCategory" required>
		<option value="">메뉴분류</option>
		<option>버거&세트</option>
		<option>치킨&세트</option>
		<option>스낵&사이드</option>
		<option>음료</option>
	</select>
	
	
	<p>메뉴 설명<input type="text" name="memo" ></p>
	<p><input type="file" name="img" ></p>
	
	<p><input type="submit"> 추가하기 </p>
</form>

</body>
</html>