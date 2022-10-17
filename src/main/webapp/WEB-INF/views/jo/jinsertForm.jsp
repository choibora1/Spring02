<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** JoInsert Spring_MVC2 **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">

</head>
<body>
	<h2>** JoInsert Spring_MVC2 **</h2>

	<form action="jinsert" method="post">

		<table>

			<tr height="40">
				<td bgcolor="LemonChiffon ">Jno</td>
				<td><input type="text" name="jno" placeholder="조를 입력하세요(숫자)" size="25"></td>
			</tr>
			<tr height="40">
				<td bgcolor="LemonChiffon ">Chief</td>
				<td><input type="text" name="chief" placeholder="닉네임을 입력하세요(영어)" size="25"></td>
			</tr>
			<tr height="40">
				<td bgcolor="LemonChiffon ">Jname</td>
				<td><input type="text" name="jname" placeholder="조 이름을 입력하세요(문자)" size="25"></td>
			</tr>
			<tr height="40">
				<td bgcolor="LemonChiffon ">Note</td>
				<td><input type="text" name="note" placeholder="조 소개를 입력하세요(문자)" size="25"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="등록"> &nbsp;&nbsp;
				<input type="reset" value="취소">
				</td>
			</tr>

		</table>

	</form>

	<c:if test="${not empty message}">
		<hr>
   ${message}<br>
	</c:if>
	<hr>

	<br> 
	&nbsp;&nbsp;<a href="jlist">joList</a> 
	&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a> 
	&nbsp;&nbsp;<a href="home">[HOME]</a>
</body>
</html>