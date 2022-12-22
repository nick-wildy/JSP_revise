<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dto" value="${OM_ProductFile.getDTO2(pageContext.request) }"/>

<c:set var="update" value="${pdao.update(dto) }"/>

<c:if test="${update != 0}">
	<script>
   alert("수정 완료 되었습니다.");
   location.replace("index.jsp");
   </script>
</c:if>

<c:if test="${update == 0}">
	<script>
	   alert("상품 등록에 실패했습니다.");
	   location.replace("update-form.jsp");
   </script>
</c:if>



</body>
</html>