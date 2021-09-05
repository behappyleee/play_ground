/**
 * validation Check();
 */
var insertError ="추가에 실패하였습니다. \n확인 후 다시 시도해주세요.";
var loginError ="로그인에 실패하였습니다. \n 확인 후 다시 시도해주세요.";
var deleteError ="회원 탈퇴에 실패하였습니다. \n 확인 후 다시 시도해주세요.";
var modifyError= "회원 수정에 실패하였습니다. \n 확인 후 다시 시도해주세요.";

function errorAlert(msg){
	alert(msg);
	window.history.back();	
} 

function logout(){
	window.opener.location.href='logout.do';
	self.close();
}

function cartCount() {
	
	var url = "cartCount.do";
	window.open(url , "menubar=no" , "width=200 , height=200");
	
}

// 마이페이지에서 구매 목록 이동 자바스크립트
function orderCheck () {
	
	window.opener.location.href='orderList.ca';
	self.close();
	
}


//아이디 중복처리 자바스크립트
function confirmId() {
	
	if(!document.signinForm.id.value){
		alert('아이디를 입력해주세요!');
		document.signinForm.id.focus();
		return false;
	}
	
	var url = "confirmId?confirmId=" + document.signinForm.id.value;
	window.open(url , "menubar=no" , "width=400 , height=300");
	
}

function setId(id) {
	opener.document.signinForm.id.value=id;
	self.close();
}


//회원수정 자바스크립트
function modifyPwdChk(){
	
	if(!document.modifyPwdForm.pwd.value){
		alert('비밀번호를 입력해주세요!');
		return false;
	}
	
	window.opener.location.href='modifyView.do?pwd='+document.modifyPwdForm.pwd.value;
	self.close();
	
}


// 회원가입 체크 자바 스크립트
function signinCheck() {
	
	if(!document.signinForm.id.value){
		alert("ID를 입력해주세요!!");
		document.signinForm.id.focus();
		return false;
	} 
	
	if(!document.signinForm.password.value){
		alert("비밀번호를 입력해주세요!!");
		document.signinForm.password.focus();
		return false;
	} 
	
	if(!document.signinForm.repassword.value) {
		alert("비밀번호 확인을 입력해주세요!")
		document.signinForm.repassword.focus();
		return false;
		
	} 
	
	if(document.signinForm.password.value != document.signinForm.repassword.value){
		alert("비밀번호가 일치하지않습니다!!");
		document.signinForm.repassword.focus();
		return false;
	}
	
	 if(!document.signinForm.name.value) {
		alert("이름을 입력해주세요!!");
		document.signinForm.name.focus();
		return false;
	}
	
	if(!document.signinForm.address.value) {
		alert("주소를 입력해주세요!!");
		document.signinForm.address.focus();
		return false;
	}
	
	if(!document.signinForm.hp.value) {
		alert("전화번호를 입력해주세요!!");
		document.signinForm.hp.focus();
		return false;
	}
	
	if(!document.signinForm.email.value) {
		alert("이메일 입력해주세요!!");
		document.signinForm.email.focus();
		return false;
	}
	
	if(!document.signinForm.email.value) {
		alert("생년을 입력해주세요!!");
		document.signinForm.birth1.focus();
		return false;
	} else if(!document.signinForm.birth2.value){
		alert("월을 입력해주세요!!");
		document.signinForm.birth2.focus();
		return false;
	} else if(!document.signinForm.birth3.value) {
		alert("일을 입력해주세요!!");
		document.signinForm.birth3.focus();
		return false;
	}
	
	if(!document.signinForm.gender.value) {
		alert("성별을 선택해주세요 !!");
		return false;
	}
	
}

//로그인 자바스크립트 !!
function loginFormCheck() {
	
	if(!document.loginForm.id.value){
		alert("ID를 입력해주세요!");
		document.loginForm.id.focus();
		return false;
	}
	
	if(!document.loginForm.password.value){
		alert("비밀번호를 입력해주세요!");
		document.loginForm.password.focus();
		return false;
	}
	
}


function mypagePopup() {
	
	var url="mypage.do";
    var option="width=600, height=800, top=200"
    window.open(url, "_blank", option);
	return false;
}


