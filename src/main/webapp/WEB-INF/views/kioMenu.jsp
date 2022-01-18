<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="width: 1000px; height: 2000px;">
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<meta charset="UTF-8">
<title>home</title>

<style>
.menu {
	-ms-overflow-style: none;
}

.menu::-webkit-scrollbar {
	display: none; /* Chrome, Safari, Opera*/
}

.btn {
	float: left;
	box-shadow: 3px 3px 3px white;
	transition-duration: 0.5s;
	border-radius: 10%;
	font-size: 1.5rem;
	font-family: 'yg-jalnan';
}

.btn:active {
	margin-left: 10%;
	margin-top: 10%;
	box-shadow: none;
}

@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>


<style>
button {
	height: 2.5em;
	cursor: pointer;
}

#popup {
	display: flex;
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .7);
	z-index: 1;
}

#popup.hide {
	display: none;
}

#popup.has-filter {
	backdrop-filter: blur(1px);
	-webkit-backdrop-filter: blur(1px);
}

#popup .content {
	padding: 20px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 1px 1px 3px rgba(0, 0, 0, .3);
}
</style>

</head>
<body
	style="margin: 0px; width: 1000px; height: 2000px; font-family: 'yg-jalnan'">

	<!-- 상단 바 (홈 버튼, 상단바 배경) -->
	<div
		style="display: flex; flex-direction: column; width: inherit; height: inherit;">
		<div id="logo"
			style="background-image: url('/kiosk/resources/images/Starbucks.jpg'); background-repeat: no-repeat; flex: 0.6 0 0; background-size: cover;">
			<button
				style="border: 0px !important; background-color: #000000 !important; margin: 2%; display: flex; width: 8%; height: 30%";>
				<img alt="" src="./images/home.png" style="flex: 1 0 0"
					onclick="location.href='Home'">
			</button>
		</div>
		<div id="menucate"
			style="text-align: center; font-size: 2.5rem; display: flex; flex-direction: inherit; background-color: #009900; flex: 3 0 0">

			<!-- 메뉴 바 (이벤트, 커피, 블론드 등등) -->
			<div class="menu" id="cate"
				style="overflow-x: scroll; display: inherit; background-color: #220000; flex: 0.1 0 0; text-align: center">
				<div name="categoryId" value="0"
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">Event</div>
				<div name="categoryId" value="1"
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">
					커피&<br>에스프레소
				</div>
				<div name="categoryId" value="2"
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">블론드</div>
				<div name="categoryId" value="3"
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">티바나</div>
				<div name="categoryId" value="4"
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">콜드브루</div>
				<div name="categoryId" value="5"
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">블렌디드</div>

			</div>

			<!-- 메뉴 목록 음료들 -->
			<div class="menu" id="menu"
				style="font-size: 1.5rem; overflow-y: scroll; display: flex; flex-wrap: wrap; justify-content: space-around; background-color: #111111; flex: 0.9 0 0">

				<c:forEach var="menuList" items="${menuAllList}"
					varStatus="listStatus">
					<c:forEach var="menu" items="${menuList}" varStatus="itemStatus">
						<div name="category_${menu.p_category}"
							id="category_${menu.p_category}_${itemStatus.count}"
							style="overflow: hidden; border-radius: 7%; display: none; flex-direction: column; background-color: #ffffff; width: 22.5%; height: 30%; margin: 1%;">
							<div name="image" value="${menu.p_image}"
								style="background-image: url('/kiosk/resources/images/menu_pic/${menu.p_image}'); background-size: contain; flex: 3 0 0"></div>
							<div name="name" value="${menu.p_name}"
								style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
								${menu.p_name}</div>
							<div name="price" value="${menu.p_price}"
								style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
								${menu.p_price}원</div>
							<div name="num" value="${menu.p_num}"
								style="display: none; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
								</div>
						</div>
					</c:forEach>
				</c:forEach>

			</div>
		</div>


		<div id="cart" style="font-size: 1.2rem; display: flex; flex: 0.8 0 0">

			<!-- 장바구니 목록 -->
			<div class="menu"
				style="overflow-x: scroll; flex-wrap: nowrap; padding: 3%; flex: 0.7 0 0; background-color: #000000; display: flex; justify-content: flex-start;">

				<c:forEach var="cartItem" items="${cartItems}" varStatus="status">
					<div
						style="overflow: hidden; border-radius: 7%; margin: 5px; flex-direction: column; flex: 0 0 30%; background-color: #777777; display: flex;">
						<div style="background-color: #BBBBBB; flex: 0.7 0 0; padding: 5%">
							<div
								style="display: flex; flex-direction: row-reverse; border-radius: 20%; background-image: url('/kiosk/resources/images/menu_pic/${cartItem.p_image}'); background-size: contain; width: 100%; height: 100%;">
								<button value="${status.index}" name="removeCartBtn"
									style="justify-content: flex-end; width: 20%; height: 17%; background-image: url('/kiosk/resources/images/cancel.png');"></button>
							</div>
						</div>
						<div
							style="flex: 0.3 0 0; background-color: #FFFFFF; display: flex; align-items: center; justify-content: center">${cartItem.p_num}</div>
					</div>
				</c:forEach>
			</div>

			<!-- 합계금액, 취소버튼, 결제버튼 -->
			<div
				style="background-color: #000000; display: flex; flex-direction: column; flex: 0.3 0 0; padding: 3%; font-size: 2.5rem;">
				<div id="totalPrice"
					style="flex: 1 0 0; display: flex; align-items: center; justify-content: center; color: white;">
					
				</div>
				<div
					style="background-color: #000000; flex: 2.5 0 0; color: white; font-size: 2.0rem;">
					<button id="writeUserBtn"
						style="width: 100%; height: 100%; background-color: black; border: 0px; color: white; font-size: 2.5rem;">회원 입력</button>
				</div>
				<div style="display: flex; flex: 2 0 0;">
					<button class="btn" style="margin: 3%; flex: 1 0 0;">취소</button>
					<button class="btn" onclick="location.href='payForm'"
						style="margin: 3%; flex: 1 0 0;">결제</button>
				</div>
			</div>
		</div>
	</div>

	<div id="popup" class="hide" name="test">
		<div id="modal-content" class="content" name="test2"
			style="border-radius: 20px;"></div>
	</div>
