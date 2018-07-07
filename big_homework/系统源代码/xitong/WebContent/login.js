//login.js
function check_login() {
	var correct_mail = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	if (document.getElementById("E_mail").value.length == 0) {
		alert("登陆邮箱不能为空");
		document.getElementById("E_mail").focus();
		return false;
	} else if (!correct_mail.test(document.getElementById("E_mail").value)) {
		alert("请输入正确的邮箱地址");
		document.getElementById("E_mail").focus();
		return false;
	} else if (document.getElementById("password").value.length == 0) {
		alert("密码不能为空");
		document.getElementById("password").focus();
		return false;
	} else{
		return true;
	}

}