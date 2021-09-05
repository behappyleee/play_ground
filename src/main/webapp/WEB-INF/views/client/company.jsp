<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회사소개 </title>
<link rel= "stylesheet" type="text/css" href="${path}styleclient.css">
</head>
<body>
	
	<div id="con" style="overflow:visible; height:1000px;"> 
      <jsp:include page="../common/toplogin.jsp" />
	 <br><br><hr><br><br>
	
	<u><span id="mainletter" align="center" style="margin-left:80px;"> ABOUT </u></span><br><br>	

	<div style="margin-left:80px;">
	<p><b> 안녕하십니까 SHOES STORE 입니다. </b></p>
	
	<img src="/kosmopj_1/images/complanyabout1.JPG" width="800px" height="500px">
	<img src="/kosmopj_1/images/companyabout2.JPG" width="800px" height="500px">

	</div>
	
	<div id="footer" style="float:right; bottom:-600px; position:absolute; width:1890px;" align="center">
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