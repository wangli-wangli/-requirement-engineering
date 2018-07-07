<!-- login_input.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="login.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆页面</title>
</head>
<body background="image/123.jpg">
<img  src="image/title.png" width="100%">
<%
String error=(String)session.getAttribute("error");
if(error==null){
	error=" ";
}
%>   <h2>登陆</h2>
	<form action="login.jsp" method="post" onsubmit="return check_login()">

		<table  align="center">
			<tr>
				<td align="right">登录邮箱：</td>
				<td><input type="text" size="20" name="E_mail" id="E_mail" /></td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td><input type="password" size="20" name="password"
					id="password" /></td>
			</tr>
			<tr>
			<td><div style="color:red"><%=error %></div></td>
			</tr>
			<tr>
				<td align="right"><input type="reset" name="Reset"
					style="color: white; background: #FF8800; width: 79px; height: 35px;"
					value="重填" /></td>
				<td><input type="submit" name="Submit"
					style="color: white; background: #00FF00; width: 79px; height: 35px;"
					value="登录" /></td>
			</tr>
		</table>
		<a href="register_input.jsp">点击这里注册</a>
	</form>

</body>
</html>