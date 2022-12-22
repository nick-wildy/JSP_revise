<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dto" value="${OM_ProductFile.getDTO(pageContext.request) }"/>
<c:set var="add" value="${pdao.add(dto) }"/>

<c:if test="${add != 0}">
   <script>
   alert("상품 등록이 완료 되었습니다.");
   location.replace("index.jsp");
   </script>
</c:if>

<c:if test="${add == 0}">
   <script>
   alert("상품 등록에 실패했습니다.");
   location.replace("product-add.jsp");
   </script>
</c:if>

</body>
</html>