</body>



<script>
	var currentCategory;

	var menuImage;
	var menuName;
	var menuPrice;
	var menuNum;
	
	$("#totalPrice").html("합계 금액 :<br>\ ${totalPrice} 원");
	
	$("button[name=removeCartBtn]").on("click",function(){
		location.href="removeCart?itemNum="+$(this).attr("value");
	});

	$("div[name=categoryId]").on("click", function() {
		$("div[name=category_" + currentCategory + "]").css('display', 'none');
		var num = $(this).attr('value');
		$("div[name=category_" + num + "]").css('display', 'flex');
		currentCategory = num;
	});

	$("#menu>div").on("click", function() {
		var id = $(this).attr('id');
		menuImage = $("#" + id + " div[name=image]").attr('value');
		menuName = $("#" + id + " div[name=name]").attr('value');
		menuPrice = $("#" + id + " div[name=price]").attr('value');
		menuNum = $("#" + id + " div[name=num]").attr('value');
		
		console.log(menuPrice);

		$("#modal-content").load("menuOption");
		showPopup(true);
	})
	$("#writeUserBtn").on("click", function() {
		$("#modal-content").load("numberKeyboard");
		showPopup(true);
	})
	$("#popup").click(function(e) {
		if (e.target.getAttribute("id") == "popup") {
			closePopup()
		}
		;
	});

	function showPopup(hasFilter) {
		const popup = document.querySelector('#popup');

		if (hasFilter) {
			popup.classList.add('has-filter');
		} else {
			popup.classList.remove('has-filter');
		}

		popup.classList.remove('hide');
	}

	function closePopup() {
		const popup = document.querySelector('#popup');
		popup.classList.add('hide');
	}

	function show_layer(div_name) {

		document.all.div_01.style.display = "none";

		document.all.div_02.style.display = "none";

		document.all.div_03.style.display = "none";

		document.all.div_04.style.display = "none"; // 메뉴 숫자에 따라 늘려주세요

		switch (div_name)

		{

		case '1':

			document.all.div_01.style.display = "";

			break;

		case '2':

			document.all.div_02.style.display = "";

			break;

		case '3':

			document.all.div_03.style.display = "";

			break;

		case '4':

			document.all.div_04.style.display = "";

			break;

		case '5':

			document.all.div_04.style.display = "";

			break;

		case '6':

			document.all.div_04.style.display = "";

			break;

		}

	}
</script>

</html>