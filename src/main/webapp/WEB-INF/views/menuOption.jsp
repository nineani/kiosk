<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modal</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@import url(https://fonts.googleapis.com/css?family=Lato:300,400,900);

.container {
	height: 10%;
}

.button-wrap {
	position: relative;
	text-align: center;
	top: 50%;
	margin-top: 6%;
}

.button-label {
	display: inline-block;
	padding: 0% 7%;
	margin: 0.5em;
	cursor: pointer;
	color: #292929;
	border-radius: 0.25em;
	background: #efefef;
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2), inset 0 -3px 0
		rgba(0, 0, 0, 0.22);
	transition: 0.3s;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.button-label:hover {
	background: #d6d6d6;
	color: #101010;
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2), inset 0 -3px 0
		rgba(0, 0, 0, 0.32);
}

.button-label:active {
	transform: translateY(2px);
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2), inset 0px -1px 0
		rgba(0, 0, 0, 0.22);
}

#tall-button:checked+.button-label {
	background: #2ECC71;
	color: #efefef;
}

#tall-button:checked+.button-label:hover {
	background: #29b765;
	color: #fff;
}

#grande-button:checked+.button-label {
	background: #D91E18;
	color: #efefef;
}

#grande-button:checked+.button-label:hover {
	background: #c21b15;
	color: #fff;
}

#venti-button:checked+.button-label {
	background: #4183D7;
	color: #efefef;
}

#venti-button:checked+.button-label:hover {
	background: #2c75d2;
	color: #fff;
}

#hot-button:checked+.button-label {
	background: #D91E18;
	color: #efefef;
}

#hot-button:checked+.button-label:hover {
	background: #c21b15;
	color: #fff;
}

#ice-button:checked+.button-label {
	background: #4183D7;
	color: #efefef;
}

#ice-button:checked+.button-label:hover {
	background: #2c75d2;
	color: #fff;
}

