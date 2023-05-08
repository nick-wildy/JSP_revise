<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salary</title>
</head>
<body>

<jsp:useBean id="dao" class="dbpkg.Util"/>
<c:set var="priceList" value="${dao.priceList() }"/>

<section>
	<h2><b>회원매출조회</b></h2>
	
	
	<form class="frm" name="frm" action="">
	
		<table border="1">
			<tr>
			
				<th>회원번호</th>
				<th>회원성명</th>
				<th>&nbsp;&nbsp;고객등급&nbsp;&nbsp;</th>
				<th>&nbsp;&nbsp;&nbsp;매출&nbsp;&nbsp;&nbsp;</th>
			</tr>
			<c:forEach var="priceList" items="${priceList }">
			<tr>
				<td>${priceList.custNo }</td>
				<td>${priceList.custName }</td>
				<td>${priceList.grade } </td>
				<td>${priceList.price } </td>
			</tr>
			</c:forEach>
						
		</table>
	</form>
</section>


<jsp:include page="footer.jsp"/>

</body>
</html>