<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>

<jsp:useBean id="dao" class="dbpkg.Util"/>
<c:set var="list" value="${dao.memberList() }"/>
<section>
	<h2><b>회원목록조회/수정</b></h2>
	
	<form class="frm" name="frm" action="">
	
		<table border="1">
			<tr>
			
				<th>회원번호</th>
				<th>회원성명</th>
				<th>&nbsp;&nbsp;전화번호&nbsp;&nbsp;</th>
				<th>&nbsp;&nbsp;&nbsp;주소&nbsp;&nbsp;&nbsp;</th>
				<th>&nbsp;&nbsp;&nbsp;가입일자&nbsp;&nbsp;&nbsp;</th>
				<th>&nbsp;&nbsp;&nbsp;고객등급&nbsp;&nbsp;&nbsp;</th>
				<th>&nbsp;&nbsp;&nbsp;거주지역&nbsp;&nbsp;&nbsp;</th>
			</tr>
			
			<c:forEach var="list" items="${list }">
			<tr>
				<td><a href="modify.jsp?custNo=${list.custNo}">${list.custNo }</a></td>
				<td>${list.custName }</td>
				<td>${list.phone }</td>
				<td>${list.address }</td>
				<td>${list.joinDate }</td>
				<td>${list.grade }</td>
				<td>${list.city }</td>
			</tr>
			</c:forEach>
						
						
		</table>
	</form>
</section>


<jsp:include page="footer.jsp"/>



</body>
</html>