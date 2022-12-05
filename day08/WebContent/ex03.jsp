<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day08.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
<style>
	div.wrap {
		width: 900px;
		display: flex;
		flex-flow: wrap;
	}
	div.item {
		width: 200px;
		display: flex;
		flex-flow: column;
		margin: 10px;
		padding: 10px;
		border: 1px solid #dadada;
		cursor: pointer;
		text-align: center;
	}
	div.item:hover {
		background-color: #f5f6f7;
	}
	
	
	div.recent {
		width: 200px;
		height: 500px;
		background-color: #dadada;
		position: fixed;
		top: 100px;
		right: 20px;
	}
	h4 {
		text-align: center;
	}
	div.recent > div.item {
		width: 150px;
	}
	div.recent > div.item > div.img {
		position: relative;
	}
	div.recent > div.item > div.img > div.close {
		position: absolute;
		display: none;
		top: 0;
		right: 0;
	}
	div.recent > div.item > div.img > div.close > a {
		background-color: black;
		color: white;
		font-weight: bold;
		text-decoration: none;
		display: block;
		width: 25px;
		height: 25px;
	}
	div.recent > div.item > div.img:hover > div.close {
		display: block;
	}
	
	
</style>
</head>
<body>
<%
	ArrayList<Product> list = (ArrayList<Product>)application.getAttribute("list");

	if(list == null) {
		Product[] arr = {
			new Product("집업 니트 실버", 54900, "1.jpg"),	
			new Product("카디건 브라운", 44900, "2.jpg"),	
			new Product("블랙 폴라", 32900, "3.jpg"),	
			new Product("[무신사 단독] 유아인 니트", 29900, "4.jpg"),	
			new Product("패턴 무늬 니트", 44900, "5.jpg"),	
		};
		list = new ArrayList(Arrays.asList(arr));
		application.setAttribute("list", list);
	}
%>

<h1>상품 목록</h1>
<hr>

<div class="wrap">
	<%
		for(Product product : list) {
			pageContext.setAttribute("product", product);
			%>
			<div class="item">
				<div class="img">
					<a href="ex03-detail.jsp?idx=${product.idx }">
						<img src="img/${product.imgPath }" width="150">
					</a>
				</div>
				<div class="name">${product.name }</div>
				<div class="price">${product.price }원</div>
			</div>
			<%
		}
	%>
</div>


<%
	int recent = -1;
	Cookie[] cookies = request.getCookies();
	for(int i = 0; cookies != null && i < cookies.length; i++) {
		if(cookies[i].getName().equals("recent")) {
			recent = Integer.parseInt(cookies[i].getValue());
			break;
		}
	}
	if(recent != -1) {
		out.print(recent);
		for(Product p : list) {
			if(p.getIdx() == recent) {
				pageContext.setAttribute("recent", p);
			}
		}
		%>
		<div class="recent">
			<h4>최근 본 상품</h4>
			<div class="item">
				<div class="img">
					<div class="close">
						<a href="ex03-delete.jsp">X</a>
					</div>
					<a href="ex03-detail.jsp?idx=${recent.idx }">
						<img src="img/${recent.imgPath }" width="100">
					</a>
				</div>
				<div class="name">${recent.name }</div>
			</div>
		</div>
		<%
	}
%>





</body>
</html>