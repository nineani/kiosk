<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>관리자 페이지</h2>
<input type="button" value="관리자 페이지 접속" onclick="location.href='adminMain'">

<table border="1">
	<tr>
		<th>1</th>
		<th>2</th>
		<th>3</th>
	</tr>
	<tr>
		<td><input type="button" value="유저화면으로 이동" onclick="location.href='userList'"></td>
		<td><input type="button" value="메뉴화면으로 이동" onclick="location.href='menuList'"></td>
		<td><input type="button" value="오더화면으로 이동" onclick="location.href='orderList'"></td>
	</tr>
</table>
</body>
</html>