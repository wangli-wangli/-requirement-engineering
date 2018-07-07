<!-- requireForm.jsp -->
<%@page import="dao.ContentDaoImpl"%>
<%@page import="model.director"%>
<%@page import="model.support"%>
<%@page import="model.authorize"%>
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
table {
	border-collapse: collapse;
}

table, td, th {
	border: 1px solid blue;
	align: center;
}

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
<title>查询信息</title>
</head>

<body>
	<img src="image/title.png" width="100%">
	<div class="nav" style="position: absolute; top: 2.2cm;">
		<ul>
			<li><a href="requireForm_build.jsp">共建单位信息</a></li>
			<li><a href="requireForm_user.jsp">填表人信息</a></li>
			<li><a href="requireForm_platform.jsp">平台信息</a></li>
			<li><a href="requireForm_authorize.jsp">批准信息</a></li>
			<li><a href="requireForm_support.jsp">依托单位信息</a></li>
			<li><a href="requireForm_director.jsp">平台主任信息</a></li>
		</ul>
	</div>
	<p>
	<div
		style="color: blue; font-size: 60px; text-align: center; font-family: 华文行楷">综合信息</div>
	</p>

	<%
		/* String user_Email = (String) session.getAttribute("user_Email"); */
		String content = request.getParameter("content");
		String conten1 = request.getParameter("conten1");
		String conten2 = request.getParameter("conten2");
		if (content == null || "".equals(content)) {
			content = "";
		}
		if (conten1 == null || "".equals(conten1)) {
			conten1 = "";
		}
		if (conten2 == null || "".equals(conten2)) {
			conten2 = "";
		}
		UserDaoImpl userDao = new UserDaoImpl();
		ContentDaoImpl contentDao = new ContentDaoImpl();
		List<String> user_Emails = new ArrayList<String>();
		String[] color = { "#DDF", "#FDD", "#FFD", "#DFF", "#DDD" };
		if (content.equals("")) {
			if (conten1.equals("") && conten2.equals("")) {
				user_Emails = userDao.load_Emails();
			} else if (conten1.equals("")) {
				user_Emails = contentDao.conten3(conten2);

			} else if (conten2.equals("")) {
				user_Emails = contentDao.conten2(conten1);
			} else {
				user_Emails = contentDao.conten1(conten1, conten2);
			}
		} else {
			if (content.equals("")) {
				user_Emails = userDao.load_Emails();
			} else {
				user_Emails = contentDao.content_all(content);

			}
		}
	%>

	<DIV style="OVERFLOW-X: scroll; width: 3000px; HEIGHT: 1200px"
		align="center">
		<table>
			<tr>
				<form action="requireForm.jsp" method="post">
					<td bgcolor="white" colspan="9">输入<span style="color: blue">填表人姓名</span>
						或<span style="color: blue">平台名称</span>或<span style="color: blue">批准文号</span>
						或<span style="color: blue">依托单位名称</span>或<span style="color: blue">平台主任姓名</span>的关键字
					</td>
					<td colspan="4" bgcolor="white"><input type="text"
						name="content" size="50" /></td>
					<td bgcolor="white"><input type="submit" value="查询"></td>
				</form>
			</tr>
			<tr>
				<form action="requireForm.jsp" method="post">
					<td bgcolor="white">多条件查询</td>
					<td bgcolor="white" colspan="6"><span style="color: blue">填表人姓名</span>
						<input type="text" name="conten1" size="40"></td>
					<td bgcolor="white" colspan="6"><span style="color: blue">平台名称</span>
						<input type="text" name="conten2" size="40"></td>

					<td bgcolor="white"><input type="submit" value="查询"></td>
				</form>
			</tr>
			<tr>
                <th bgcolor="<%=color[0]%>" rowspan="2">序号</th> 
				<th bgcolor="<%=color[0]%>" rowspan="2">登陆邮箱</th>
				<th bgcolor="<%=color[0]%>" rowspan="2">密码</th>

				<th bgcolor="<%=color[0]%>" colspan="4">填表人</th>
				<th bgcolor="<%=color[1]%>" colspan="15">平台</th>
				<th bgcolor="<%=color[2]%>" colspan="2">批准</th>
				<th bgcolor="<%=color[3]%>" colspan="5">依托单位</th>
				<th bgcolor="<%=color[4]%>" colspan="10">平台主任</th>
			</tr>

			<tr>
				<th bgcolor="<%=color[0]%>">姓名</th>
				<th bgcolor="<%=color[0]%>">所在部门</th>
				<th bgcolor="<%=color[0]%>">联系电话</th>
				<th bgcolor="<%=color[0]%>">手机号码</th>
				<th bgcolor="<%=color[1]%>">名称</th>
				<th bgcolor="<%=color[1]%>">编号</th>
				<th bgcolor="<%=color[1]%>">级别</th>
				<th bgcolor="<%=color[1]%>" colspan="4">组织形态</th>
				<th bgcolor="<%=color[1]%>">所属学科</th>
				<th bgcolor="<%=color[1]%>">所在市县</th>
				<th bgcolor="<%=color[1]%>">技术领域</th>
				<th bgcolor="<%=color[1]%>">服务的主要国民经济行业</th>
				<th bgcolor="<%=color[1]%>">网站名称</th>
				<th bgcolor="<%=color[1]%>">网址</th>
				<th bgcolor="<%=color[1]%>">通讯地址</th>
				<th bgcolor="<%=color[1]%>">邮编</th>
				<th bgcolor="<%=color[2]%>">文号</th>
				<th bgcolor="<%=color[2]%>">年月</th>
				<th bgcolor="<%=color[3]%>">组织机构代码</th>
				<th bgcolor="<%=color[3]%>">名称</th>
				<th bgcolor="<%=color[3]%>">法人代表姓名</th>
				<th bgcolor="<%=color[3]%>">办公电话</th>
				<th bgcolor="<%=color[3]%>">类型</th>
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
				for (int i = 0; i < user_Emails.size(); i++) {
					String user_Email = user_Emails.get(i);
					User user = userDao.load_user(user_Email);
					platform platform = userDao.load_basic1(user_Email);
					authorize authorize = userDao.load_authorize(user_Email);
					support support = userDao.load_support(user_Email);
					director director = userDao.load_director(user_Email);
			%>
			<tr>
                <td bgcolor="<%=color[0]%>"><%=i+1%></td>
				<td bgcolor="<%=color[0]%>"><%=user.getUser_Email()%></td>
				<td bgcolor="<%=color[0]%>"><%=user.getUser_password()%></td>
				<td bgcolor="<%=color[0]%>"><%=user.getUser_name()%></td>
				<td bgcolor="<%=color[0]%>"><%=user.getUser_department()%></td>
				<td bgcolor="<%=color[0]%>"><%=user.getUser_phone()%></td>
				<td bgcolor="<%=color[0]%>"><%=user.getUser_mobile()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_name()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_number()%></td>
				<%
					String Platform_level = platform.getPlatform_level();
						 int first1 = Platform_level.indexOf("&");
						String level1 = Platform_level.substring(0, first1);
						String level2 = Platform_level.substring(first1 + 1, Platform_level.length());
						String level;
						if (level1==null||level1.equals("")) {
							level = level2;
						} else if (level2.equals("")||level2==null) {
							level = level1;
						} else {
							level = level1 + "、" + level2;
						} 
				%>
				<td bgcolor="<%=color[1]%>"><%=level%></td>
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
				<td bgcolor="<%=color[1]%>"><%=Textuser1%></td>
				<td bgcolor="<%=color[1]%>"><%=Textuser2%></td>
				<td bgcolor="<%=color[1]%>"><%=Textuser4%></td>
				<td bgcolor="<%=color[1]%>"><%=Textuser3%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getBig_subject()+","+platform.getMiddle_subject()+","+platform.getSmall_subject()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_address()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getTechnology_field()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getBig_occupation()+","+platform.getMiddle_occupation()+","+platform.getSmall_occupation()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_webname()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_weburl()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getContactAddress()%></td>
				<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_postcode()%></td>
				<td bgcolor="<%=color[2]%>"><%=authorize.getAuthorize_number()%></td>
				<%
					String authorize_date = authorize.getAuthorize_date();
						String year = authorize_date.substring(0, 4);
						String month = authorize_date.substring(4, 6);
						String day = authorize_date.substring(6, 8);
				%>
				<td bgcolor="<%=color[2]%>"><%=year%>年<%=month%>月<%=day%>日</td>
				<td bgcolor="<%=color[3]%>"><%=support.getSupport_number()%></td>
				<td bgcolor="<%=color[3]%>"><%=support.getSupport_name()%></td>
				<td bgcolor="<%=color[3]%>"><%=support.getLegalperson_name()%></td>
				<td bgcolor="<%=color[3]%>"><%=support.getSupport_phone()%></td>
				<td bgcolor="<%=color[3]%>"><%=support.getSupport_type()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getDirector_name()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getDirector_sex()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getDirector_birthday()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getJob_title()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getDirector_professional()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getEducation_background()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getDegree()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getOffice_phone()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getDirector_phone()%></td>
				<td bgcolor="<%=color[4]%>"><%=director.getDirector_Email()%></td>
			</tr>
			<%
				}
			%>

		</table>
	</DIV>
</body>

</html>