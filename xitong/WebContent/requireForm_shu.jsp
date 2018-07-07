<!-- requireForm.jsp -->
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
<script src="jquery-1.11.1.min.js">
	
</script>
<script type="text/javascript" src="requireForm_shu.js"></script>
<link href="requireForm_shu.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询信息</title>
</head>
<body>
	<%
		ContentDaoImpl contentDao = new ContentDaoImpl();
	%>
	<img src="image/title.png" width="100%">
	<div class="nav" style="position: absolute; top: 2.4cm;">
		<ul>
			<li><a href="requireForm_build.jsp">共建单位信息</a></li>
			<li><a href="requireForm_user.jsp">填表人信息</a></li>
			<li><a href="requireForm_platform.jsp">平台信息</a></li>
			<li><a href="requireForm_authorize.jsp">批准信息</a></li>
			<li><a href="requireForm_support.jsp">依托单位信息</a></li>
			<li><a href="requireForm_director.jsp">平台主任信息</a></li>
		</ul>
	</div>
	<table width="100%" heigh="100%" border="2px">
		<form name="form1" action="requireForm_shu.jsp" method="post">
			<tr border="2cm solid white">
				<td rowspan="2"  bgcolor="#efeeee" valign="top">
					<div id="tabDiv" style="width: 200px;">
						<div id="tabsHead">
							<a id="tabs1" class="curtab"
								href="javascript:showTab('tabs1','tabContent1')">国民经济行业</a> <a
								id="tabs2" class="tabs"
								href="javascript:showTab('tabs2','tabContent2')">学科</a>

						</div>

						<div id="tabContent1" style="display: block">
							<div class="list">
								<ul class="yiji">
									<%
										List<String> big_occupations = contentDao.load_occupation("big_occupation");
										for (String big_occupation : big_occupations) {
									%>
									<li><input type="checkbox" name="occupation2"
										value="<%=big_occupation%>"> <a href="#"
										class="inactive"><%=big_occupation%> &nbsp;<img
											src="image/dianji.png"></a>
										<ul style="display: none">
											<%
												List<String> middle_occupations = contentDao.load_occupation2("big_occupation", "middle_occupation",
															big_occupation);

													for (int i = 0; i < middle_occupations.size(); i++) {
														String middle_occupation = middle_occupations.get(i);
											%>

											<li><input type="checkbox" name="occupation2"
												value="<%=middle_occupation%>"> <a href="#"
												class="inactive active"><%=middle_occupation%> &nbsp;<img
													src="image/dianji.png"></a>
												<ul>
													<%
														List<String> small_occupations = contentDao.load_occupation2("middle_occupation",
																		"small_occupation", middle_occupation);
																for (String small_occupation : small_occupations) {
													%>
													<li><input type="checkbox" name="occupation2"
														value="<%=small_occupation%>"> <a
														href="requireForm_shu.jsp?occupation=<%=small_occupation%>"
														target="rightFrame"><%=small_occupation%> </a></li>

													<%
														}
													%>
												</ul></li>
											<%
												}
											%>
										</ul></li>
									<%
										}
									%>
								</ul>
							</div>
						</div>
						<div id="tabContent2" style="display: none">
							<div class="list">
								<ul class="yiji">
									<%
										List<String> big_subjects = contentDao.load_occupation("big_subject");

										for (String big_subject : big_subjects) {
									%>
									<li><input type="checkbox" name="occupation2"
										value="<%=big_subject%>"> <a href="#"
										class="inactive active"><%=big_subject%> &nbsp;<img
											src="image/dianji.png"></a>
										<ul style="display: none">
											<%
												List<String> middle_subjects = contentDao.load_occupation2("big_subject", "middle_subject",
															big_subject);

													for (int i = 0; i < middle_subjects.size(); i++) {
														String middle_subject = middle_subjects.get(i);
											%>

											<li><input type="checkbox" name="occupation2"
												value="<%=middle_subject%>"> <a href="#"
												class="inactive active"> <%=middle_subject%> &nbsp;<img
													src="image/dianji.png"></a>
												<ul>
													<%
														List<String> small_subjects = contentDao.load_occupation2("middle_subject", "small_subject",
																		middle_subject);
																for (String small_subject : small_subjects) {
													%>
													<li><input type="checkbox" name="occupation2"
														value="<%=small_subject%>"> <a
														href="requireForm_shu.jsp?occupation=<%=small_subject%>">
															<%=small_subject%></a></li>

													<%
														}
													%>
												</ul></li>
											<%
												}
											%>
										</ul></li>
									<%
										}
									%>
								</ul>
							</div>
						</div>
					</div>

				</td>
				<td>
					<!-- 多条件查询 -->
					<div id="shi2">

						输入查询条件 <br />
						<ul>
							<div id="tiaojian">
								<li><input type="button" id="add" value="+" size="5" /> <input
									type="button" id="remove" value="-" size="5" /> ( <select
									name="type[0]">
										<option value="user_name" checked>填表人姓名</option>
										<option value="platfrom_name">平台名称</option>
										<option value="authorize_number">批准文号</option>
										<option value="support_name">依托单位名称</option>
										<option value="director_name">平台主任姓名</option>
										<option value="build_unit">共建单位</option>
								</select> <input type="text" name="content1[0]" size="20" /> <select
									name="way2[0]">
										<option value="and" checked>并含</option>
										<option value="or">或含</option>
										<option value="not">不含</option>
								</select> <input type="text" name="content2[0]" size="20" /> <select
									name="content3[0]">
										<option value="in" checked>精准</option>
										<option value="like">模糊</option>
								</select> )</li>
							</div>
						</ul>


						<%
							String min_authorizeDate = contentDao.load_minAuthorizeDate();
							SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
							String max_authorizeDate = df.format(new Date());// new Date()为获取当前系统时间
						%>
						<p>
							批准时间：<input type="date" value="<%=min_authorizeDate%>"
								name="start_authorize" size="20" /> 到<input type="date"
								value="<%=max_authorizeDate%>" name="end_authorize" size="20" />
						</p>
						<p>
							平台级别:<input type="checkbox" name="platform_level" value="guojia"
								id="platform_level" />国家级 <input type="checkbox"
								name="platform_level" value="sheng" id="platform_level" />省级
						</p>
						<p>
							<input type="checkbox" name="platform_Texture_1"
								value="shi" id="platform_Texture_1" />内设机构相对独立(无法人资格)
						</p>
						<p><input type="radio" name="platform_Texture_4" value="duo" />多单位联合共建 <input
				     	type="radio" name="platform_Texture_4" value="yi"  />依托单位独自建设</p>
					    <p><input type="hidden" name="geshu" /> <input type="submit"
							id="submit" value="查询" style="background-color: #00ff00"></p>
						<p><a href="draw_PlatformLevel.jsp" target="_blank" style="color:blue;font-size:18px;text-decoration:underline;" >平台级别比例</a></p>
					</div>
				<td>
			</tr>
		</form>
		<tr>

			<td>
				<%
					/* ContentDaoImpl contentDao = new ContentDaoImpl(); */
					List<String> user_Emails = null;
					UserDaoImpl userDao = new UserDaoImpl();
					String geshu2 = request.getParameter("geshu");
					String[] occupation2 = request.getParameterValues("occupation2");
					String start_authorize = request.getParameter("start_authorize");
					String end_authorize = request.getParameter("end_authorize");
					String[] platform_level=request.getParameterValues("platform_level");
					String platform_Texture_1=request.getParameter("platform_Texture_1");
					String platform_Texture_4=request.getParameter("platform_Texture_4");
					int geshu = 0;
					String[] type, content1, way, content2, is_accurate, way2;

					if (geshu2 == null && occupation2 == null) {
					} else {
						geshu = Integer.parseInt(geshu2);//查询条件的个数
						type = new String[geshu];//type:查询类型
						content1 = new String[geshu];//content1:第一个查询关键字
						way = new String[geshu];//way:两个关键字之间的关系
						content2 = new String[geshu];//content2:第二个关键字
						is_accurate = new String[geshu];//is_accurate:精切查询还是模糊查询
						way2 = new String[geshu - 1];//way2:第一个与第n个查询条件的关系
						for (int i = 0; i < geshu; i++) {
							type[i] = request.getParameter("type[" + i + "]");
							content1[i] = request.getParameter("content1[" + i + "]");
							way[i] = request.getParameter("way2[" + i + "]");
							content2[i] = request.getParameter("content2[" + i + "]");
							is_accurate[i] = request.getParameter("content3[" + i + "]");
							if (i > 0) {
								way2[i - 1] = request.getParameter("way1[" + i + "]");
							}

						}
						user_Emails = contentDao.load_content1(type, content1, way, content2, is_accurate,
								way2, occupation2,start_authorize, end_authorize, platform_level,
								platform_Texture_1, platform_Texture_4);
					}

					String occupation1 = request.getParameter("occupation");//树状查询条件

					if (occupation1 != null && !"".equals(occupation1) && (user_Emails == null)) {//树状查询条件

						byte[] tb = occupation1.getBytes("ISO-8859-1");
						String occupation = new String(tb); //修改乱码
						user_Emails = contentDao.load_Emails3(occupation);
					} else if ((user_Emails == null) && (occupation1 == null || occupation1.equals(""))) {//没有查询条件

						user_Emails = userDao.load_Emails();

					}
					String[] color = { "#DDF", "#FDD", "#FFD", "#DFF", "#DDD" };
				%>

				<DIV id="table2">
					<table width="3000px">
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
							<td bgcolor="<%=color[0]%>"><%=i + 1%></td>
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
									if (level1 == null || level1.equals("")) {
										level = level2;
									} else if (level2.equals("") || level2 == null) {
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
							<td bgcolor="<%=color[1]%>"><%=platform.getBig_subject() + "," + platform.getMiddle_subject() + ","
						+ platform.getSmall_subject()%></td>
							<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_address()%></td>
							<td bgcolor="<%=color[1]%>"><%=platform.getTechnology_field()%></td>
							<td bgcolor="<%=color[1]%>"><%=platform.getBig_occupation() + "," + platform.getMiddle_occupation() + ","
						+ platform.getSmall_occupation()%></td>
							<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_webname()%></td>
							<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_weburl()%></td>
							<td bgcolor="<%=color[1]%>"><%=platform.getContactAddress()%></td>
							<td bgcolor="<%=color[1]%>"><%=platform.getPlatform_postcode()%></td>
							<td bgcolor="<%=color[2]%>"><%=authorize.getAuthorize_number()%></td>
							
							<td bgcolor="<%=color[2]%>"><%=authorize.getAuthorize_date()%></td>
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
			</td>
		</tr>


	</table>

</body>

</html>