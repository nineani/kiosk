<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DevEric Chatting</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>


<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

tr td:nth-child(2n), th:nth-child(2n) {
	background-color: #dddddd;
}

thead {
	border-bottom: 10px solid #000000;
}

.text-center {
	text-align: center;
}

.text-right {
	text-align: right;
}
</style>
</head>
<body
	style="width: 2000px; height: 1000px; font-family: 'yg-jalnan'; font-size: 1.5rem">

	<div style="width: 2000px; height: 1000px; border: 5px solid;">
		<!-- 상단 바 -->
		<div id="presentTime">오전 00:00:00</div>
		<div>
			<table
				style="border-collapse: collapse; width: 100%; height: 100%; margin-top: 2%;">
				<thead>
					<tr class="table-head-row">
						<th style="width: 9%;">주문번호</th>
						<th style="width: 9%;">고객번호</th>
						<th style="width: 9%;">집 OR 매장</th>
						<th style="width: 19%;">메뉴</th>
						<th style="width: 9%;">물온도</th>
						<th style="width: 9%;">사이즈</th>
						<th style="width: 9%;">추가</th>
						<th style="width: 9%;">수량</th>
						<th style="width: 9%;">가격</th>
						<th style="width: 9%;">주문현황</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cart" items="${cartList}">
						<c:forEach var="dto" items="${cart}">
							<tr>
								<td class="text-center">${dto.p_num }</td>
								<td class="text-center">${dto.p_name }</td>

								<td style="padding: 0px"><input name="statusBtn"
									type="button" style="width: 100%; height: 100%;" value="대기" /></td>
							</tr>
						</c:forEach>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div>
		charMsg
		</div>

	</div>
</body>
<script>
	setInterval("dpTime()", 1000);
	function dpTime() {
		var now = new Date();
		hours = now.getHours();
		minutes = now.getMinutes();
		seconds = now.getSeconds();

		if (hours > 12) {
			hours -= 12;
			ampm = "오후 ";
		} else {
			ampm = "오전 ";
		}
		if (hours < 10) {
			hours = "0" + hours;
		}
		if (minutes < 10) {
			minutes = "0" + minutes;
		}
		if (seconds < 10) {
			seconds = "0" + seconds;
		}
		document.getElementById("presentTime").innerHTML = ampm + hours + ":"
				+ minutes + ":" + seconds;
	}

	$("input[name=statusBtn]").on("click", function() {
		if (this.value == "대기" ) {
			$(this).attr("value", "완료");
			confirm("완료")
		} else if(this.value == "완료"){
			$(this).attr("value", "대기");
			confirm("대기")
		}
	})
</script>
<script type="text/javascript">
	var textarea = document.getElementById("messageWindow");
	//var webSocket = new WebSocket('ws://ec2-13-125-250-66.ap-northeast-2.compute.amazonaws.com:8080/DevEricServers/webChatServer');

	// 로컬에서 테스트할 때 사용하는 URL입니다.
	var webSocket = new WebSocket('ws://localhost:8180/kiosk/webChatServer');
	var inputMessage = document.getElementById('inputMessage');

	webSocket.onerror = function(e) {
		onError(e);
	};
	webSocket.onopen = function(e) {
		onOpen(e);
	};
	webSocket.onmessage = function(e) {
		onMessage(e);
	};

	function onMessage(e) {
// 		alert(111);
		var chatMsg = event.data;
		console.log(chatMsg);
		var date = new Date();
		/* var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds(); */
		if (chatMsg.substring(0, 6) == 'server') {
			var $chat = $("<div class='chat notice'>" + chatMsg + "</div>");
			$('#chat-container').append($chat);
		} else {
			var $chat = $("<div class='chat-box'><div class='chat'>" + chatMsg
					+ "</div></div>");
			$('#chat-container').append($chat);
		}
		location.reload();
	}

	function onOpen(e) {

	}

	function onError(e) {
		alert(e.data);
	}
</script>
</html>