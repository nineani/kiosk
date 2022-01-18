<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>signUp</h2>
	<form action="signUp" method="post">
		<fieldset style="width: 300px;">
			<legend>회원 가입 양식</legend>
			<p> ID : <input type="text" name="id"></p>
			<p> PW : <input type="text" name="pw"></p>
			<p> 이름 : <input type="text" name="name"></p>
			<p> 생일 : <input type="text" name="birth"></p>
			<p> Email : <input type="email" name="email"></p>
			<p> 주소 : <input type="text" name="address"></p>
			<p> Phone : <input type="number" name="phone"></p>
			<input type="submit" value="등록">
			<input type="reset" value="취소">
			<input type="button" value="목록으로" onclick="location.href='userList'">
		</fieldset>
	</form>
</body>
</html>