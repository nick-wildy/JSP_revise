<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 결과</h1>
<hr>
<%@ page import="day08.Member" %>
<%!
	private Member login(Member user) {
		for(Member mem : arr) {
			if(mem.getUserid().equals(user.getUserid())) {
				if(mem.getUserpw().equals(user.getUserpw())) {
					return mem;
				}
			}
		}
		return null;
	}

	private Member[] arr = {
		new Member("iu930516", "iu", "이지은"),	
		new Member("test", "1234", "테스트"),	
		new Member("admin", "1", "관리자"),	
	};
%>
<jsp:useBean id="user" class="day08.Member" />
<jsp:setProperty property="*" name="user"/>
<%
	Member login = login(user);
	String userid = null;
	if(login != null) {
		userid = login.getUserid();
		out.print("<h3>" + login.getUsername() + "님 안녕하세요</h3>");
	}
	else {
		out.print("<h3>로그인 실패</h3>");
	}
%>
<p>
	<a href="quiz-form.jsp"><button autofocus>돌아가기</button></a>
</p>
<%
	String storeid = request.getParameter("storeid");
	boolean flag = login != null && storeid != null;

	Cookie cookie = new Cookie("userid", userid);
	cookie.setMaxAge(flag ? 60 * 3 : 0);	// 조건에 따라 일정 시간 혹은 0을 세팅
	response.addCookie(cookie);
%>



</body>
</html>