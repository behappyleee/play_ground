<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
</head>
<body>
	
	<!-- 세션이 존재하지 않을시에 실행  -->
	<c:if test="${sessionScope.clientId == null}">
	<div id="topcon">
	<div id="toplogin" style="height:40px; background-color:#BDBDBD;">
		<form action="#" method="post">
			<table>
				<tr style="float:right; margin-left:1740px;">
					<td><input type="button" onclick="location.href='login'" value="LOGIN" style="width:60px; height:40px; margin-top:-5px; "></td>
					<td><input type="button" onclick="location.href='signin'" value="REGISTER" style="width:78px; height:40px; margin-top:-5px;"></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="header" style="background-image:url('/kosmopj_1/images/style3.jpg');">
        <span id="index" style="font-size:60px"> SHOES STORE </span>
    </div>
        
	<div id="menu">
		  <ul>
			  <li><a href="company"> 회사소개 </a></li>
			  <li><a href="product"> 상품 </a></li>
			  <li><a href="signin"> 회원가입 </a></li>
              <li><a href="login">  로그인 </a></li>
              <li><a href="cartList."> 장바구니 </a></li>
              <li><a href="q&a"> Q&A </a></li>
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
</c:if>

<!-- 세션이 존재할시에 실행 -->
<c:if test="${sessionScope.clientId!=null}">
	<div id="topcon">
	<div id="toplogin" style="height:40px; background-color:#BDBDBD;">
		<form action="signinAction.do" method="post">
			<table>
				<tr style="float:right; margin-left:1650px;">
					<td>${sessionScope.clientId} 님 안녕하세요! </td><!-- 밑에 로그아웃으로 바꾸기  -->
					<td>
						<a href="#" onclick="window.open('mypage.do', '마이페이지','width=500, height=600'); return false">
						<img src="/kosmopj_1/images/mypage.gif" style="width:60px; height:40px; margin-top:-5px;"></a>
					</td> 
				</tr>
			</table>
		</form>
	</div>

	<div id="header" style="background-image:url('/kosmopj_1/images/style3.jpg');">
        <span id="index" style="font-size:60px"> SHOES STORE </span>
    </div>
        
	<div id="menu">
		  <ul id="dropdownlist">
			  <li><a href="company.do"> 회사소개 </a></li>
			  <li><a href="product.do"> 상품 </a>
			 	 <ul id="dropdown">
       				<li> <a href="newProduct.do"> 신상품 </a></li>
      			</ul>
      		  </li>
			  <li><a href="logout.do"> 로그아웃 </a></li>
              <li><a href="#" onclick="window.open('mypage.do', '마이페이지','width=500, height=600')";>  마이페이지 </a></li>
              <li><a href="cartList.ca"> 장바구니 </a></li>
              <li><a href="q&a.do"> Q&A </a></li>
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
</c:if>

</body>
</html>