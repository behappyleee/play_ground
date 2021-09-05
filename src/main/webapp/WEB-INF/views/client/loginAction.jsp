<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인시 아이디/비밀번호 맞는지 확인 </title>
</head>
<body>

	<c:if test="${selectCnt==0}">
		<script type="text/javascript">
		 	errorAlert(loginError);
		 	location.href='main';
		</script>
	</c:if>
	
	
	<c:if test="${selectCnt == 1}">
		<script type="text/javascript">
		 	alert('로그인 되었습니다!');
		 	location.href='main';
		</script>
	</c:if>


	<c:if test="${selectCnt == 7}">
		<script type="text/javascript">
		 	alert('관리자 로그인 되었습니다!');
		 	location.href='host.ho';
		</script>
	</c:if>
	
	
	



</body>
</html>