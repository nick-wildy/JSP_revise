<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="login-box">
  <h2>아이디 중복 확인</h2>
  <form method="POST" action="idCheck_action.jsp">
    <div class="user-box">
      <input type="text" name="userid" required autofocus autocomplete="off">
      <label>UserID</label>
    </div>
    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <button type="submit" style="background-color: inherit; border: 0px; color: white; animation: btn-anim4 1s linear infinite; border-radius: 5px">ID check</button>
    </a>
  </form>
</div>





</body>
</html>