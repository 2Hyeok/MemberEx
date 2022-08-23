/**
 * 회원관리
 */

var idmsg = "아이디를 입력하세요.";
var passwdmsg = "비밀번호를 입력하세요.";
var repasswdmsg = "비밀번호가 일치하지 않습니다.";
var namemsg = "이름을 입력하세요.";
var juminmsg = "주민번호를 입력하세요.";
var telmsg = "전화번호를 입력하세요.";
var emailmsg = "이메일형식에 맞지 않습니다.";
var confirmmsg = "아이디 중복확인을 해주세요";

var inputerror = "회원가입에 실패했습니다.\n 잠시후 다시 시도하세요.";
var iderror = "입력하신 아이디가 없습니다. \n 다시 확인하세요";
var passwderror = "입력하신 비밀번호가 다릅니다. \n 다시 확인하세요";
var deleteerror = "회원 탈퇴에 실패했습니다. \n 잠시후 다시 시도해 주세요";
var modifyerror = "회원정보수정에 실패했습니다. \n 잠시후 다시 시도해 주세요";
	
function erroralert(msg) {
	alert(msg);
	history.back();
}

//회원정보 수정
function modifycheck() {
	if( ! modifyform.passwd.value){
		alert(passwdmsg);
		modifyform.passwd.focus();
		return false;
	}else if (modifyform.passwd.value != modifyform.repasswd.value){
		alert(repasswdmsg);
		modifyform.passwd.focus();
		return false;
	}
}

//회원 탈퇴
function passwdcheck() {
	if( ! passwdform.passwd.value) {
		alert(passwdmsg);
		passwdform.passwd.focus();
		return false;
	}
}

// 아이디 중복확인
function confirm() {
	if( ! inputform.id.value){
		alert(idmsg);
		inputform.id.focus();
		return;
	}
	var url = "confirm.do?id=" + inputform.id.value;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}
	
//중복확인
function confirmcheck() {
	if( ! confirmform.id.value ){
		alert(idmsg)
		confirmform.id.focus();
		return false;
	}
}

function setid(id){
	opener.document.inputform.check.value="1";
	opener.document.inputform.id.value = id;
	//window.close;
	//close;
	self.close();
}

// 회원 가입
function inputcheck() {
	if( inputform.check.value == "0"){
		alert(confirmmsg);
		inputform.id.focus();
		return false;
	}
	
	if( ! inputform.id.value){
		alert( idmsg );
		inputform.id.focus();
		return false;
	}else if(! inputform.passwd.value){
		alert(passwdmsg);
		inputform.passwd.focus();
		return false;
	}else if( inputform.passwd.value != inputform.repasswd.value){
		alert(repasswdmsg)
		inputform.passwd.focus();
		return false;
	}else if( ! inputform.name.value){
		alert(namemsg);
		inputform.name.focus();
		return false;
	}else if(inputform.jumin1.value.lenght<6 || inputform.jumin2.value.length<7){
		alert(juminmsg);
		inputform.jumin1.focus();
		return false;
	}
	if(inputform.tel1.value || inputform.tel2.value || inputform.tel3.value){
		if(inputform.tel1.value.length < 3
			|| inputform.tel2.value.length < 3
			|| inputform.tel3.value.length < 4) {
			alert(telmsg);
			inputform.tel1.focus();
			return false;
		}
	}
	if(inputform.email1.value){
		if(inputform.email2.value == "0"){
			// 직접 입력
			if(inputform.email1.value.indexOf("@") == -1){
				alert(emailmsg);
				inputform.email1.focus();
				return false;
			}
		}else {
			// 선택 입력
			if(inputform.email1.value.indexOf("@") != -1){
				alert(emailmsg);
				inputform.email1.focus();
				return false;
			}
		}
	}
}

function nextjumin1() {
	if(inputform.jumin1.value.length == 6){
		inputform.jumin2.focus();
	}
}
function nextjumin2() {
	if(inputform.jumin2.value.length == 7){
		inputform.tel1.focus();
	}
}
function nexttel1() {
	if(inputform.tel1.value.length == 3){
		inputform.tel2.focus();
	}
}
function nexttel2() {
	if(inputform.tel2.value.length == 4){
		inputform.tel3.focus();
	}
}
function nexttel3() {
	if(inputform.tel3.value.length == 4){
		inputform.email1.focus();
	}
}
// 메인페이지
function maincheck() {
	if( ! mainform.id.value){
		alert( idmsg );
		mainform.id.focus();
		return false;
	} else if(! mainform.passwd.value){
		alert( passwdmsg);
		mainform.passwd.focus();
		return false;
	}
}