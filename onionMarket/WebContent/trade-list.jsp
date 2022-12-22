<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<script>
function deal(){
	alert('감사합니다. 거래가 완료 되었습니다.');
}
</script>

<style>
	table {
		margin-left: 305px;
		margin-top: 10px;
	}
	
	th {
		background-color: black;
		color: white;
		font-size: 20px;
	}

	th,td {
		padding: 5px 10px;
		text-align: center;
	}
	
	h3 {
		margin-left: 305px;
		margin-top: 20px;
		margin-bottom: 0px;
	}
	
</style>

<h3>💥제품이름 클릭시 상세 페이지로 이동 가능 합니다</h3>

<table style="border-collapse: collapse;">
	<tr>
		<th>구매 신청자 이름</th>
		<th>구매 신청자 전화번호</th>
		<th>구매 신청자 주소</th>
		<th>제품이름</th>
		<th>거래 완료 여부</th>
	</tr>
	
	<c:forEach var="tlist" items="${udao.tradelist(login.userid) }">
	<tr>
		<td>${tlist.userName }</td>
		<td>${tlist.phoneNumber }</td>
		<td>${tlist.address }</td>
		<td><a href="product-detail.jsp?productIdx=${tlist.productIdx }" style="text-decoration: none; font-weight: bold;">${tlist.productName }</a></td>
		<td><a href="complete.jsp?productIdx=${tlist.productIdx }"><button onclick="deal()"> 거래완료 </button></a></td>
	</tr>
	</c:forEach>	
</table>




</body>
</html>