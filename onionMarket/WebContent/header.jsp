<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="onionMarket.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="pdao" value="${OM_ProductDAO.getInstance() }" />
<c:set var="udao" value="${OM_UserDAO.getInstance() }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<style>
    #root {
        width: 1800px;
        height: 150px;
        margin: 0;
        padding: 0;
    }
    
    .wrap {
    	height: 150px;
    }
    
    .wrap1 {
    	display: flex;
    	flex-wrap:wrap;
    	margin-top: 20px;
    	margin-left: 80px;
    }


    .header {
        display: flex;
        justify-content: center;
        background-color: black;
    }
    
    .header > a {
        text-decoration: none;
        font-size: 100px;
        font-weight: bold;
        color: white;
    }

    .a1 {
        position: relative;
        padding-top: 6%;
        margin-left: 200px;
    }

    .a1 > a {
        color: white;
        text-decoration: none;
    }

    .main {
       	position: relative;
       	font-size: 100px;
       	color: red;
       	margin: 50px, 100px;
    }

    .aside {
        position: relative;
        margin-left: 78%;
    }
    
    .aside > p > a > img {
    	width: 400px;
    }
    
    td, th {
    	border: 1px solid black;
    }
    
    	
	.login-box {
	  position: absolute;
	  top: 50%;
	  left: 40%;
	  width: 400px;
	  padding: 40px;
	  transform: translate(-50%, -50%);
	  background: black;
	  box-sizing: border-box;
	  box-shadow: 0 15px 25px rgba(0,0,0,.6);
	  border-radius: 10px;
	}
	
	.login-box h2 {
	  margin: 0 0 30px;
	  padding: 0;
	  color: #fff;
	  text-align: center;
	}
	
	.login-box .user-box {
	  position: relative;
	}
	
	.login-box .user-box input {
	  width: 100%;
	  padding: 10px 0;
	  font-size: 16px;
	  color: #fff;
	  margin-bottom: 30px;
	  border: none;
	  border-bottom: 1px solid #fff;
	  outline: none;
	  background: transparent;
	}
	.login-box .user-box label {
	  position: absolute;
	  top:0;
	  left: 0;
	  padding: 10px 0;
	  font-size: 16px;
	  color: #fff;
	  pointer-events: none;
	  transition: .5s;
	}
	
	.login-box .user-box input:focus ~ label,
	.login-box .user-box input:valid ~ label {
	  top: -20px;
	  left: 0;
	  color: #03e9f4;
	  font-size: 12px;
	}
	
	.login-box form a {
	  position: relative;
	  display: inline-block;
	  padding: 10px 20px;
	  color: #03e9f4;
	  font-size: 16px;
	  text-decoration: none;
	  text-transform: uppercase;
	  overflow: hidden;
	  transition: .5s;
	  margin-top: 40px;
	  letter-spacing: 4px
	}
	
	.login-box a:hover {
	  background: #03e9f4;
	  color: #fff;
	  border-radius: 5px;
	  box-shadow: 0 0 5px #03e9f4,
	              0 0 25px #03e9f4,
	              0 0 50px #03e9f4,
	              0 0 100px #03e9f4;
	}
	
	.login-box a span {
	  position: absolute;
	  display: block;
	}
	
	.login-box a span:nth-child(1) {
	  top: 0;
	  left: -100%;
	  width: 100%;
	  height: 2px;
	  background: linear-gradient(90deg, transparent, #03e9f4);
	  animation: btn-anim1 1s linear infinite;
	}
	
	@keyframes btn-anim1 {
	  0% {
	    left: -100%;
	  }
	  50%,100% {
	    left: 100%;
	  }
	}
	
	.login-box a span:nth-child(2) {
	  top: -100%;
	  right: 0;
	  width: 2px;
	  height: 100%;
	  background: linear-gradient(180deg, transparent, #03e9f4);
	  animation: btn-anim2 1s linear infinite;
	  animation-delay: .25s
	}
	
	@keyframes btn-anim2 {
	  0% {
	    top: -100%;
	  }
	  50%,100% {
	    top: 100%;
	  }
	}
	
	.login-box a span:nth-child(3) {
	  bottom: 0;
	  right: -100%;
	  width: 100%;
	  height: 2px;
	  background: linear-gradient(270deg, transparent, #03e9f4);
	  animation: btn-anim3 1s linear infinite;
	  animation-delay: .5s
	}
	
	@keyframes btn-anim3 {
	  0% {
	    right: -100%;
	  }
	  50%,100% {
	    right: 100%;
	  }
	}
	
	.login-box a span:nth-child(4) {
	  bottom: -100%;
	  left: 0;
	  width: 2px;
	  height: 100%;
	  background: linear-gradient(360deg, transparent, #03e9f4);
	  animation: btn-anim4 1s linear infinite;
	  animation-delay: .75s
	}
	
	@keyframes btn-anim4 {
	  0% {
	    bottom: -100%;
	  }
	  50%,100% {
	    bottom: 100%;
	  }
	}
			
	.login-box > a > button:hover {
	  background: #03e9f4;
	  color: #fff;
	  border-radius: 5px;
	  box-shadow: 0 0 5px #03e9f4,
	              0 0 25px #03e9f4,
	              0 0 50px #03e9f4,
	              0 0 100px #03e9f4;
	}
	
    
    
</style>
</head>
<body>

<div id="root">
    <div class="wrab">
        <div class="header">
            <a href="index.jsp">양파마켓</a>
            <div class="a1">
            	<a>${login.nickname }</a><a>${login != null ? '님 환영합니다!' : '' }</a>
                <a href="${login != null ? 'logout.jsp' : 'login.jsp' }">${login != null ? '로그아웃' : '로그인' }</a>
                <a href="${login != null ? 'mypage.jsp' : 'idCheck.jsp' }">${login != null ? '마이페이지' : '회원가입' }</a>
            </div>
        </div>
              
        <div class="aside">
            <p><a href="#"><img src="${cpath }/img/광고1.jpg"></a></p>
            <p><a href="#"><img src="${cpath }/img/광고2.jpg"></a></p>
            <p><a href="#"><img src="${cpath }/img/광고3.jpg"></a></p>
        </div>
    </div>
</div>
    
