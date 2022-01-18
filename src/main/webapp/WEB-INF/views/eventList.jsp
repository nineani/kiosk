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
<h1>Event</h1>
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
			<th>이벤트</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="event" items="${event }">
		<tr>
			<td>${event.p_num }</td>
			<td>${event.p_name }</td>
			<td>${event.p_category }</td>
			<td>${event.p_price }</td>
			<td><img style="width: 100px; height: 100px;" alt="${event.p_image }" src="resources/img/${event.p_image }"></td>
			<td><img style="width: 100px; height: 100px;" alt="${event.p_image2 }" src="resources/img/${event.p_image2 }"></td>
			<td>${event.p_soldOut }</td>
			<td>${event.p_event }</td>
			<td><input type="button" value="수정" onclick="location.href='viewMenu?num=${event.p_num}'" style="height: 110px;"> </td>
			<td><input type="button" value="삭제" onclick="location.href='deleteMenu?num=${event.p_num}'" style="height: 110px;"> </td>
		</tr>
		</c:forEach>
		

	</table>
</body>
</html>