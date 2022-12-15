<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex03.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-action.jsp</title>
</head>
<body>

<c:set var="dto" value="${FileUtil.getDTO(pageContext.request) }" />

<h3>dto.name : ${dto.name }</h3>
<h3>dto.birthDate : ${dto.birthDate }</h3>
<h3>dto.uploadFile : ${dto.uploadFile }</h3>
<h3>dto.imgPath : ${dto.imgPath }</h3>

<jsp:useBean id="dao" class="ex03.Ex03DAO" />

</body>
</html>