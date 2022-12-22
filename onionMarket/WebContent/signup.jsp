<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="onionMarket.*"%>
<%@ include file="header.jsp" %>



<div class="login-box" style="margin-top: 200px;">
  <h2>회원 가입</h2>
  <form method="POST" enctype="multipart/form-data" action="signup-action.jsp" autocomplete="off">
    <div class="user-box">
      <input type="text" name="userid" value ="${param.userid }" required >
      <label>UserID</label>
    </div>
    <div class="user-box">
      <input type="password" name="userpw" required autofocus>
      <label>Password</label>
    </div>
    <div class="user-box">
      <input type="text" name="nickname" required>
      <label>nickname</label>
    </div>
    <div class="user-box">
      <input type="text" name="phoneNumber" required>
      <label>phoneNumber</label>
    </div>
    <div class="user-box">
      <input type="text" name="address" required>
      <label>address</label>
    </div>
    <div class="user-box">
      <input type="text" name="userName" required>
      <label>userName</label>
    </div>
    
    <div class="user-box">
		<p style="color: white;">gender</p>
		<p style="color: white; display: flex; margin: 0px; width: 30px;"><input type="radio" name="gender" value="남" required>남</p>
		<p style="color: white; display: flex; margin: 0px; width: 30px;"><input type="radio" name="gender" value="여" required>여</p>      
    </div>
    
    <div class="user-box">
    	<p style="color: white;">userImg</p>
      <input type="file" name="userImg">
    </div>
    

    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <button type="submit" style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px">sign up</button>
    </a>
  </form>
</div>




</body>
</html>