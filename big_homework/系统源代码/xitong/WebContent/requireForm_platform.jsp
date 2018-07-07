<!-- requireForm_platform.jsp -->
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
a:link{color:orange;}
a:visited{color:#F70;} 
a:hover {color: blue;}
a:active{color:red;} 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询平台信息</title>
</head>
<body>
<img  src="image/title.png" width="100%" >
<div class="nav" style="position:absolute;top:2.2cm;">
		<ul >
			<li><a href="requireForm_build.jsp">共建单位信息</a></li>
			<li><a href="requireForm_user.jsp">填表人信息</a></li>
			<li><a href="requireForm.jsp">综合信息</a></li>
			<li><a href="requireForm_authorize.jsp">批准信息</a></li>
			<li><a href="requireForm_support.jsp">依托单位信息</a></li>
			<li><a href="requireForm_director.jsp">平台主任信息</a></li>
		</ul>
	</div>
<p><div
		style="color: blue; font-size: 60px; text-align: center; font-family: 华文行楷">平台信息</div></p>
<%
String content = request.getParameter("content");
if (content == null || "".equals(content)) {
	content = "";
}
UserDaoImpl userDao = new UserDaoImpl();
ContentDaoImpl contentDao=new ContentDaoImpl();
List<platform> platforms = new ArrayList<platform>();
if (content.equals("")) {
	platforms= userDao.load_platforms();
} else {
	platforms= contentDao.content_platform(content);
	System.out.println(content);
	
}
		String[] color={"","white"};
	%>
	<DIV style="OVERFLOW-X: scroll; width: 1800px; HEIGHT: 1000px"
		align="center">
	<table align="center" border="1px" width="90%" background="image/123.jpg">
		<tr>
			<form action="requireForm_platform.jsp" method="post">
				<td bgcolor="white" colspan="4">输入<span style="color: blue">平台级别</span>
					或<span style="color: blue">技术领域</span>的关键字</td>
				<td colspan="3" bgcolor="white"><input type="text"
					name="content" size="50" /></td>
				<td bgcolor="white"><input type="submit" value="查询"></td>
			</form>
		</tr>
	<tr>
		<th bgcolor="<%=color[1] %>">登陆邮箱</th>
	<th bgcolor="<%=color[1] %>">名称</th>
	<th bgcolor="<%=color[1] %>">编号</th>
				<th bgcolor="<%=color[1] %>">级别</th>
				<th bgcolor="<%=color[1] %>" colspan="4">组织形态</th>
				<th bgcolor="<%=color[1] %>">所属学科</th>
				<th bgcolor="<%=color[1] %>">所在市县</th>
				<th bgcolor="<%=color[1] %>">技术领域</th>
				<th bgcolor="<%=color[1] %>">服务的主要国民经济行业</th>
				<th bgcolor="<%=color[1] %>">网站名称</th>
				<th bgcolor="<%=color[1] %>">网址</th>
				<th bgcolor="<%=color[1] %>">通讯地址</th>
				<th bgcolor="<%=color[1] %>">邮编</th>
	</tr>
		<%
				for (int i = 0; i < platforms.size(); i++) {
					platform platform = platforms.get(i);
					
			%>
			<tr>
			<td bgcolor="<%=color[1] %>"><%=platform.getUser_Email()%></td>
			<td bgcolor="<%=color[1] %>"><%=platform.getPlatform_name()%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getPlatform_number()%></td>
				<%
					String Platform_level = platform.getPlatform_level();
						int first1 = Platform_level.indexOf("&");
						String level1 = Platform_level.substring(0, first1);
						String level2 = Platform_level.substring(first1 + 1, Platform_level.length());
						String level;
						if (level1.equals("")||level1==null) {
							level = level2;
						} else if (level2.equals("")||level2==null) {
							level = level1;
						} else {
							level = level1 + "、" + level2;
						}
				%>
				<td bgcolor="<%=color[1] %>"><%=level%></td>
				<%
					String platform_Textuser = platform.getPlatform_Texture();
						int first = platform_Textuser.indexOf("&");
						int second = platform_Textuser.indexOf('&', first + 1);
						int third = platform_Textuser.indexOf('&', second + 1);
						String Textuser1 = platform_Textuser.substring(0, first);
						String Textuser2 = platform_Textuser.substring(first + 1, second);
						String Textuser3 = platform_Textuser.substring(second + 1, third);
						String Textuser4 = platform_Textuser.substring(third + 1, platform_Textuser.length());
						if (Textuser1.equals("null")) {
							Textuser1 = "";
						}
						if (Textuser3.equals("是")) {
							Textuser3 = "京津冀共建";
						} else {
							Textuser3 = "";
						}
				%>
				<td bgcolor="<%=color[1] %>"><%=Textuser1%></td>
				<td bgcolor="<%=color[1] %>"><%=Textuser2%></td>
				<td bgcolor="<%=color[1] %>"><%=Textuser4%></td>
				<td bgcolor="<%=color[1] %>"><%=Textuser3%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getBig_subject()+","+platform.getMiddle_subject()+","+platform.getSmall_subject()%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getPlatform_address()%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getTechnology_field()%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getBig_occupation()+","+platform.getMiddle_occupation()+","+platform.getSmall_occupation()%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getPlatform_webname()%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getPlatform_weburl()%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getContactAddress()%></td>
				<td bgcolor="<%=color[1] %>"><%=platform.getPlatform_postcode()%></td>
			</tr>
			<%} %>
	</table>
	</DIV>
</body>
</html>