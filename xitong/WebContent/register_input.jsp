<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="register.js">

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body background="image/123.jpg">
<img  src="image/title.png" width="100%">
<%
String error=(String)session.getAttribute("error_reg");
if(error==null){
	error=" ";
}
%>
<h2>注册</h2>
	<form action="register.jsp" method="post" onsubmit="return check()">

		<table name="mytable" align="center" >
			<tr>
				<td align="right">名字：</td>
				<td><input type="text" size="20" name="user_name" id="user_name" onchange="changeValue();"/></td>
			</tr>

			<tr>
				<td align="right">部门：</td>
				<td><input type="text" size="20" name="user_partment" id="user_partment" /></td>
			</tr>
			<tr>
				<td align="right">联系电话：</td>
				<td><input type="text" size="20" name="phone" id="phone" />(包含7位数字)</td>
			</tr>
			<tr>
				<td align="right">手机号码：</td>
				<td><input type="text" size="20" name="mobile_phone" id="mobile_phone" />(包含11位数字)</td>
			</tr>

			<tr>
				<td align="right">E_mail地址：</td>
				<td><input type="text" size="20" name="E_mail" id="E_mail"/>(例如：1234567890@qq.com)</td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td><input type="password" size="20" name="password"  id="password"/></td>
			</tr>
			<tr>
				<td align="right">确认密码：</td>
				<td><input type="password" size="20" name="password_reset" id="password_reset"/></td>
			</tr>
			<tr>
				<td align="right">平台名称：</td>
				<td><input type="text" size="20" name="platform_name" id="platform_name"></td>
			</tr>
			<tr>
				<td align="right">平台编号：</td>
				<td><input type="text" size="20" name="platform_number" id="platform_number" readonly="readonly"/>（与姓名相同）</td>
			</tr>
			<tr>
				<td align="right">批准文号：</td>
				<td><input type="text" size="20" name="authorize_number"  id="authorize_number"/></td>
			</tr>
			<tr>
				<td align="right">批准日期：</td>
				<td>
				<input type="date" size="20"  name="authorize_date" id="authorize_date"/>
				</td>
			</tr>
			<tr>
				<td align="right">技术领域：</td>
				<td><input type="text" size="20" name="technology_field" id="technology_field" /></td>
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
					value="注册" /> 
					
				<td>
			</tr>
		</table>

	</form>
	<body>


</body>
</html>