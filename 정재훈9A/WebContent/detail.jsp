<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<c:set var="detail" value="${dao.getDetail(param.idx) }"/>

				<div class="detailitem"  style="border: 1px solid black;">
				<div><img src="${cpath }/image/${detail.img }" width="100px"></div>
				<div id="name" >${detail.menu }</div>
				<div id="memo">${detail.memo }</div>
				<div id="price">${detail.price }원</div>
				<div><a href="modify.jsp?idx=${detail.idx }"><button>수정하기</button></a></div>
				<div><a href="delete.jsp?idx=${detail.idx }"><button>삭제하기</button></a></div>
			
		</div>
		




</body>
</html>