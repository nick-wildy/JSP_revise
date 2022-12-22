<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="update" value="${pdao.selectOne(param.productIdx) }" />

<div class="login-box" style="margin-top: 170px;">
  <h2>물건 수정</h2>
  <form method="POST" enctype="multipart/form-data" action="update-action.jsp">
    <div class="user-box">
      <input type="hidden" name="productIdx" value="${update.productIdx }" required autofocus autocomplete="off">
    </div>
    
    <div class="user-box">
      <input type="text" name="productName" value="${update.productName }" required autocomplete="off">
      <label>productName</label>
    </div>
    
    <div class="user-box">
      <input type="number" name="productPrice" value="${update.productPrice }" required autocomplete="off">
      <label>productPrice</label>
    </div>    
    
    <div class="user-box">
      <input type="hidden" name="loginUserId" value="${login.userid }" required autocomplete="off">
      <label>productPrice</label>
    </div>
    
    <div class="user-box">
      <input type="hidden" name="loginUserAddress" value="${login.address }" required autocomplete="off">
      <label>loginUserAddress</label>
    </div>
    
    <div class="user-box">
      <input type="hidden" name="loginUserNick" value="${login.nickname }" required autocomplete="off">
      <label>loginUserNick</label>
    </div>
    
    <div class="user-box">
      <input type="hidden" name="loginUserImg" value="${login.userImg }" required autocomplete="off">
      <label>loginUserImg</label>
    </div>
    
    <div class="user-box">
      <textarea rows="15" cols="40" name="productText">${update.productText }</textarea>
    </div>
    
    <div class="user-box">
    	<p style="color: white;">uploadFile</p>
      <input type="file" name="uploadFile">
    </div>
   
    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <button type="submit" style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px">올리기</button>
    </a>
  </form>
</div>





</body>
</html>