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

<span><input type="button" value="유저 리스트" onclick="if_a.location.href='userList'"></span>
<span><input type="button" value="메뉴 리스트" onclick="if_a.location.href='menuList'"></span>
<span><input type="button" value="이벤트 리스트" onclick="if_a.location.href='eventList'"></span>
<span><input type="button" value="오더 리스트" onclick="if_a.location.href='orderList'"></span>
<span><input type="button" value="카트 리스트" onclick="if_a.location.href='cartList'"></span>

<!-- <form action="#">
검색 카테고리 //
	<select name="searchType">
        <option value="user" selected>user</option>
        <option value="menu">menu</option>
        <option value="order">order</option>
        <option value="cart">cart</option>
    </select>
//검색어 : <input type="text" name="searchName"> -->
<input type="submit" value="검색">
<input type="reset" value="취소">
</form>
<iframe src="userList" width="100%;" height="800px;" name="if_a"></iframe>
</body>
</html>