.hidden {
	display: none;
}
</style>
</head>
<body style="font-family: 'yg-jalnan'">
	<form action="addCart" method="post">
		<div style="display: flex; flex-direction: column; width: 500px; height: 900px;">
			<div style="display: flex; flex: 0.5 0 0; justify-content: flex-end;">
				<input id="modal_closeBtn" class="modal_closeBtn" type="button" onclick="closePopup()"
					style="width: 7%; height: 50%; border-radius: 15%; margin: 3%;background-size:contain; background-image: url('resources/images/cancel.png'); background-repeat: no-repeat;"/>
				
			</div>

			<div
				style="margin-top: 10%; margin-left: 5%; display: flex; flex-direction: row; flex: 2 0 0; text-align: center;">

				<div id="selectedItemImage"
					style="display: flex; flex: 1 0 0; background-image: url('/kiosk/resources/images/menu_pic/'); background-size: contain; background-repeat: no-repeat;">
				</div>
				<div style="display: flex; flex-direction: column; flex: 1 0 0;">
					<div style="flex: 1 0 0; font-size: 1.5rem;">
						<div id="selectedItemName" style="margin-top: 17%"></div>
					</div>
					<div style="flex: 1 0 0; font-size: 0.7rem;"></div>

					<div
						style="display: flex; flex: 1 0 0; font-size: 0.8rem; align-items: center; margin-top: 10%">

						<div style="display: flex; flex: 1 0 0; justify-content: center;">

							<div style="flex: 0.2 0 0;">


								<input type='button' onclick='count("minus")' value='-'
									style="height: 100%" />
							</div>
							<div id='result' style="flex: 0.2 0 0;">1</div>
							<input id="o_quantity" name="o_quantity" value="1" hidden/>
							<div style="flex: 0.2 0 0;">
								<input type='button' onclick='count("plus")' value='+'
									style="height: 100%" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				style="display: flex; flex-direction: column; flex: 2.5 0 0; margin: 7% 7% 2% 7%;">

				<!--장바구니로 값 보내기-->

				<hr>
				<div style="display: flex; flex: 1 0 0; text-align: center;">
					<div style="flex: 1 0 0;">

						<input type="hidden" name="p_num">
						<input type="hidden" name="p_name">
						<input type="hidden" name="p_image">
						<input type="hidden" name="unique_num">

					</div>
					<p>
						<input type="checkbox" name="o_shot" value="500" class="ab">
						<label for="test">샷 추가 (+ 500\)</label>
					</p>
					<p>
						<input type="checkbox" name="o_whipping" value="500" class="ab">
						<label>휘핑크림 추가 (+ 500\)</label>
					</p>
					<div class="container">
						<div class="button-wrap">
							<input class="hidden radio-label" id="tall-button" type="radio"
								name="o_size" value="0" checked="checked" /> <label
								class="button-label" for="tall-button">
								<p>톨(tall)</p>
							</label> <input class="hidden radio-label" id="grande-button"
								type="radio" name="o_size" value="500" /> <label
								class="button-label" for="grande-button">
								<p>그란데(Grande)</p>
							</label> <input class="hidden radio-label" id="venti-button" type="radio"
								name="o_size" value="1000" /> <label class="button-label"
								for="venti-button">
								<p>벤티(Venti)</p>
							</label>
						</div>
					</div>
				</div>
			</div>

			<div
				style="display: flex; flex-direction: row; flex: 1 0 0; font-family: 'yg-jalnan'; font-size: 1.5rem;">
				<div style="display: table; flex: 1.4 0 0;">
					<div id="p_price"
						style="display: table-cell; vertical-align: middle; text-align: center; padding: 10%">${menu.p_price}원</div>
						<input name="p_price" value="${menu.p_price}" type="hidden"/>
					<hr>
				</div>
				<div style="display: flex; flex-direction: column; flex: 1 0 0;">
					<input type="submit" value="주문하기"
						style="flex: 1 0 0; margin: 10% 5%; border-radius: 20px; font-family: 'yg-jalnan'; font-size: 1.5rem; background-color: black; color: #fff;">
				</div>
			</div>
		</div>
	</form>


	<script type="text/javascript">
	
		var p_price = menuPrice*1;
		var sizePrice = 0;		
		var calcedPrice = p_price;
		var totalPrice = $("#p_price");
		var p_price = $("input[name=p_price]");
		var o_quantity = $("#o_quantity");
		
		totalPrice.html(menuPrice+"원");
		
		$("input[name=unique_num]").attr("value",$("#writeUserBtn").html());
		$("input[name=p_num]").attr("value",menuNum);
		$("input[name=p_name]").attr("value",menuName);
		$("#selectedItemName").html(menuName);
		$("input[name=p_image]").attr("value",menuImage);
		$("#selectedItemImage").css('background-image','url("/kiosk/resources/images/menu_pic/'+menuImage+'")')
		$("input[name=p_price]").attr("value",menuPrice);
	
		$("input[type=checkbox]").on("change",function(){
			var o_quantityValue = o_quantity.prop("value")*1;
			
			if($(this).prop("checked")==true){
				var value = $(this).prop("value");
				calcedPrice = calcedPrice + value*1;
			} else{
				var value = $(this).prop("value");
				calcedPrice = calcedPrice - value*1;
			}
			totalPrice.html(calcedPrice*o_quantityValue+"원");
			p_price.prop("value",calcedPrice*o_quantityValue);
		});
		
		$("input[type=radio]").on("change",function(){
			var o_quantityValue = o_quantity.prop("value")*1;
			calcedPrice = calcedPrice - sizePrice;
			if($(this).prop("checked")==true){
				sizePrice = $(this).prop("value");
				calcedPrice = calcedPrice + sizePrice*1;
			}
			totalPrice.html(calcedPrice*o_quantityValue+"원");
			p_price.prop("value",calcedPrice*o_quantityValue);
		});
		
		$(document).ready(function() {
			$('.check-all').click(function() {
				$('.ab').prop('checked', this.checked);
			});
		});

		function count(type) {
			const resultElement = document.getElementById('result');
			
			let number = resultElement.innerText;

			if (type === 'plus') {
				number = parseInt(number) + 1;
			} else if (type === 'minus') {
				number = parseInt(number) - 1;
			}
			
			resultElement.innerText = number;
			o_quantity.attr('value',number);
			
			var o_quantityValue = o_quantity.attr("value")*1;
			totalPrice.html(calcedPrice*o_quantityValue+"원");
			p_price.prop("value",calcedPrice*o_quantityValue);
		}
	</script>
</body>
</html>
















