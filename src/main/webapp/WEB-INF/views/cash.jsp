<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html style="width: 1000px; height: 2000px; padding: 0px">
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>home</title>
<style>
#cash {
	transition-duration: 0.5s;
	box-shadow: 15px 15px 15px #444;
}

#cash:active {
	margin: 40% 16% 33% 16%!important;
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
	style="display: flex; flex-direction:column; margin: 0px; padding: 0px; width: 1000px; height: 2000px; font-family: 'yg-jalnan'; background-color: #000000;">
	<div style="flex: 1 0 0;">
	<button style="border:0px!important; background-color:#000000!important; margin: 2%; display:flex; width:8%; height:30%";><img alt="" src="./resources/img/back.png" style="flex:1 0 0" onclick="history.back()"></button>
	</div>
	<div id="cash" 
		style="overflow: hidden; display: flex; flex-direction: column; margin: 25% 15% 30% 15%; flex: 4 0 0; background-color: #cccccc; border-radius: 50px;">

		<div 
			style="flex: 4 0 0; background-image: url('./resources/img/card.png'); background-size: 100% 100%"></div>
		<div
			style="display: flex; align-items: center; justify-content: center; flex: 1 0 0; background-color: #222222; font-size: 4rem; text-align: center; color: #ffffff">
			<div>카드를 넣어주세요 : ${cartItems}</div>
		</div>
	</div>

	<div id="popup" class="hide" name="test">
		<div id="modal-content" class="content" name="test2" style="display:flex;flex-direction:column; width:60%;min-height:55%; font-size: 3rem;"></div>
	</div>
	
	<div id="pop" class="hide" name="test" hidden >
		<div id="chat" class="content" name="test2" style="display:flex;flex-direction:column; width:60%;min-height:55%; font-size: 3rem;"></div>
	</div>

</body>

<script>
$("#modal-content").load("receipt");
$("#cash").on("click", function() {
	showPopup(true);
	
	
	setTimeout('delete2', 9000)
	
	setTimeout('goHome()',10000)
	

})
$("#chat").load("chatpage");

$("#popup").click(function(e) {
	if (e.target.getAttribute("id") == "popup") {
		closePopup()
	}
	;
});

function delete2() {
	
	  session.invalidate();
}

function goHome(){

    location.href="./Home"  // 페이지 이동...

}



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
</script>
</html>