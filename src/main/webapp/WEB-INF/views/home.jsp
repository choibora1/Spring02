<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
	
</head>
<body>
<h1>
	난 스프링이댜!  
</h1>
<h1>
	ㅎㅇㅎㅇ!  
</h1>

<c:if test="${not empty loginID}">
	
	<h2>=> ${loginName}님!! 안녕하세용>< 반가워요!!</h2>
	
	</c:if>
	
	<c:if test="${not empty message}">
	
	=> ${message}<br>
	
	</c:if>
	
	<hr>
	<img alt="main" src="resources/images/aaa.gif" width="300" height="400">

<hr>

	<!-- Login 전 -->
	
	<c:if test="${empty loginID}">
	
	&nbsp;&nbsp;<a href="loginf">LoginF</a>
	&nbsp;&nbsp;<a href="joinf">JoinF</a>
	
	</c:if>
	
<!-- <a href="/Web02/mdetail?id=brownie">MyInfo</a>&nbsp;&nbsp; -->

	<!-- Login후 -->
	
	<c:if test="${not empty loginID}">
	
	&nbsp;&nbsp;<a href="logout">Logout</a>
	&nbsp;&nbsp;<a href="mdetail">내 정보 보기</a>
	&nbsp;&nbsp;<a href="mdetail?jCode=U">내 정보 수정하기</a>
	&nbsp;&nbsp;<a href="mdelete">회원탈퇴</a>
	
	</c:if>
	<br>
	
	&nbsp;&nbsp;<a href="mlist">memberList</a>
	&nbsp;&nbsp;<a href="mcrilist">MCriList</a><hr>
	
	&nbsp;&nbsp;<a href="blist">boardList</a>
	&nbsp;&nbsp;<a href="bcrilist">BCriList</a><hr>
	
	&nbsp;&nbsp;<a href="jlist">joList</a>
	
<hr>

</body>
</html>
