<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 상세보기 페이지</h3>
	<form action="modifyMenu" enctype="multipart/form-data" method="post">
		<fieldset>
			<legend>상품 상세보기 / 수정</legend>
				<p> 상품 번호 : <input type="text" name="num" value="${viewMenu.p_num }" readonly="readonly"> </p>
				<p> 상품명 : <input type="text" name="name" value="${viewMenu.p_name }"></p>
				<b style="color: red;">	현재 카테고리 :: ${viewMenu.p_category }</b>
				<p> 카테고리 : 
							<select name="category">
					            <option value="Coffee" selected>coffee</option>
					            <option value="Tea">tea</option>
					            <option value="Dessert">dessert</option>
					            <option value="Other">other</option>
					        </select></p>
				<p> 가격 : <input type="text" name="price" value="${viewMenu.p_price }"> 원</p>
				<p> 상품 이미지 : <input type="file" name="image" required><img alt="" src="resources/img/${viewMenu.p_image }" style="width: 100px; height: 100px;"> </p>
				<p> 품절 이미지 : <input type="file" name="image2" required><img alt="" src="resources/img/${viewMenu.p_image2 }" style="width: 100px; height: 100px;"> </p>
				<b style="color: red;"> 현재 품절 유무 :: ${viewMenu.p_soldOut }</b>
				<p> 품절 유무 : 
							  <input type="radio" name="soldOut" value="0" checked="checked">품절
							  <input type="radio" name="soldOut" value="1">품절아님
				</p>
				<b style="color: red;"> 현재 이벤트 유무 :: ${viewMenu.p_event }</b>
				<p> 이벤트 유무 : 
							  <input type="radio" name="event" value="yes">이벤트 중
							  <input type="radio" name="event" value="no" checked="checked">이벤트 아님
				</p>
				<input type="submit" value="상품 등록">
				<input type="reset" value="새로 작성">
				<input type="button" value="메뉴 목록으로" onclick="location.href='menuList'">
		</fieldset>
	</form>
</body>
</html>