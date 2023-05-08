<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>





 
<jsp:useBean id="dao" class="dbpkg.Util"/>
<c:set var="custNo" value="${dao.selectCustNo() }"/>


<section>
	<h2> <b>홈쇼핑 회원 등록</b> </h2><br>
	
	<form class="frm" name="frm" action="join-action.jsp" method="">
	
		<table border="1">
			<tr>
			
				<td>회원번호(자동발생)</td>
				<td><input type="text" name="custNo" value="${custNo }" readonly></td>
			</tr>
			<tr>
				<td>회원성명</td>
				<td><input type="text" name="custName" placeholder="회원성명을 입력하세요" value=""></td>
			</tr>
			<tr>
				<td>회원전화</td>
				<td><input type="text" name="phone" placeholder="전화번호를 입력하세요" value=""></td>
			</tr>
			<tr>
				<td>회원주소</td>
				<td><input type="text" name="address" placeholder="회원주소를 입력하세요" value=""></td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type="text" name="joinDate" placeholder="가입일자를 입력하세요" pattern="\d{4}-\d{2}-\d{2}" value=""></td>
			</tr>
			<tr>
				<td>고객등급[A:VIP, B: 일반, C: 직원]</td>
				<td><input type="text" name="grade" value="" placeholder="고객등급을 입력하세요"></td>
			
			</tr>
			<tr>
				<td>도시코드</td>
				<td><input type="text" name="city" placeholder="도시코드를 입력하세요" value=""></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록" onclick="return joinCheck()"> &nbsp;&nbsp;
					<input type="button" value="조회" onclick="return search()">
				</td>
			</tr>
		</table>
	</form>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>