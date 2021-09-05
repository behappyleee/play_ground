<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/hostSetting.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 관리자 상품등록 </title>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
</head>
<body>

	<div id="con"> 
       <jsp:include page="../common/hostToplogin.jsp"/>
       
       <div id="sale_product">
       <form action="inventory_addPro" enctype="multipart/form-data" method="post">
       	<fieldset id="productWrite" style="height:900px; margin-left:-140px;">
       		<legend id="productWrite_letter"> 상품등록 </legend>
			<table id="sale_tableHost">
				<tr>
					<td> 상품 코드 </td>
					<td> <input type="text" name="sale_productCode"></td>
				</tr>
			
			
				<tr>
					<td> 상품명 </td>
					<td> <input type="text" name="product_name"></td>
				</tr>			
			
				<tr>
					<td> 가격 </td>
					<td><input type="text" name="product_price"></td>
				</tr>
			
				<tr>
					<td> 수량 </td>
					<td><input type="text" name="product_count"></td>
				</tr>
			
			
				<tr>
					<td> 사이즈 </td>
					<td><input type="text" name="product_size"></td>
				</tr>
			
				<tr>
					<td> 상품 설명 </td>					
					<td><textarea rows="10" cols="50" name="product_description"></textarea></td>
				</tr>
			
				<tr>
					<td> 상품 이미지 </td>
					<td> <input type="file" name="product_image"></td>
				</tr>
				
				<tr>
					<td >
						<input type="submit" value="등록" style="margin-top:70px;" >
					</td>
					 <td>	
						<input type="reset" value="취소" style="margin-top:70px;">
					</td>
				</tr>
			</table>
       	</fieldset>
       	</form>
       </div>
       
       
	<div id="footer" style="bottom:-1300px; position:absolute; width:1890px;" align="center">
 		<span> 상호 : SHOES STORE 대표 : 홍길동 <br> 고객센터 :
					02-2222-2222 개인정보관리책임자 : 홍길동 이메일 : abcdef@naver.com <br> 소재지 :
					서울특별시 강서구 사업자등록번호 : 101-18-96726 [사업자정보확인]<br> 통신판매업 신고 : 제
					2016-서울강서-0589 호 Copyright © 2016 SHOES STORE All rights reserved.
		</span>
    </div>

</div>

	




</body>
</html>