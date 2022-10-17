<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>** MemberJoin Spring_MVC2 **</title>

	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
	
</head>
<body>
	<h2>** MemberJoin Spring_MVC2 **</h2>


	<form action="join" method="post">

		<table>
			<tr height="40">
				<td bgcolor="Salmon">I D</td>
				<td><input type="text" name="id" id="id" size="20"
					placeholder="id는 영문, 숫자 10자이내"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Salmon">Password</td>
				<td><input type="password" name="password" id="password"
					size="20" placeholder="특수문자 포함" value="12345!"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Salmon">Name</td>
				<td><input input type="text" name="name" id="name" ></td>
			</tr>
			<tr height="40">
				<td bgcolor="Salmon">Info</td>
				<td><input input type="text" name="info" id="info" ></td>
			</tr>
			<tr height="40">
				<td bgcolor="Salmon">Birthday</td>
				<td><input input type="date" name="birthday" id="birthday"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Salmon">Jno</td>
				<td><select name="jno" id="jno">
						<option value="1">1 : unique</option>
						<option value="2">2 : 천지창조</option>
						<option value="3">3 : 3조</option>
						<option value="4">4 : 4조</option>
						<option value="5">5 : do가자</option>
						<option value="6">6 : 김고정</option>
						<option value="9" selected>9 : 관리자</option>
				</select></td>
			</tr>
			<tr height="40">
				<td bgcolor="Salmon">Age</td>
				<td><input input type="text" name="age" id="age"
					placeholder="정수 입력"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Salmon">Point</td>
				<td><input input type="text" name="point" id="point"
					placeholder="실수 입력"></td>
			</tr>
			<tr height="40"><td></td>
				<td>
					<input type="submit" value="가입">&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp;
				</td>
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