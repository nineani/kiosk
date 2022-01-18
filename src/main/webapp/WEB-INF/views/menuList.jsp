<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<meta http-equiv='refresh' content='10;'>
<title>Insert title here</title>
</head>
<body>
<h1>Menu</h1>
<input type="button" value="메뉴 추가" onclick="location.href='menuInsertView'">
<hr>
	<table border="1" style="text-align: center;">
		<tr>
			<th>메뉴번호</th>
			<th>메뉴이름</th>
			<th>메뉴카테고리</th>
			<th>메뉴가격</th>
			<th>메뉴이미지</th>
			<th>메뉴품절이미지</th>
			<th>메뉴품절번호</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="menuList" items="${menuList }">
		<tr>
			<td>${menuList.p_num }</td>
			<td>${menuList.p_name }</td>
			<td>${menuList.p_category }</td>
			<td>${menuList.p_price }</td>
			<td><img style="width: 100px; height: 100px;" alt="${menuList.p_image }" src="resources/img/${menuList.p_image }"></td>
			<td><img style="width: 100px; height: 100px;" alt="${menuList.p_image2 }" src="resources/img/${menuList.p_image2 }"></td>
			<td>${menuList.p_soldOut }</td>
			<td><input type="button" value="수정" onclick="location.href='viewMenu?num=${menuList.p_num}'" style="height: 110px;"> </td>
			<td><input type="button" value="삭제" onclick="location.href='deleteMenu?num=${menuList.p_num}'" style="height: 110px;"> </td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>