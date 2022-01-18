<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	response.setHeader("Pragma","no-cache"); 
	response.setDateHeader("Expires",0); 
	response.setHeader("Cache-Control", "no-cache");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>			
			<div class="CartList" id="cart"
				style="overflow-x: scroll; flex-wrap: nowrap; padding: 3%; flex: 0.7 0 0; background-color: #000000; display: flex; justify-content: flex-start;">
				<c:forEach  var="cartDto" items="${cart}">
				<div
					style="overflow: hidden; border-radius: 7%; margin: 5px; flex-direction: column; flex: 0 0 30%; background-color: #777777; display: flex;">
				
					<div style="background-color: #BBBBBB; flex: 0.7 0 0; padding: 5%">
						<div id="menu-in"
							style="display: flex; flex-direction: row-reverse; border-radius: 20%; background-image: url('resources/images/menu_pic/${kioMenu.p_image}'); background-size: contain; width: 100%; height: 100%;">
					<a href="#" class="item_delete"
								style="justify-content: flex-end; width: 100%; height: 100%; background-image: url('resources/images/cancel.png');"></a>
					<div class="check">
					<input type="checkbox" name="chkbox" value="${cartDto.p_price}" checked="checked"></div>	
						</div>
					</div>
					<div
						style="flex: 0.3 0 0; background-color: #FFFFFF; display: flex; align-items: center; justify-content: center">${cartDto.p_name}</div>
					<div class="totalPrice" 
						style="flex: 0.3 0 0; background-color: #FFFFFF; display: flex; align-items: center; justify-content: center"></div>
					<form action="/payForm" method="POST">
					<input type="hidden" name="p_price" value="${cartDto.p_price}">				
					<input type="hidden" value="${cartDto.o_shot}">
					<input type="hidden" value= "${cartDto.o_whipping}">
					<input type="hidden" value="${cartDto.o_size}">
					<input type="hidden" value="${cartDto.o_quantity}">
					<input type="hidden" value="${cartDto.p_num}">				
					<input type="hidden" value="${total_point}">				
					<input type="hidden" value="${total_price}">				
					</form>
					
<!-- 					<form action="/Order" method="POST"> -->
<%-- 					<input type="hidden" name="o_shot" value="${cartdto.o_shot}"> --%>
<%-- 					<input type="hidden" name="o_whipping" value="${cartdto.o_whipping}"> --%>
<%-- 					<input type="hidden" name="o_size" value="${cartdto.o_size}"> --%>
<%-- 					 <input type="hidden" value="${menudto.p_price}"> --%>
<%-- 					<input type="hidden" name="o_quantity"value="${cartdto.o_quantity}"> --%>
<!-- 					</form> -->
<%-- 			 		<input type="hidden" value="${menudto.p_price}"> --%>
				</div>
				</c:forEach>
			</div>
				<!-- 합계금액, 취소버튼, 결제버튼 -->
				<div style="background-color: #000000; display: flex; flex-direction: column; flex: 0.3 0 0; padding: 3%; font-size: 2.5rem;">
				<div id="total_price" style="flex: 1 0 0; display: flex; align-items: center; justify-content: center; color: white;" value="${total_price}">${total_point}, ${total_price}원 
				</div>
				<div
					style="background-color: #000000; flex: 2.5 0 0; color: white; font-size: 2.0rem;">
					<button id="writeUserBtn" name="uniqueNum"
						style="width: 100%; height: 100%; background-color: black; border: 0px; color: white; font-size: 2.5rem;">회원 입력</button>
				</div>
				<div style="display: flex; flex: 2 0 0;">
					<button id="canceled" class="btn" style="margin: 3%; flex: 1 0 0;" onClick='/remove'>삭제</button>
					<input type="submit" class="btn" onclick="location.href='payForm'"
						style="margin: 3%; flex: 1 0 0;">결제
				</div>
			</div>
		
</body>   
<script type="text/javascript">

// var sessionData = ""
// function delete(){
	
	
// 	sessionStorage.clear();
// }
var point = 0;
var totalPrice = $("#total_price");


</script>

</html>