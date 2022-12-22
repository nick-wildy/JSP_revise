<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.detailPage {
		display: flex;
		flex-direction: column;
		margin-left: 25%;
		border: 2px solid black;
		width: 700px;
		height: 700px;
	}
	
	.profile {
		flex-direction: row;
		border-bottom: 1px solid black;
	}
	
	.selltext > div {
		margin: 5px 10px;
	}

</style>
</head>
<body>

<c:set var="detail" value="${pdao.selectOne(param.productIdx) }" />


	<a href="index.jsp" style="position:absolute; border: 3px solid black;
			padding: 10px; text-decoration: none; margin-left: 470px; border-radius: 20px; background-color: black; color: white;">
			홈
		</a>
	    
	    
	<div style="visibility: ${login.userid != detail.loginUserId ? 'visible' : 'hidden'};">
		<a href="trade.jsp?productIdx=${detail.productIdx }" style="position:absolute; border: 3px solid black;
			padding: 10px; text-decoration: none; margin-left: 1090px; border-radius: 20px; background-color: black; color: white;"
		>거래신청
	    </a>
	</div>
	
	<div style="visibility: ${login.userid == detail.loginUserId ? 'visible' : 'hidden'};">
		<a href="update-form.jsp?productIdx=${detail.productIdx }" style="position:absolute; border: 3px solid black;
			padding: 10px; text-decoration: none; margin-left: 1050px; border-radius: 20px; background-color: black; color: white;"
			>수정
	  	</a>
	</div>

	<div style="visibility: ${login.userid == detail.loginUserId ? 'visible' : 'hidden'};">
		<a href="delete.jsp?productIdx=${detail.productIdx }" style="position:absolute; border: 3px solid black;
			padding: 10px; text-decoration: none; margin-left: 1120px; border-radius: 20px; background-color: black; color: white;"
			>삭제
	    </a>
	</div>





<div class="detailPage" style="margin-top: 70px;">
	<div><img src="${cpath }/onionMarketPic/${detail.productImg} " width="100%;"></div>
	
	<div class="profile" style="display: flex;">
		<div><img src="${cpath }/onionMarketPic/${detail.loginUserImg } " width="100px;"></div>
		<div style="margin-left: 15px;"><a href="#" style="text-decoration: none; color: black;">${detail.loginUserNick } <br> ${detail.loginUserAddress }</a></div>
	</div>
	
	<div class="selltext">
		<div style="font-weight: bold;">제목 : ${detail.productName }</div>
		<div style="font-weight: bold;">가격 : ${detail.productPrice }</div>
		<div>글 작성일 : ${detail.productDate }</div>
		<hr>
		<div>상세 정보 : </div>
		<div>${detail.productText }</div>
	</div>	
</div>

</body>
</html>