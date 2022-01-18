<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>OrderPage</title>
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
.text-center{
	text-align: center;
}
.text-right{
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
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">1</td>
						<td class="text-center">Take Out</td>
						<td class="text-center">아메리카노</td>
						<td class="text-center">ICE</td>
						<td class="text-center">Regular</td>
						<td class="text-center">2 샷</td>
						<td class="text-right">+1</td>
						<td class="text-right">\2500</td>
						<td style="padding: 0px"><input name="statusBtn" type="button"
							style="width: 100%; height: 100%;" value="대기" /></td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>
</body>
<script>
setInterval("dpTime()",1000);
function dpTime(){
   var now = new Date();
    hours = now.getHours();
    minutes = now.getMinutes();
    seconds = now.getSeconds();

    if (hours > 12){
        hours -= 12;
    ampm = "오후 ";
    }else{
        ampm = "오전 ";
    }
    if (hours < 10){
        hours = "0" + hours;
    }
    if (minutes < 10){
        minutes = "0" + minutes;
    }
    if (seconds < 10){
        seconds = "0" + seconds;
    }
document.getElementById("presentTime").innerHTML = ampm + hours + ":" + minutes + ":" + seconds;
}

$("input[name=statusBtn]").on("click",function(){
    if(confirm("까꿍")){
        $(this).attr("value","완료");
    }
})
</script>




</html>