<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html style="width: 500px; height: 900px;">
<head>
<meta charset="UTF-8">
<title>Modal</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	
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

.td-btn {
	width: 100%;
	height: 100%;
	font-size: 4rem;
	font-family: 'yg-jalnan';
	background-color: #ffffff;
	border:0px;
}

  table {
    width: 100%;	
    border-collapse: collapse;
  }
  
  tr {
  	border-bottom: 1px solid #444444;
  }
  
  tr:last-child {
  	border: 0px solid #444444;
  }
  
    td {
  	border-right: 1px solid #444444;
  }
  
  td:last-child {
  	border-right: 0px solid #444444;
  }
  
  
</style>
</head>
<body
	style="display: flex; flex-direction: column; font-family: 'yg-jalnan'; width: 500px; height: 900px; margin: 0px; border: solid;border-radius: 20px;">
	<div style="width:500px;height:900px; display: flex; flex-direction: column; flex:1 0 0; ">
	<div style="display: flex; flex: 2 0 0; flex-direction: column;">
		<div style="display:flex; flex: 1 0 0; font-size: 2.0rem; text-align: center; align-items: center; justify-content: center;"><div>회원 번호를 입력하세요</div>
		</div>
		<div style="display:flex; align-items: center;
    justify-content: center;flex: 1 0 0"><input id="userNumber" style="height:100%; flex: 1 0 0;background-color: #ddd; font-size:2.5rem; text-align: center; margin: 0 5%;" placeholder="입력"/>
		</div>
	</div>

	<div style="flex: 3 0 0;">
		<table style="width: 100%; height: 100%; padding: 5%; margin-top: 2%">
			<tbody>
				<tr style="width: 100%; height: 25%; text-align: center;">
					<td style="width: 33%"><button name="numberBtn" class="td-btn" value="1">1</button></td>
					<td style="width: 33%"><button name="numberBtn" class="td-btn" value="2">2</button></td>
					<td style="width: 33%"><button name="numberBtn" class="td-btn" value="3">3</button></td>
				</tr>
				<tr
					style="width: 100%; height: 25%; font-size: 5rem; text-align: center;">
					<td><button name="numberBtn" class="td-btn" value="4">4</button></td>
					<td><button name="numberBtn" class="td-btn" value="5">5</button></td>
					<td><button name="numberBtn" class="td-btn" value="6">6</button></td>

				</tr>
				<tr
					style="width: 100%; height: 25%; font-size: 5rem; text-align: center;">
					<td><button name="numberBtn" class="td-btn" value="7">7</button></td>
					<td><button name="numberBtn" class="td-btn" value="8">8</button></td>
					<td><button name="numberBtn" class="td-btn" value="9">9</button></td>
				</tr>
				<tr
					style="width: 100%; height: 25%; font-size: 5rem; text-align: center;">
					<td><button name="numberBtn" class="td-btn" value="c">c</button></td>
					<td><button name="numberBtn" class="td-btn" value="0">0</button></td>
					<td><button name="numberBtn" class="td-btn"  value="bs">←</button></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div style="display: flex; flex: 0.5 0 0; padding:0 5%;">
		<div style="flex: 1 0 0">
			<button id="cancelBtn" class="td-btn" style="border-radius: 20px;">취소</button>
		</div>
		<div style="flex: 1 0 0">
			
		</div>
		<div style="flex: 1 0 0">
			<button id="confirmlBtn" class="td-btn" style="border-radius: 20px;">확인</button>
		</div>
	</div>
	</div>
</body>

<script>


	var number = "";
	var userNumber = $("#userNumber");

	if($("#writeUserBtn").html() != "회원 입력") {
		number = $("#writeUserBtn").html();
		userNumber.attr("value",number);
	}
	
	$("button[name=numberBtn]").on("click",function(){
		var btnValue = $(this).attr("value");
		
		if(btnValue == "c"){
			number = "";
		} else if(btnValue == "bs"){
			number = number.substring(0,number.length-1);
		} else{
			number = number + btnValue;
		}	
		userNumber.attr("value",number);
	});
	
	$("#cancelBtn").on("click",function(){
		closePopup();
	});
	
	$("#confirmlBtn").on("click",function(){
		$("#writeUserBtn").html(number);
		closePopup();
	});
	
	
</script>

</html>