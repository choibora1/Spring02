<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** JoUpdate Spring_MVC2 **</title>

<link rel="stylesheet" type="text/css"
	href="resources/myLib/myStyle.css">

</head>
<body>
	<h2>** JoUpdate Spring_MVC2 **</h2>

	<form action="jupdate" method="post">

		<table>

			<tr height="40">
				<td bgcolor="Thistle">Jno</td>
				<td><input type="text" name="jno" id="jno"  size="20"
					value="${apple.jno}"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Thistle">Chief</td>
				<td><input type="text" name="chief" size="20"
					value="${apple.chief}"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Thistle">Jname</td>
				<td><input type="text" name="jname" value="${apple.jname}"></td>
			</tr>
			
			<tr height="40">
				<td bgcolor="Thistle">Note</td>
				<td><input type="text" name="note" value="${apple.note}">
				</td>
				<hr>
				
				<tr>
					<td></td>
					<td><input type="submit" value="등록"> &nbsp;&nbsp; <input
						type="reset" value="취소"></td>
				</tr>
				
		</table>

	</form>

	<c:if test="${not empty message}">
		<hr>
${message}<br>
	</c:if>
	<hr>

	<a href="javascript:history.go(-1)">이전으로</a> &nbsp;&nbsp;
	<a href="home">[Home]</a>

</body>
</html>