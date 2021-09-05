<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- insertCnt 가 1일시 가입 실패 -->
	<c:if test="${insertCnt==0}">
		<script type="text/javascript">
		 	errorAlert(insertError);
		</script>
	</c:if>
	
	<!-- insertCnt가 0이 아닐시 가입 성공 -->
	<c:if test="${insertCnt!=0}">
		<script type="text/javascript">
		 	alert('회원가입을 축하드립니다!');
		 	location.href='main';
		</script>
	</c:if>
	



</body>
</html>