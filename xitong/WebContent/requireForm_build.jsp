<!-- requireForm_build.jsp -->
<%@page import="model.user_unit"%>
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
	padding: 0px 64px;
	   
}
/* a{text-decoration:none;} */
a:link{color:orange;}
a:visited{color:#F70;} 
a:hover {color: blue;}
a:active{color:red;} 

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询共建单位</title>
</head>
<body>
<img src="image/title.png" width="100%">
<div class="nav" style="position:absolute;top:2.2cm;">
		<ul >
			<li><a href="requireForm.jsp">综合信息</a></li>
			<li><a href="requireForm_user.jsp">填表人信息</a></li>
			<li><a href="requireForm_platform.jsp">平台信息</a></li>
			<li><a href="requireForm_authorize.jsp">批准信息</a></li>
			<li><a href="requireForm_support.jsp">批准信息</a></li>
			<li><a href="requireForm_director.jsp">平台主任信息</a></li>
		</ul>
	</div>
	<p>
	<div
		style="color: blue; font-size: 60px; text-align: center; font-family: 华文行楷">共建单位信息</div>
	</p>
	
	<%
		UserDaoImpl userDao = new UserDaoImpl();
		List<User> users = new ArrayList<User>();
		users = userDao.load_users();
		String[] color = { "", "white" };
		int max = userDao.load_maxBuild();
	%>
	<table align="center" border="1px" background="image/123.jpg" >
		<tr>
			<td bgcolor="white" ></td>
			<%
				for (int i = 0; i < max; i++) {
			%>
			<td bgcolor="white">共建单位<%=i + 1%></td>
			<%
				}
			%>
		</tr>
		<%
			for (int i = 0; i < users.size(); i++) {
				User user = users.get(i);
				List<String> user_unit = userDao.load_builds(user.getUser_Email());
		%>
		<tr>
			<td bgcolor="white"><%=user.getUser_Email()%></td>
			<%
				for (String unit : user_unit) {
						
			%>
			<td bgcolor="white"><%=unit%></td>
			<%
				}
					int cha = max - user_unit.size();
					for (int j = 0; j < cha; j++) {
			%>
			<td bgcolor="white"></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>