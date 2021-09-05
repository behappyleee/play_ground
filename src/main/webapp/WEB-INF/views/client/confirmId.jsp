<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/clientSetting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 아이디 중복 확인 </title>
</head>
<body>

 <!--confirmId 가 1일시 아이디가 존재함 그러므로 아이디 다시입력 칸 나오게 함 -->
 
 <u><span id="mainletter"  align="center" style="padding:10px; font-size:35px;"> ID 중복확인 </span></u><br><br>
 
 <c:if test="${selectCnt==1}">
	<form action="confirmId" method="post" name="confirmIdChk" onsubmit="confirmIdChk();">
		<table>
			<tr colspan="2"> 
				<td> ${id} 는 사용할 수 없습니다.</td>
			</tr>
		
			<tr>		
				<th> ID: </th>
				<td><input type="text" name="confirmId" autofocus required style="margin-left:-70px; width:150px; height:40px;"></td>				
			</tr>
			
			<tr>
				<td>
					<input type="submit" value="확인" style="width:100px; height:50px;">
				</td>
				<td>	
					<input type="reset" value="취소" onclick="self.close();" style="width:100px; height:50px;">
				</td>
			</tr>
			
		</table>	
	</form>
</c:if>

	<!-- confirmId가 0이면 아이디가 존재하지 않는것임 그러면 아이디 사용가능 창 나오게 함 JSTL 이용하여 가져오기  -->
	<c:if test="${selectCnt==0}">
			<table>
				<tr>
					<td colspan="2" align="center"> 
					<span> ${id} </span>는 사용할 수 있습니다. 
					</td>
				</tr>
				
				<tr>
					<th> 
					<input class="inputButton" type="button" value="확인" onclick="setId('${id}');" style="width:100px; height:50px;">
					</th>
				</tr>
			</table>	
	
	</c:if>





</body>
</html>