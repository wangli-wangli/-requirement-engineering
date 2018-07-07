<!-- requireForm_director.jsp -->
<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.director"%>
<%@page import="dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.nav ul li {
	float: left;
	list-style: none;
	display: inline-block;
	padding: 0px 57px;
	   
}
/* a{text-decoration:none;} */
a:link{color:orange;}
a:visited{color:#F70;} 
a:hover {color: blue;}
a:active{color:red;} 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询平台主任信息</title>
</head>
<body>
<img  src="image/title.png" width="100%" >
	<div class="nav" style="position:absolute;top:2.2cm;">
		<ul >
			<li><a href="requireForm_build.jsp">共建单位信息</a></li>
			<li><a href="requireForm_user.jsp">填表人信息</a></li>
			<li><a href="requireForm_platform.jsp">平台信息</a></li>
			<li><a href="requireForm_authorize.jsp">批准信息</a></li>
			<li><a href="requireForm_support.jsp">依托单位信息</a></li>
			<li><a href="requireForm.jsp">综合信息</a></li>
		</ul>
	</div>
	<p>
	<div
		style="color: blue; font-size: 60px; text-align: center; font-family: 华文行楷">平台主任信息</div>
	</p>
	<%
		UserDaoImpl userDao = new UserDaoImpl();
		List<User> users = new ArrayList<User>();
		users = userDao.load_users();
		String[] color = { "","","","", "white" };
	%>
	<table align="center" border="1px" width="90%"
		background="image/123.jpg">
		<tr>
			<th bgcolor="<%=color[4]%>">登陆邮箱</th>
			<th bgcolor="<%=color[4]%>">姓名</th>
			<th bgcolor="<%=color[4]%>">性别</th>
			<th bgcolor="<%=color[4]%>">出生年月</th>
			<th bgcolor="<%=color[4]%>">职称</th>
			<th bgcolor="<%=color[4]%>">所学专业</th>
			<th bgcolor="<%=color[4]%>">学历</th>
			<th bgcolor="<%=color[4]%>">学位</th>
			<th bgcolor="<%=color[4]%>">办公电话</th>
			<th bgcolor="<%=color[4]%>">手机</th>
			<th bgcolor="<%=color[4]%>">E_mail</th>
		</tr>
			<%
				for (int i = 0; i < users.size(); i++) {
					User user = users.get(i);
					director director = userDao.load_director(user.getUser_Email());
			%>
			<tr>
			<td bgcolor="<%=color[4] %>"><%=user.getUser_Email()%></td>
			<td bgcolor="<%=color[4] %>"><%=director.getDirector_name()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getDirector_sex()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getDirector_birthday()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getJob_title()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getDirector_professional()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getEducation_background()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getDegree()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getOffice_phone()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getDirector_phone()%></td>
				<td bgcolor="<%=color[4] %>"><%=director.getDirector_Email()%></td>
			</tr>
			<%} %>
	</table>

</body>
</html>