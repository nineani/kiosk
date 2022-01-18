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
<h1>userList</h1>
<input type="button" value="회원 추가" onclick="location.href='signUpView'">
<hr>
<table border="1" style="text-align: center;">
		<tr>
			<th>순서</th>
			<th>아이디</th>
			<th>이름</th>
			<th>연락처</th>
			<th>멤버쉽번호</th>
			<th>포인트</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	<c:forEach var="dto" items="${userList }">
		<tr>
			<td>${dto.u_num }</td>
			<td>${dto.u_id }</td>
			<td>${dto.u_name }</td>
			<td>${dto.u_phone }</td>
			<td>${dto.unique_num }</td>
			<td>${dto.sumPoint }</td>
			<td><input type="button" value="수정" onclick="location.href='userView?num=${dto.u_num}'"></td>
			<td><input type="button" value="삭제" onclick="location.href='userDelete?num=${dto.u_num }'"></td>
		</tr>		
	</c:forEach>
</table>
</body>
</html>