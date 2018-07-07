<!-- requireForm_user.jsp -->
<%@page import="dao.ContentDaoImpl"%>
<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.platform"%>
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
a:link {
	color: orange;
}

a:visited {
	color: #F70;
}

a:hover {
	color: blue;
}

a:active {
	color: red;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img src="image/title.png" width="100%">
	<div class="nav" style="position: absolute; top: 2.2cm;">
		<ul>
			<li><a href="requireForm_build.jsp">共建单位信息</a></li>
			<li><a href="requireForm.jsp">综合信息</a></li>
			<li><a href="requireForm_platform.jsp">平台信息</a></li>
			<li><a href="requireForm_authorize.jsp">批准信息</a></li>
			<li><a href="requireForm_support.jsp">依托单位信息</a></li>
			<li><a href="requireForm_director.jsp">平台主任信息</a></li>
		</ul>
	</div>
	<p>
	<div
		style="color: blue; font-size: 60px; text-align: center; font-family: 华文行楷">填表人信息</div>
	</p>
	<%
	String content = request.getParameter("content");
	if (content == null || "".equals(content)) {
		content = "";
	}

	UserDaoImpl userDao = new UserDaoImpl();
	ContentDaoImpl contentDao=new ContentDaoImpl();
	List<User> users = new ArrayList<User>();
	if (content.equals("")) {
		users= userDao.load_users();
	} else {
		users= contentDao.content_user(content);
		
	}
	
	%>
	<table align="center" border="1px" background="image/123.jpg">
		<tr>
			<form action="requireForm_user.jsp" method="post">
				<td bgcolor="white" colspan="2">输入<span style="color: blue">姓名</span>
					或<span style="color: blue">所在部门</span>的关键字</td>
				<td colspan="3" bgcolor="white"><input type="text"
					name="content" size="50" /></td>
				<td bgcolor="white"><input type="submit" value="查询"></td>
			</form>
		</tr>
		<tr>
			<th bgcolor="white">登陆邮箱</th>
			<th bgcolor="white">密码</th>
			<th bgcolor="white">姓名</th>
			<th bgcolor="white">所在部门</th>
			<th bgcolor="white">联系电话</th>
			<th bgcolor="white">手机号码</th>
		</tr>
		<%
			for (int i = 0; i < users.size(); i++) {
				User user = users.get(i);
		%>
		<tr>
			<td bgcolor="white"><%=user.getUser_Email()%></td>
			<td bgcolor="white"><%=user.getUser_password()%></td>
			<td bgcolor="white"><%=user.getUser_name()%></td>
			<td bgcolor="white"><%=user.getUser_department()%></td>
			<td bgcolor="white"><%=user.getUser_phone()%></td>
			<td bgcolor="white"><%=user.getUser_mobile()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>