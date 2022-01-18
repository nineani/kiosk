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
<a href="menuList">메뉴리스트</a>
	<form action="insertMenu" enctype="multipart/form-data" method="post">
		<fieldset>
			<legend>상품 추가</legend>
				<p> 상품명 : <input type="text" name="name" required></p>
				<p> 카테고리 : <select name="category">
					            <option value="Coffee" selected>coffee</option>
					            <option value="Tea">tea</option>
					            <option value="Dessert">dessert</option>
					            <option value="Other">other</option>
					        </select></p>
				<p> 가격 : <input type="text" name="price" required> 원</p>
				<p> 상품 이미지 : <input type="file" name="image" required></p>
				<p> 품절 이미지 : <input type="file" name="image2" required></p>
				<p> 품절 유무 : <input type="radio" name="soldOut" value="0">품절
							  <input type="radio" name="soldOut" value="1" checked="checked">품절아님
				</p>
				<p> 이벤트 : <input type="radio" name="event" value="sale">이벤트 중
							  <input type="radio" name="event" value="nosale" checked="checked">이벤트 아님
				</p>
				<input type="submit" value="상품 등록">
				<input type="reset" value="새로 작성">
				<input type="button" value="메뉴 목록으로" onclick="location.href='menuList'">
		</fieldset>
	</form>
	
</body>
</html>