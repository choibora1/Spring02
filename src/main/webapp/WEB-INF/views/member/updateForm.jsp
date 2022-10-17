<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** MemberUpdate Spring_MVC2 **</title>

<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">

</head>
<body>
	<h2>** MemberUpdate Spring_MVC2 **</h2>


	<form action="mupdate" method="post">

		<table>
			<tr height="40">
				<td bgcolor="Gold ">I D</td>
				<td><input type="text" name="id" id="id" size="20"
					value="${apple.id}" readonly></td>
			</tr>
			<!-- ** input Tag 입력 막기 
                                       => disabled :  서버로 전송 안됨 
                                       => readonly :  서버로 전송 됨   -->
			<tr height="40">
				<td bgcolor="Gold ">Password</td>
				<td><input type="password" name="password" id="password"
					size="20" value="${apple.password}"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Gold ">Name</td>
				<td><input input type="text" name="name" id="name"
					value="${apple.name}"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Gold ">Info</td>
				<td><input input type="text" name="info" id="info"
					value="${apple.info}"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Gold ">Birthday</td>
				<td><input input type="date" name="birthday" id="birthday"
					value="${apple.birthday}"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Gold ">Jno</td>
				<td><select name="jno" id="jno">

						<c:choose>

							<c:when test="${apple.jno==1}">
								<option value="1" selected>1 : unique</option>
								<option value="2">2 : 천지창조</option>
								<option value="3">3 : 3조</option>
								<option value="4">4 : 4조</option>
								<option value="5">5 : do가자</option>
								<option value="6">6 : 김고정</option>
								<option value="9">9 : 관리자</option>
							</c:when>
							<c:when test="${apple.jno==2}">
								<option value="1">1 : unique</option>
								<option value="2" selected>2 : 천지창조</option>
								<option value="3">3 : 3조</option>
								<option value="4">4 : 4조</option>
								<option value="5">5 : do가자</option>
								<option value="6">6 : 김고정</option>
								<option value="9">9 : 관리자</option>
							</c:when>
							<c:when test="${apple.jno==3}">
								<option value="1">1 : unique</option>
								<option value="2">2 : 천지창조</option>
								<option value="3" selected>3 : 3조</option>
								<option value="4">4 : 4조</option>
								<option value="5">5 : do가자</option>
								<option value="6">6 : 김고정</option>
								<option value="9">9 : 관리자</option>
							</c:when>
							<c:when test="${apple.jno==4}">
								<option value="1">1 : unique</option>
								<option value="2">2 : 천지창조</option>
								<option value="3">3 : 3조</option>
								<option value="4" selected>4 : 4조</option>
								<option value="5">5 : do가자</option>
								<option value="6">6 : 김고정</option>
								<option value="9">9 : 관리자</option>
							</c:when>
							<c:when test="${apple.jno==5}">
								<option value="1">1 : unique</option>
								<option value="2">2 : 천지창조</option>
								<option value="3">3 : 3조</option>
								<option value="4">4 : 4조</option>
								<option value="5" selected>5 : do가자</option>
								<option value="6">6 : 김고정</option>
								<option value="9">9 : 관리자</option>
							</c:when>
							<c:when test="${apple.jno==6}">
								<option value="1">1 : unique</option>
								<option value="2">2 : 천지창조</option>
								<option value="3">3 : 3조</option>
								<option value="4">4 : 4조</option>
								<option value="5">5 : do가자</option>
								<option value="6" selected>6 : 김고정</option>
								<option value="9">9 : 관리자</option>
							</c:when>

							<c:otherwise>
								<option value="1">1 : unique</option>
								<option value="2">2 : 천지창조</option>
								<option value="3">3 : 3조</option>
								<option value="4">4 : 4조</option>
								<option value="5">5 : do가자</option>
								<option value="6">6 : 김고정</option>
								<option value="9" selected>9 : 관리자</option>
							</c:otherwise>

						</c:choose>


				</select></td>
			</tr>
			<tr height="40">
				<td bgcolor="Gold ">Age</td>
				<td><input input type="text" name="age" id="age"
					value="${apple.age}"></td>
			</tr>
			<tr height="40">
				<td bgcolor="Gold ">Point</td>
				<td><input input type="text" name="point" id="point"
					value="${apple.point}"></td>
			</tr>
			<tr height="40">
				<td></td>
				<td><input type="submit" value="수정">&nbsp;&nbsp; <input
					type="reset" value="취소">&nbsp;&nbsp;</td>
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