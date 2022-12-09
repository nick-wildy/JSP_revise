<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
<style>
	table {
		border: 2px solid black;
		border-collapse: collapse;
	}
	thead th {
		background-color: #dadada;
	}
	td, th {
		padding: 10px 20px;
		border: 1px solid grey;
	}
</style>
</head>
<body>

<h1>product table</h1>
<hr>


<form>
	<p>
		<input type="search" name="keyword" 
			   placeholder="검색" autocomplete="off"
			   autofocus>
		<input type="submit" value="검색">
	</p>		
</form>


<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>IMGPATH</th>
		</tr>
	</thead>
	<tbody>
	<jsp:useBean id="dao" class="product.ProductDAO" />
	<c:forEach var="product" 
			   items="${empty param.keyword ? 
			   				dao.selectList() : 
			   				dao.selectListByName(param.keyword)}">
	<tr>
		<td>${product.idx }</td>
		<td>${product.name }</td>
		<td>${product.price }</td>
		<td>${product.imgPath }</td>
	</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>