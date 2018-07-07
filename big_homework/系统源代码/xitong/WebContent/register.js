/*register.js*/
function check() {
	var correct_phone = /^^1[0-9]{6}$/;
	var correct_mobile = /^1[0-9]{10}$/;// 手机号码为11位，且以1开头。
	var correct_mail = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;

	if (document.getElementById("user_name").value.length == 0) {
		alert("姓名不能为空");
		user_name.focus();
		return false;
	} else if (document.getElementById("user_partment").value.length == 0) {
		alert("部门不能为空");
		document.getElementById("user_partment").focus();
		return false;
	} else if (document.getElementById("phone").value.length == 0) {
		alert("电话不能为空");
		document.getElementById("phone").focus();
		return false;
	} else if (!correct_phone.test(document.getElementById("phone").value)) {
		alert("联系电话请输入7位数字");
		document.getElementById("phone").focus();
		return false;
	} else if (document.getElementById("mobile_phone").value.length == 0) {
		alert("手机号码不能为空");
		document.getElementById("mobile_phone").focus();
		return false;
	} else if (!correct_mobile.test(document.getElementById("mobile_phone").value)) {
		alert("请输入正确的手机号码");
		document.getElementById("mobile_phone").focus();
		return false;
	} else if (document.getElementById("E_mail").value.length == 0) {
		alert("E_mail地址不能为空");
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
	} else if (document.getElementById("password_reset").value != document.getElementById("password").value) {
		alert("请输入正确密码");
		document.getElementById("password_reset").focus();
		return false;
	}  else if (document.getElementById("authorize_date").value.length == 0) {
		alert("批准日期不能为空");
		document.getElementById("authorize_date").focus();
		return false;
	} else if (document.getElementById("technology_field").value.length == 0) {
		alert("技术领域不能为空");
		document.getElementById("technology_field").focus();
		return false;
	}
    else {
		return true;
		alter("注册成功！");
	}
}
function changeValue() {
	var a = document.getElementById("user_name");
	 var c = document.getElementById("platform_number"); 
	c.value = a.value;
}

