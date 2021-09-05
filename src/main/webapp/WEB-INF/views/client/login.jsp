<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 페이지 </title>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
</head>
<body>

	<c:if test="${insertCnt == 3}">
		<script type="text/javascript">
			alert('회원가입 축하드립니다 ! 로그인 해주세요 !')
		</script>
	</c:if>
	
	<div id="con" style="height:100%;"> 
     	<jsp:include page="../common/toplogin.jsp" flush="false" />
        <br><br><hr><br><br>	
      
        <u><span id="mainletter"  align="center" style="padding:110px;"> LOGIN </span></u><br><br>
      
       <form action="loginCheck" method="post" name="loginForm" onsubmit="return loginFormCheck();">
       	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <div id="loginbox" align="center" style="float:left;"> 
			<table style="margin-top:-80px; margin-left:80px;">
        		<tr>
        			<td>
        				<input type="text" size="30" name="userid" placeholder="아이디" autofocus> 
        			</td>
        		</tr>
        	
        		<tr>
        			<td>
        				<input type="password" size="30" name="password" placeholder="비밀번호">
        			</td>
        		</tr>
        			
        		<tr>
        			<td>
        				<input type="checkbox" style="width:20px; height:20px;"> 아이디 저장 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        				<input type="button" value="아이디 찾기" style="width:100px; height:26px; font-size:14px;"> 
        				<input type="button" value="비밀번호 찾기" style="width:130px; height:26px; font-size:14px;"> 
        			</td>
        		</tr>	

        		<tr>
        			<td>			
        				<input type="submit" value="로그인" style="width:220px;height:48px;">
        				<input type="button" value="회원가입" onclick="location.href='signin'" style="width:220px;height:48px;">
        			</td>
        		</tr>
        		
        		<tr>
        			<td><img src="/kosmopj_1/images/kakaologin.jpg" width="445px" height="65px" style="margin-top:30px;"></td>
        		</tr>
        		
        		<tr>
        			<td><img src="/kosmopj_1/images/naverlogin.PNG" width="445px" height="65px" style="margin-top:10px;"></td>
        		</tr>
        		
        		<tr>
        			<td><img src="/kosmopj_1/images/facebookimages.png" width="445px" height="65px" style="margin-top:10px;"></td>
        		</tr>
        	</table>
        </div>
      </form>	
      
        <div>
        	<img src="/kosmopj_1/images/loginad.jpg" width="900px" height="700px" style="margin-left:120px; margin-top:-120px;">
        
        </div>
        
        
		</div>			
		 <div id="footer" style="bottom:-680px; position:absolute; width:1890px;" align="center">
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

</body>
</html>