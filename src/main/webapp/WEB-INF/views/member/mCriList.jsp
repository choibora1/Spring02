<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Member Criteria_Page List Spring02_MVC2 **</title>
<link rel="stylesheet" type="text/css"
	href="resources/myLib/myStyle.css">

<script src="resources/myLib/jquery-3.2.1.min.js"></script>

<script>
	$(function() {

		// 1) SearchType이 '전체'이면 keyword 클리어
		$('#searchType').change(function() {
			if ($(this).val() == 'n')
				$('#keyword').val('');
		}); // change

		$('#searchBtn').click(
				function() {
					self.location = "mcrilist" + "${pageMaker.makeQuery(1)}"
							+ "&searchType=" + $('#searchType').val()
							+ "&keyword=" + $('#keyword').val()
				}) // click
	}); // Ready
</script>

</head>
<body>

	<h2>** Member Criteria_Page List Spring02_MVC2 **</h2>
	<c:if test="${not empty message}">
      ${message}<br>
	</c:if>
	<hr>
	<div id="searchBar">

		<select name="searchType" id="searchType">
			<option value="n"
				${pageMaker.cri.searchType == null ? 'selected' : ' '}>전체</option>
			<option value="i"
				${pageMaker.cri.searchType == 'i' ? 'selected' : ' '}>ID</option>
			<option value="a"
				${pageMaker.cri.searchType == 'a' ? 'selected' : ' '}>Name</option>
			<option value="f"
				${pageMaker.cri.searchType == 'f' ? 'selected' : ' '}>Info</option>
			<option value="j"
				${pageMaker.cri.searchType == 'j' ? 'selected' : ' '}>Jno</option>
			<option value="b"
				${pageMaker.cri.searchType == 'b' ? 'selected' : ' '}>Birthday</option>
			<option value="in"
				${pageMaker.cri.searchType == 'in' ? 'selected' : ' '}>ID
				or Name</option>
		</select> <input type="text" name="keyword" id="keyword""${pageMaker.cri.keyword}">
		<button id="searchBtn">Search</button>

	</div>
	<br>
	<hr>
	<table width=100%>
		<tr bgcolor="LemonChiffon" height="30" style="text-align: center;">
			<th>I D</th>
			<th>Password</th>
			<th>Name</th>
			<th>Info</th>
			<th>Birthday</th>
			<th>Jno</th>
			<th>Age</th>
			<th>Point</th>
		</tr>

		<c:if test="${not empty banana}">
			<c:forEach var="member" items="${banana}">
				<tr height="30">
				
					<td>
					<c:if test="${loginID == 'admin'}">
							<a href="mdetail?id=${member.id}">${member.id}</a>
						</c:if> 
						<c:if test="${loginID != 'admin'}">
					${member.id}
						</c:if>
					</td>

					<td>${member.password}</td>
					<td>${member.name}</td>
					<td>${member.info}</td>
					<td>${member.birthday}</td>
					<td>${member.jno}</td>
					<td>${member.age}</td>
					<td>${member.point}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<hr>

	<!-- ==================================================== -->

	<!-- ** Criteria_Page ** -->
	<div align="center">

		<!-- First, Prev -->
		<c:choose>
			<c:when test="${pageMaker.prev && pageMaker.spageNo>1}">

				<!-- New_ver01_Cri : pageMaker.makeQuery(1) -->
				<!-- New_ver02_Cri : pageMaker.searchQuery(1) -->

				<a href="mcrilist${pageMaker.searchQuery(1)}">FP</a>&nbsp;      
         		<a
					href="mcrilist${pageMaker.searchQuery(pageMaker.spageNo-1)}">&lt;</a>&nbsp;&nbsp;
         
			</c:when>
			<c:otherwise>
				<font color="Gray">FP&nbsp;&lt;&nbsp;&nbsp;</font>
			</c:otherwise>
		</c:choose>

		<!-- Display PageNo -->
		<c:forEach var="i" begin="${pageMaker.spageNo}"
			end="${pageMaker.epageNo}">
			<c:if test="${i == pageMaker.cri.currPage}">
				<font size="5" color="Orange">${i}</font>&nbsp;
   			</c:if>

			<c:if test="${i!=pageMaker.cri.currPage}">

				<!-- New_ver01_Cri -->
				<a href="mcrilist${pageMaker.searchQuery(i)}">${i}</a>&nbsp;
    
    			<!-- OLD_version 
      			<a href="bcrilist?currPage=${i}&rowsPerPage=5">${i}</a>&nbsp;
      			-->

			</c:if>
		</c:forEach>

		<!-- Next, Last -->
		<c:choose>
			<c:when test="${pageMaker.next && pageMaker.epageNo>0}">

				<!-- New_ver01_Cri -->
				<a href="mcrilist${pageMaker.searchQuery(pageMaker.epageNo+1)}">&nbsp;&nbsp;&gt;</a>
				<a href="mcrilist${pageMaker.searchQuery(pageMaker.lastPageNo)}">&nbsp;LP</a>

				<!-- OLD_version
         <a href="bcrilist?currPage=${pageMaker.epageNo+1}&rowsPerPage=5">&nbsp;&nbsp;&gt;</a>
         <a href="bcrilist?currPage=${pageMaker.lastPageNo}&rowsPerPage=5">&nbsp;LP</a>
          -->

			</c:when>
			<c:otherwise>
				<font color="Gray">&nbsp;&gt;&nbsp;&nbsp;LP</font>
			</c:otherwise>
		</c:choose>
	</div>


	<!-- ==================================================== -->

	<c:if test="${not empty loginID}">
   &nbsp;&nbsp;&nbsp;<a href="binsertf">[새 게시글 등록하기]</a>
		<br>
	</c:if>
	<br> &nbsp;&nbsp;&nbsp;
	<a href="blist">[boardList]</a>
	<br>
	<br> &nbsp;&nbsp;&nbsp;
	<a href="javascript:history.go(-1)">[이전으로]</a> &nbsp;&nbsp;&nbsp;
	<a href="home">[Home]</a>
	<br>

</body>
</html>