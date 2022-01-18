<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="userUpdate" method="post">
	<fieldset>
	<legend>회원 정보 수정</legend>
		<table border="1">
				<tr>
					<td> 번호 (수정불가) </td>
					<td><input name="num"  readonly value="${userView.u_num }"></td>
				</tr>
				<tr>
					<td> 아이디 </td>
					<td> <input  name="id" value="${userView.u_id }"></td>
				</tr>
				<tr>
					<td> 비밀번호 </td>
					<td> <input  name="pw" value="${userView.u_pw }"></td>
				</tr>
				<tr>
					<td> 이름 </td>
					<td><input name="name" value="${userView.u_name }"></td>
				</tr>
				<tr>
					<td> 생년월일 </td>
					<td><input name="birth" value="${userView.u_birth }"></td>
				</tr>
				<tr>
					<td> 이메일 </td>
					<td><input name="email" value="${userView.u_email }"></td>
				</tr>
				<tr>
					<td> 주소 </td>
					<td><input name="address" value="${userView.u_address }"></td>
				</tr>
				<tr>
					<td> 연락처 </td>
					<td><input name="phone" value="${userView.u_phone }"></td>
				</tr>
				<tr>
					<td> 포인트 </td>
					<td><input name="sumPoint" value="${userView.sumPoint }"></td>
				</tr>
				<tr>
					<td> 고유번호 </td>
					<td><input name="unique_num" value="${userView.unique_num }"></td>
				</tr>
				<tr >
					<td colspan="2"><input type="submit" value="수정"> &nbsp;&nbsp;
					<input type="button" value="목록으로" onclick="location.href='userList'">
					<input type="button" value="삭제하기" onclick="location.href='userDelete?num=${userView.u_num}'"></td>
				</tr>
		</table>
	</fieldset>
</form>
</body>
</html>