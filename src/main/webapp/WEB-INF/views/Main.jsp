<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
</head>
<body style="width: 1000px; height: 2000px; background-image: url('./images/background.jpg'); background-size: contain;">
	<div style="height: 75%;">
	
	</div>
	<div style="display:flex; flex-direction: row; height: 25%; flex-direction: row; justify-content: space-around;">
		<div style="display: flex; flex-direction: column; flex: 1 0 0;">
			<a href="togo">
			<button style="flex: 1 0 0; margin: 30% 10%; border-radius: 30px; font-family: 'yg-jalnan'; font-size: 2.0rem;" onclick="location.href='kioMenu'">집에서 먹을래요</button></a>
		</div>
		<div style="display: flex; flex-direction: column; flex: 1 0 0;">
			
			<button style="flex: 1 0 0; margin: 30% 10%; border-radius: 30px; font-family: 'yg-jalnan'; font-size: 2.0rem;" onclick="location.href='kioMenu'">매장에서 먹을래요</button>
		</div>
	</div>
</body>
</html>