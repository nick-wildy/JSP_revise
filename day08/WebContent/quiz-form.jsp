<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz-form.jsp</title>
</head>
<body>

<h1>로그인 창에서 자동 아이디 저장</h1>
<hr>
<!-- 
		로그인 성공 && 체크박스 체크 		=> 쿠키에 userid를 저장
		로그인 실패 || 체크박스 체크안함 	=> 쿠키를 제거
 -->

<form method="POST" action="quiz-action.jsp">
	<p><input type="text" 
			  name="userid" 
			  placeholder="ID" 
			  value="${cookie.userid.value }" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required></p>
	<p>
		<label>
			<input type="checkbox" 
				   name="storeid"
				   ${empty cookie.userid ? '' : 'checked'} >
			ID 저장
		</label>
	</p>
	<p><input type="submit" value="로그인"></p>
</form>

<details>
	<summary>작업 순서</summary>
	<ol>
		<li>아이디/패스워드 입력받기</li>
		<li>로그인 성공/실패 판별하기</li>
		<li>로그인 성공 && 체크박스 체크 판별하기</li>
		<li>3의 조건이 참이면, 쿠키를 생성</li>
		<li>3의 조건이 거짓이면, 쿠키를 삭제</li>
		<li>입력페이지에서 쿠키가 있으면 값을 채워주기, 체크박스 체크하기</li>
	</ol>
</details>

</body>
</html>