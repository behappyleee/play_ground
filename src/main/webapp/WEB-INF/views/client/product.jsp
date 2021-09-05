<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 상품 페이지 </title>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
</head>
<body>
	
	<div id="con">
		<jsp:include page="../common/toplogin.jsp" />
	
	 <br><br><hr><br><br>
        
     <u><span id="mainletter"  align="center" style="padding:50px;"> NEW ARRIVAL </span></u><br><br>
	
	<div id="newProduct">
		<form id="product">
			<fieldset id="newProductContent">
			<c:if test="${list!=null}">
				<c:forEach var="dto" items="${list}">
					<table id="newPro">
						<tr>
							<td>
  								<a href="productview.do"><img src="/kosmopj_1/images/${dto.image_url}" width="300" height="300"></a>
  									<div style="bottom: 10px; left: 19px;font-size: 13px;">
    								<b>${dto.product_description}<br><br> ${dto.product_size} <br><br>
    								가격: ${dto.product_price} </b><br><br>
    							<a href="directOrder.ca?sale_productCode=${dto.sale_productCode}"><img src="/kosmopj_1/images/buy.JPG" width="60px" height="30px"></a>
    							<a href="cart.ca?sale_productCode=${dto.sale_productCode}"><img src="/kosmopj_1/images/cart.jpg" width="60px" height="30px"></a>
  							</div>
  							<td>
						</tr>
					</table>
				</c:forEach>
			</c:if>
				
			<c:if test="${list==null}">
				<img src="/kosmopj_1/images/productSpare.gif" style="margin-top:60px; margin-left: 250px; width: 1300px; height: 600px;">
			</c:if>	
				
			</fieldset>
		</form>
	</div>
	
	<div id="footer" style="bottom:-1300px; position:absolute; width:1890px;" align="center">
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