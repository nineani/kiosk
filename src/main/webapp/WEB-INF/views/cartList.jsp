<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Cart</h1>
<hr>
<table border="1" style="text-align: center;">
	<tr>
		<th>카트	번호</th>
		<th>오더	번호</th>
		<th>가격</th>
		<th>포인트</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="cartList" items="${cartList }">
	<tr>
		<td>${cartList.c_num }</td>
		<td>${cartList.o_num }</td>
		<td>${cartList.o_pirce }</td>
		<td>${cartList.c_point }</td>
		<td><input type="button" value="삭제" onclick="location.href='cartDelete?num=${cartList.c_num }'"></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>