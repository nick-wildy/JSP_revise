function joinCheck() {
	
	if(document.frm.custName.value.length == 0) {
		alert("회원성명이 입력되지 않았습니다");
		frm.custName.focus();
		return false;
	}
	if(document.frm.phone.value.length == 0) {
		alert("회원전화가 입력되지 않았습니다");
		frm.phone.focus();
		return false;
	}
	if(document.frm.address.value.length == 0) {
		alert("회원주소가 입력되지 않았습니다");
		frm.address.focus();
		return false;
	}
	if(document.frm.joinDate.value.length == 0) {
		alert("가입일자가 입력되지 않았습니다");
		frm.joinDate.focus();
		return false;
	}
	if(document.frm.grade.value.length == 0) {
		alert("회원등급이 입력되지 않았습니다");
		frm.grade.focus();
		return false;
	}
	if(document.frm.city.value.length == 0) {
		alert("도시코드가 입력되지 않았습니다");
		frm.city.focus();
		return false;
	}
	
	success();
	
	return true;
}


function success() {
	alert("회원등록이 완료되었습니다");
}




function search() {
	window.location = 'list.jsp';
}


function modifyCheck(){
	if(document.mfrm.custName.value.length == 0) {
		alert("회원성명이 입력되지 않았습니다");
		frm.custName.focus();
		return false;
	}
	if(document.mfrm.phone.value.length == 0) {
		alert("회원전화가 입력되지 않았습니다");
		frm.phone.focus();
		return false;
	}
	if(document.mfrm.address.value.length == 0) {
		alert("회원주소가 입력되지 않았습니다");
		frm.address.focus();
		return false;
	}
	if(document.mfrm.joinDate.value.length == 0) {
		alert("가입일자가 입력되지 않았습니다");
		frm.joinDate.focus();
		return false;
	}
	if(document.mfrm.grade.value.length == 0) {
		alert("회원등급이 입력되지 않았습니다");
		frm.grade.focus();
		return false;
	}
	if(document.mfrm.city.value.length == 0) {
		alert("도시코드가 입력되지 않았습니다");
		frm.city.focus();
		return false;
	}
	
	modifysuccess();
	
	return true;
}
function modifysuccess() {
	alert("회원수정이 완료되었습니다");
}