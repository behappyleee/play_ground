<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원가입 페이지 </title>
</head>
<body>

	<div id="con" style="height:1000px; overflow:visible;">
		<jsp:include page="../common/toplogin.jsp" />
		<br><hr>
		<br> <u><span id="mainletter" align="center"> MEMBER JOIN </span></u><br> <br>
		<form action="insertUser" name="signinForm" method="post" onsubmit="return signinCheck();">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<input type="hidden" name="authority" value="ROLE_USER">
			<div id="signinbox" align="center">
				<table style="margin-top:30px";>
					<tr align="center">
						<td><input type="text"   size="10" name="userid" placeholder="아이디" autofocus></td>
						<td><input type="button" size="10" name="confirmid" value="중복확인" onclick="confirmId();" style="width: 80px; margin-left: -140px; background-color: #58FAF4;"></td>
					</tr>

					<tr align="center">
						<td><input type="password" size="20" name="password"
							placeholder="비밀번호"></td>
					</tr>

					<tr align="center">
						<td><input type="password" size="20" name="repassword"
							placeholder="비밀번호 확인"></td>
					</tr>

					<tr align="center">
						<td><input type="text" size="30" name="username" placeholder="이름"
							autofocus></td>
					</tr>

					<tr align="center">
						<td><input type="text" size="30" name="address"
							placeholder="주소"></td>
					</tr>

					<tr align="center">
						<td><input type="text" size="30" name="hp"
							placeholder="핸드폰번호"></td>
					</tr>

					<tr align="center">
						<td><input type="email" size="30" name="email"
							placeholder="이메일"></td>
					</tr>

					<tr>
						<td align="center">
							<input type="text" size="5" name="birth1" style="width: 85px;" maxlength="4" placeholder="생년"> 
							<input type="text" size="5" name="birth2" style="width: 65px;" maxlength="2" placeholder="월"> 
							<input type="text" size="5" name="birth3" style="width: 60px;" maxlength="2" placeholder="일">
						</td>
					</tr>

					<tr>
						<td id="genderbox" align="center"><input type='radio'
							name='gender' value='female' style="width: 15px;"><img
							src="/kosmopj_1/images/girl.jpg" width="50px" height="50px">
							<input type='radio' name='gender' value='male'
							style="width: 15px;"> <img
							src="/kosmopj_1/images/man.jpg" width="50px" height="50px">
						</td>
					</tr>
					
					
					

					<tr align="center">
						<td>
							<input type="submit" value="회원가입"> 
							<input type="reset" value="다시입력">
						</td>
					</tr>
				</table>
			</div>

			<span style="font-size: 17px; float:right; margin-right:60px; margin-top:50px;">
				<p>
					[개인정보활용동의서] 회사는 이용고객에게 휴대폰 본인확인서비스를 제공을 위해 다음과 같이 개인정보를 활용합니다.<br>

					1. 개인정보 수집·이용(필수동의)<br> 1) 수집항목 : 성명, 생년월일, 성별, 내/외국인유무,
					휴대폰번호, 통신사.<br> 2) 수집·이용목적 : 서비스 이용에 따른 본인확인 및 가입자 식별, 홈페이지
					회원서비스 제공을 위한 회원인증 및 확인.<br> 3) 보유·이용기간 : 비회원일 경우 이용자가 서비스를
					이용하는 기간에 한하여 보유 및 이용합니다.<br> 회원일 경우 회원 가입일부터 회원탈퇴 후 분쟁해결을 위하여
					6개월간 보유 및 이용하고 지체 없이 파기합니다.<br> 단, 소송이나 분쟁 등 특정 사유가 있을 경우 이의
					해결시점까지 이며, 관계법령에의 규정에 의하여 보존할 필요성이 있는 경우에는 관계 법령에 따라 보관합니다.<br>
					2. 동의 거부권 및 미 동의에 대한 불이익 안내<br> 고객님께서는 정보주체로서 개인정보 동의 거부권이
					있으시며, 미동의 시 서비스 가입ㆍ이용에 제약이 있을 수 있고 미동의 하신 경우 정보가 제공되지 않습니다. <br>
					<br> <br> 
					<input type="submit" value="동의" name="agree" style="width: 100px; height: 50px; background-color: #2EFEF7; border-radius: 10px;"
						onclick="agreeChk();"> <br>
				</p>
			</span>
		</form>
	
	<div id="footer" style="bottom: -600px; position: absolute; width: 1890px;" align="center">
		<span> 상호 : SHOES STORE 대표 : 홍길동 <br> 고객센터 : 02-2222-2222
			개인정보관리책임자 : 홍길동 이메일 : abcdef@naver.com <br> 소재지 : 서울특별시 강서구
			사업자등록번호 : 101-18-96726 [사업자정보확인]<br> 통신판매업 신고 : 제 2016-서울강서-0589
			호 Copyright © 2016 SHOES STORE All rights reserved.
		</span>
	</div>
</div>








</body>
</html>