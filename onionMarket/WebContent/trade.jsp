<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<script>
function trade(){
	alert('거래 신청이 완료 되었습니다.');
}
</script>


<c:set var="product" value="${pdao.selectOne(param.productIdx)}" />


<div class="login-box" style="margin-top: 65px;">
  <h2>거래 신청</h2>
  <form method="POST" action="trade-action.jsp">
    <div class="user-box">
      <input type="hidden" name="productIdx" value="${param.productIdx }" required autofocus autocomplete="off">
    </div>
    
    <div class="user-box">
      <input type="text" name="userName" value="${login.userName}" required autocomplete="off">
      <label>userName</label>
    </div>
    
    <div class="user-box">
      <input type="text" name="phoneNumber" value="${login.phoneNumber}" required autocomplete="off">
      <label>phoneNumber</label>
    </div>    
    
    <div class="user-box">
      <input type="text" name="address" value="${login.address}" required autocomplete="off">
      <label>address</label>
    </div>
    
    <div class="user-box">
      <input type="hidden" name="sellerId" value="${product.loginUserId }" required autocomplete="off">
      <label>sellerId</label>
    </div>
    
    <div class="user-box">
      <input type="text" name="productName" value="${product.productName }" required autocomplete="off">
      <label>productName</label>
    </div>
    
    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <button type="submit" style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px" onclick="trade()">올리기</button>
    </a>
  </form>
</div>





</body>
</html>