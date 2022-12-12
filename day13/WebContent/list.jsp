<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>USERID</th>
			<th>USERPW</th>
			<th>USERNAME</th>
			<th>JOINDATE</th>
			<th>GENDER</th>
			<th>PROFILEIMG</th>
		</tr>
	</thead>
	<tbody>
	<c:set var="list" value="${dao.selectList() }" />
	<%--
			for(MemberDTO dto : list) {
				...
			}
			
			for(MemberDTO dto : dao.selectList()) {
				...
			}
	 --%>
	<c:forEach var="dto" items="${list }">
		<tr>
			<td>${dto.idx }</td>
			<td>
				<a href="${cpath }/detail.jsp?idx=${dto.idx}">${dto.userid }</a>
			</td>
			<td>${dto.userpw }</td>
			<td>${dto.username }</td>
			<td>${dto.joinDate }</td>
			<td>${dto.gender }</td>
			<td>${dto.profileImg }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>