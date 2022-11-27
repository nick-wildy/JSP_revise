<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
String referer = request.getHeader("referer");
String before="http://localhost:8080/day03/ex01-form.jsp";
	if(referer.equals(before) ==false){	// 만약 지정한 주소에서 온것이 아니라면
		response.sendRedirect(before);	// 그주소 강제 이동한다.
	}
	
	/*이후 파라미터 처리 코드*/
	
	String[] values =request.getParameterValues("language");
	String msg = "당신이 선택한 언어는 ";
	if(values !=null && values.length !=0){
		for(int i =0; i <values.length; i++){
			msg += values[i];
			msg +=( i==values.length -1) ? "입니다." :"."; 
		}
	}
	else{
		msg +="없습니다.";
		
	}
%>
<h3><%=msg %></h3>
	
</body>
</html>