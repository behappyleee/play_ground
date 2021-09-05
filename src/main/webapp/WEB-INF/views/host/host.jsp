<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 관리자 페이지 </title>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
</head>
<body>
	
	<div id="con" style="height:1300px; overflow:hidden;">
	 	<jsp:include page="../common/toplogin.jsp"/>
	 <br><br><hr><br><br>
	
	<div id="host">
		<fieldset>
			<legend align="center"> 관리자 메뉴 </legend>
				<table align="center">
					<tr><td><input type="button" value="회원관리" onclick="location.href='host_client.ho'"></td></tr>
					<tr><td><input type="button" value="판매관리" onclick="location.href='hostSaleView.ho'"></td></tr>
					<tr><td><input type="button" value="주문관리" onclick="window.open('host_order.ho', '마이페이지','width=500, height=550'); return false"></td></tr>
					<tr><td><input type="button" value="Q&A 답변" onclick="location.href='host_q&aanswer.ho'"></td></tr>
					<tr><td><input type="button" value="결산" onclick="location.href='host_saletotal.ho'"></td></tr>
			</table>
		</fieldset>
	</div>
	
	
	
	
 	<div id="footer" style="bottom:-400px; position:absolute; width:1890px;" align="center">
   		 <span>
 		상호 : SHOES STORE   대표 : 홍길동 <br>
		고객센터 : 02-2222-2222 개인정보관리책임자 : 홍길동 
		이메일 : abcdef@naver.com <br>
		소재지 : 서울특별시 강서구  
		사업자등록번호 : 101-18-96726 [사업자정보확인]<br>
		통신판매업 신고 : 제 2016-서울강서-0589 호 
		Copyright © 2016 SHOES STORE All rights reserved.
		</span> 
    	</div>
	</div>



</body>
</html>