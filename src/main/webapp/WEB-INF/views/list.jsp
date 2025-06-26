<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.simplecss.org/simple.min.css">
<title>list</title>
</head>
<body>
<h1>list</h1>
<table width="100%">
	<tr>
		<td>번호</td>
		<td>이름</td>
		<td>제목</td>
		<td>날자</td>
		<td>조회수</td>
	</tr>
	<c:forEach items="${list }" var="dto">
	<tr>
		<td>${dto.bid }</td>
		<td>${dto.bname }</td>
		<td>
			<c:set value="${dto.bindent }" var="endIndent" />
			<c:forEach begin="1" end="${dto.bindent }"  var="cnt">
				<c:if test="${cnt ne 1 }">&nbsp;&nbsp;</c:if>
				<c:if test="${cnt eq endIndent }">
					<img src="/static/images/arrow-right.gif" alt="" />
				</c:if>
			</c:forEach>
			<a href="content_view?bid=${dto.bid }">${dto.btitle }</a>
		</td>
		<td>${dto.bdate }</td>
		<td>${dto.bhit }</td>
	</tr>
	</c:forEach>
</table>
<button type="button" onclick="location.href='write_view'">글작성</button>
</body>
</html>