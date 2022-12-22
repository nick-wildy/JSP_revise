<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<script>

function Withdrawal(){
if (!confirm("진짜 탈퇴하시겠습니까? ")) {
    // 취소(아니오) 버튼 클릭 시 이벤트
   		location.replace("mypage.jsp")
} else {
    // 확인(예) 버튼 클릭 시 이벤트
		location.replace("secession.jsp")
	}
}
</script>




<h3><img src="${cpath }/img/보라양파이미지.png" width="30px;"><a href="modify-user.jsp" style="font-size: 50px; text-decoration: none; color: black;">정보 수정</a></h3>

<h3><img src="${cpath }/img/보라양파이미지.png" width="30px;"><a href="trade-list.jsp" style="font-size: 50px; text-decoration: none; color: black;">거래목록</a></h3>

<h3><img src="${cpath }/img/보라양파이미지.png" width="30px;"><a style="font-size: 50px; text-decoration: none; cursor: pointer;" onclick="Withdrawal()">회원탈퇴</a></h3>

</body>
</html>