<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>삭제할 상품을 선택하세요</h3>

<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>IMGPATH</th>
			<th></th>
		</tr>
	</thead>
	<jsp:useBean id="dao" class="product.ProductDAO" />
	<c:set var="list" value="${dao.selectList() }" />
	<tbody>
		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.name }</td>
				<td>${dto.price }</td>
				<td>${dto.imgPath }</td>
<%-- 				<td><a href="${cpath}/delete-action.jsp?idx=${dto.idx }"><button>삭제</button></a></td> --%>
				<td><button class="deleteBtn" idx="${dto.idx }">삭제</button></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<script>
	// 자바스크립트에서는 이렇게 주석을 씁니다
	
	// 클릭하면 실행할 함수
	function deleteHandler() {
		const idx = this.getAttribute('idx')
		const flag = confirm('정말 ' + idx + '번 상품을 삭제하시겠습니까?')
		
		if(flag) {
			location.href = '${cpath}/delete-action.jsp?idx=' + idx
		}
		// console.log(flag)
	}
	
	// 이벤트를 지정하고 싶은 요소들
	const btnList = document.querySelectorAll('.deleteBtn')
	
	// 리스트의 각 버튼에 대해, 위에서 만든 함수를 클릭으로 연결한다 (버튼을 클릭하면 deleteHandler가 실행됨)
	btnList.forEach(btn => btn.addEventListener('click', deleteHandler))
	
</script>

</body>
</html>








