<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>s
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modal</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('.check-all').click(function() {
			$('.ab').prop('checked', this.checked);
		});
	});
</script>
<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.optionName {
	font-size: 1.5rem;
	align-items: center;
}
</style>
</head>
<body style="display: flex; font-family: 'yg-jalnan';">
	<div id="orderNum"
		style="display: flex; flex: 1 0 0; align-items: center; justify-content: center; border-bottom: 4px groove;">
		<div>주문번호 : 1</div>
	</div>

	<div id="where"
		style="display: flex; flex: 1 0 0; align-items: center; justify-content: center; border-bottom: 4px dashed;">
		<div
			id="image1" name="hi"
			style="flex: 0 0 20%; background-size: 100% 100%; background-repeat: no-repeat; background-image: url('./images/breakfast-tray.png'); background-size: contain"></div>
	</div>

	<div id="orderMenu"
		style="font-size: 2rem; display: flex; flex-direction: column; flex: 4 0 0; border-bottom: 4px dashed;">
		<div style="display: flex; flex:0 0 30%; border-bottom: 4px dashed;">
			<div style="flex: 3 0 0; text-align: center;">상품 명</div>
			<div style="flex: 1 0 0; text-align: center;">수량</div>
			<div style="flex: 2 0 0; text-align: right;">금액</div>
		</div>
		<c:forEach  var="cartDto" items="${cart}">
		<div class="menu" style="display: flex; flex:0 0 30%">
			<div style="flex: 3 0 0; text-align: center;">${cartDto.p_name}</div>
			<div style="flex: 1 0 0; text-align: center;">${cartDto.o_quantity}</div>
			<div style="flex: 2 0 0; text-align: right;">${cartDto.p_price}</div>
		</div>
		<div class="option" style="display: flex; flex:0 0 30%">
			<div class="optionName" style=" flex: 3 0 0; display:flex;"><div style="flex:1 0 0"></div><div style="flex:1.6 0 0;text-align: left;">→샷 추가</div></div>
			<div style="flex: 1 0 0; text-align: center;">휘핑</div>
			<div style="flex: 2 0 0; text-align: right;">${cartDto.o_shot}원</div>
		</div>
		<div class="option" style="display: flex; flex:0 0 30%">
			<div class="optionName" style="flex: 3 0 0; display:flex;"><div style="flex:1 0 0"></div><div style="flex:1.6 0 0;text-align: left;">→시럽 추가</div></div>
			<div style="flex: 1 0 0; text-align: center;">사이즈</div>
			<div style="flex: 2 0 0; text-align: right;">${cartDto.o_size}원</div>
		</div>
		</c:forEach>
	</div>

	<div id="totalPrice"
		style="display: flex; flex: 1 0 0; align-items: center; justify-content: flex-end; border-bottom: 4px dashed;">총액
		: ${total_price}원</div>

	<div id="coupon"
		style="display: flex; flex: 1 0 0; align-items: center; justify-content: flex-end;">적립액
		: 1000\</div>



</body>
<script>
var imageHeight = document.body.clientHeight*0.07;
var image = document.getElementById("image1");
image.style.height = imageHeight+"px";           
</script>
</html>

