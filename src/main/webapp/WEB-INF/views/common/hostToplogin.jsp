<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/hostSetting.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${path}styleclient.css"> 
</head>
<body>
	
	<%-- <c:if test="${sessionScope.hostId != null}"> --%>
	<div id="topcon">
	<div id="toplogin" style="height:40px; background-color:#BDBDBD;">
		<form action="signinAction.do" method="post">
			<table>
				<tr style="float:right; margin-left:1630px;">
					<td>${hostId}님 반갑습니다! </td> <!--logout 기능 구현하기  -->
					<td><input type="button" onclick="location.href='main.do'" value="LOGOUT" style="width:100px; height:40px; margin-top:-5px;"></td>
		<!-- 나중에 host 페이지 정보 꾸미기  <td><a href="#"><img src="/kosmopj_1/images/mypage.gif" style="width:60px; height:40px; margin-top:-5px;"></a></td>--> 
				</tr>
			</table>
		</form>
	</div>

	<div id="header" style="background-image:url('/kosmopj_1/images/style3.jpg');">
        <span id="index" style="font-size:60px"> SHOES STORE </span>
    </div>
        
	<div id="menu">
		  <ul>
			  <li><a href="host_client.ho"> 회원관리 </a></li>
			  <li><a href="hostSaleView.ho"> 판매관리 </a></li>
			  <li><a href="host_order.ho" onclick="window.open('host_order.ho', '마이페이지','width=500, height=550'); return false"> 주문관리  </a></li>
              <li><a href="host_q&aanswer.ho">  Q&A답변 </a></li>
              <li><a href="host.ho">  관리자메인화면 </a></li>
		 </ul>
	</div> 
	
	<div id="search">
			<table style="margin-left: auto; margin-right: auto;">
				<tr>
			 		<td><input type="text" size="100" placeholder="Search"></td>
			 		<td><a href="#"><img src="/kosmopj_1/images/search1.png" style="width:40px; height:50px"></a></td>
				</tr>
			</table>
		</div>
	</div>
	<%-- </c:if> --%>



</body>
</html>