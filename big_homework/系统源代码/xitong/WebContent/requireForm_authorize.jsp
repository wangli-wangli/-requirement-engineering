<!-- requireForm_authorize.jsp -->
<%@page import="dao.ContentDaoImpl"%>
<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.authorize"%>
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
	padding: 0px 60px;
	   
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
<title>查询批准信息</title>
</head>
<body>
	<img src="image/title.png" width="100%">
	<div class="nav" style="position: absolute; top: 2.2cm;">
		<ul>
			<li><a href="requireForm_build.jsp">共建单位信息</a></li>
			<li><a href="requireForm_user.jsp">填表人信息</a></li>
			<li><a href="requireForm_platform.jsp">平台信息</a></li>
			<li><a href="requireForm.jsp">综合信息</a></li>
			<li><a href="requireForm_support.jsp">依托单位信息</a></li>
			<li><a href="requireForm_director.jsp">平台主任信息</a></li>
		</ul>
	</div>
	<p>
	<div
		style="color: blue; font-size: 60px; text-align: center; font-family: 华文行楷">批准信息</div>
	</p>
	<%
		String content1 = request.getParameter("content");
		if (content1 == null || "".equals(content1)) {
			content1 = "";
		}

		UserDaoImpl userDao = new UserDaoImpl();
		ContentDaoImpl contentDao = new ContentDaoImpl();
		List<authorize> authorizes = new ArrayList<authorize>();
		String content = "";
		if (content1.equals("")) {
			authorizes = userDao.load_authorizes();
		} else {
			if (content1.contains("年") || content1.contains("月") || content1.contains("日")) {
				content=content1.replace("年", "");
				content=content.replace("月", "");
				content=content.replace("日", "");
			} else {
				content = content1;
				authorizes = contentDao.content_authorize(content);
			}
			

		}
		String[] color = { "", "", "white" };
	%>

	<table align="center" border="1px" width="70%"
		background="image/123.jpg">
		<tr>
			<form action="requireForm_authorize.jsp" method="post">
				<td bgcolor="white" colspan="2">输入<span style="color: blue">批准文号</span> 或<span
					style="color: blue">批准年月</span>的关键字</td>
				<td bgcolor="white"><input type="text" name="content" /></td>
				<td bgcolor="white"><input type="submit" value="查询"></td>
			</form>
		</tr>
		<tr>
		    <th bgcolor="<%=color[2]%>">序号</th>
			<th bgcolor="<%=color[2]%>">登陆邮箱</th>
			<th bgcolor="<%=color[2]%>">批准文号</th>
			<th bgcolor="<%=color[2]%>">批准年月</th>
		</tr>
		<%
			for (int i = 0; i < authorizes.size(); i++) {
				authorize authorize = authorizes.get(i);
		%>
		<tr>
		    <td bgcolor="<%=color[2]%>"><%=i+1%></td>
			<td bgcolor="<%=color[2]%>"><%=authorize.getUser_E_mail()%></td>
			<td bgcolor="<%=color[2]%>"><%=authorize.getAuthorize_number()%></td>
			<%
				    String authorize_date = authorize.getAuthorize_date();
					String year2 = authorize_date.substring(0, 4);
					String month2 = authorize_date.substring(4, 6);
					String day2 = authorize_date.substring(6, 8);
			%>
			<td bgcolor="<%=color[2]%>"><%=year2%>年<%=month2%>月<%=day2%>日</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>