<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="onionMarket.*"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="dao" value="${OM_UserDAO.getInstance() }" />

<h3>${dao.getVersion() }</h3>
<h3> </h3>
</body>
</html>