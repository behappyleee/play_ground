<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp"%>     
<!DOCTYPE html>
<html >
<meta charset="UTF-8">
<head> 
<title> 첫 페이지 </title>
</head>
<body>
	<!-- 첫페이지 !  -->
	<!--
	<c:if test="${loginCnt==-1}">
		<script type="text/javascript">
			alert('비밀번호가 틀렸습니다!');	
			location.href="login.do";
		</script>
	</c:if>
	
	<c:if test="${loginCnt==0}">
		<script type="text/javascript">
			alert('아이디가 존재하지 않습니다!');	
			location.href="login.do";
		</script>
	</c:if>
	
	<c:if test="${loginCnt==1}">
		<script type="text/javascript">
			alert('환영합니다! 즐거운 시간되세요!');	
		</script>
	</c:if>
	 --!>
	
	<!-- 세션이 존재하지 않을시 실행 -->
	
	<c:if test="${insertCnt == 3}">
		<script type="text/javascript">
			alert('회원가입 축하드립니다 ! 로그인 해주세요 !')
		</script>
	</c:if>
	
	<c:if test="${sessionScope.clientId ==null}">
	<div id="con" style="height:100%;"> 
		  <jsp:include page="../common/toplogin.jsp" flush="false" />  
		 <br><br><hr><br><br>
          <div id="content"> 
            	<div id="mainphoto">
            		<img src="/resources/images/main123.jpg">
            	</div>
             <br><br>
      
			<form id="mainproduct">
				<fieldset >
					<legend align="center" style="font-size:40px;"> 신상품 </legend>
					<ul>
						<li>
  							<img src="/kosmopj_1/images/new1.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b> 뉴발란스 <br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
 				
 						<li>
  							<img src="/kosmopj_1/images/nike16.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
 
 
 						<li>
  							<img src="/kosmopj_1/images/nike14.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
 
					
						<li>
  							<img src="/kosmopj_1/images/new23.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
					
						<li>
  							<img src="/kosmopj_1/images/nike13.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b> <br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
					
						<li>
  							<img src="/kosmopj_1/images/nike15.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
					
						<li>
  							<img src="/kosmopj_1/images/nike3.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
						
						<li>
  							<img src="/kosmopj_1/images/nike14.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
					</ul>
				</fieldset>
			</form>
      	</div>
	 </div>
	
    <div id="footer" style="bottom:-1600px; position:absolute; width:1890px;" align="center">
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
</c:if>

<!-- 세션이 존재할 시 실행  -->
<c:if test="${sessionScope.clientId!=null}">
		<div id="con"> 
		<%-- <jsp:include page="/common/toplogin.jsp" flush="false"/> --%>
		 <br><br><hr><br><br>
			
          <div id="content"> 
            	<div id="mainphoto">
            		<img src="../images/main123.jpg">
            	</div>
            
			<form id="mainproduct">
				<fieldset>
					<legend align="center" style="font-size:40px;"> 신상품 </legend>
					<ul>
						<li>
  							<img src="/kosmopj_1/images/nike11.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
 				
 						<li>
  							<img src="/kosmopj_1/images/nike16.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
 
 
 						<li>
  							<img src="/kosmopj_1/images/new21.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
 
					
						<li>
  							<img src="/kosmopj_1/images/new22.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
					
						<li>
  							<img src="/kosmopj_1/images/nike13.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b> <br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
					
						<li>
  							<img src="/kosmopj_1/images/nike15.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
					
						<li>
  							<img src="/kosmopj_1/images/nike17.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
						
						<li>
  							<img src="/kosmopj_1/images/nike14.jpg" width="300" height="300">
  								<div style="bottom: 10px; left: 19px;font-size: 13px;">
    						<b>나이키<br><br> 사이즈: 220 230 240 260 280 <br><br>가격: 70,000 </b><br><br>
    						<img src="/kosmopj_1/images/buy.JPG" width="80px" height="50px"><img src="/kosmopj_1/images/cart.jpg" width="80px" height="50px">
  								</div>
						</li>
					</ul>
				</fieldset>
			</form>
      	</div>
	 </div>
	
    <div id="footer" style="bottom:-1600px; position:absolute; width:1890px;" align="center">
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
</c:if>
	
	
	
	
</body>
</html>