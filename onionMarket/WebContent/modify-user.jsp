<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<script>
function modify(){
	alert('수정완료 되었습니다!');
}
</script>


<c:set var="login" value="${login }"></c:set>




<div class="login-box" style="margin-top: 200px;">
  <h2>정보 수정</h2>
  <form method="POST" enctype="multipart/form-data" action="modify-user-action.jsp" autocomplete="off">
  
    <div class="user-box">
      <input type="hidden" name="userIdx" value ="${login.userIdx }" required >
    </div>
    
    <div class="user-box">
      <input type="text" name="userid" value="${login.userid }" required autofocus>
      <label>userid</label>
    </div>
    
    <div class="user-box">
      <input type="password" name="userpw" required>
      <label>userpw</label>
    </div>
    
    <div class="user-box">
      <input type="text" name="nickname" value="${login.nickname }" required>
      <label>nickname</label>
    </div>
    
    <div class="user-box">
      <input type="text" name="phoneNumber" value="${login.phoneNumber }"  required>
      <label>phoneNumber</label>
    </div>
    
    
    <div class="user-box">
      <input type="text" name="address" value="${login.address }"  required>
      <label>address</label>
    </div>
    
    <div class="user-box">
      <input type="text" name="userName" value="${login.userName }" required>
      <label>userName</label>
    </div>
    
    <div class="user-box">
		<p style="color: white;">gender</p>
		<p style="color: white; display: flex; margin: 0px; width: 30px;"><input type="radio" name="gender" value="남" ${login.gender == '남' ? 'checked' : '' } required>남</p>
		<p style="color: white; display: flex; margin: 0px; width: 30px;"><input type="radio" name="gender" value="여" ${login.gender == '여' ? 'checked' : '' }required>여</p>      
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
      <button type="submit" style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px" onclick="modify()">sign up</button>
    </a>
  </form>
</div>










</body>
</html>