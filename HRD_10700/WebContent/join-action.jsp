<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join-action.jsp</title>
</head>
<body>





<jsp:useBean id="dao" class="dbpkg.Util"/>
<jsp:useBean id="member" class="dbpkg.MemberDTO"/>
<jsp:setProperty property="*" name="member"/>

${dao.insert(member) }"

<c:redirect url="list.jsp"/>
</body>
</html>