<!-- basicForm.jsp -->
<%@page import="model.platform"%>
<%@page import="model.director"%>
<%@page import="model.support"%>
<%@page import="model.user_unit"%>
<%@page import="dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>基本信息</title>
</head>
<body>
	<%
		String user_Email = (String) session.getAttribute("user_Email");
		UserDaoImpl userDao = new UserDaoImpl();
		int count = userDao.load_count2(user_Email); 
		//int count=0;
		if (count > 0) {
	%>
	<h2>你已提交，不能多次提交！</h2>
	<%
		} else {
			String[] platform_levels = request.getParameterValues("platform_level");
			String platform_level="";
			for(int i=0;i<platform_levels.length;i++)
			{
				platform_level=platform_level+"&"+platform_levels[i];
			}
			
			String shi = request.getParameter("shi");
			String xian = request.getParameter("xian");
			String platform_address = shi + xian;
			String platform_Texture_1 = request.getParameter("platform_Texture_1");
			String platform_texture_2 = request.getParameter("platform_Texture_2");
			String platform_texture_4 = request.getParameter("platform_Texture_4");
			String platform_texture_3 = request.getParameter("platform_Texture_3");
			String platform_texture = platform_Texture_1 +"&"+platform_texture_2 +"&"+platform_texture_3+"&"+ platform_texture_4;
			String selBig = request.getParameter("selBig");
			String selMiddle = request.getParameter("selMiddle");
			String selSmall = request.getParameter("selSmall");
			String Big_subject = request.getParameter("Big_subject");
			String Middle_subject = request.getParameter("Middle_subject");
			String Small_subject = request.getParameter("Small_subject");
			String support_name = request.getParameter("support_name");
			String support_number = request.getParameter("support_number");
			String legalperson_name = request.getParameter("legalperson_name");
			String support_phone = request.getParameter("support_phone");
			String support_type = request.getParameter("support_type");
			String[] user_units = request.getParameterValues("user_unit");
			//将共建单位添加导数据库
			 for (int i = 0; i < user_units.length; i++) {
				user_unit user_unit = new user_unit(user_Email, user_units[i]);
				 userDao.add_user_unit(user_unit);
			} 
			String director_name = request.getParameter("director_name");
			String director_sex = request.getParameter("director_sex");
			String director_birthday = request.getParameter("director_birthday");
			String job_title = request.getParameter("job_title");
			String director_professional = request.getParameter("director_professional");
			String education_background = request.getParameter("education_background");
			String degree = request.getParameter("degree");
			String office_phone = request.getParameter("office_phone");
			String director_phone = request.getParameter("director_phone");
			String director_Email = request.getParameter("director_Email");
			String platform_webname = request.getParameter("platform_webname");
			String platform_weburl = request.getParameter("platform_weburl");
			String contactAddress = request.getParameter("contactAddress");
			String platform_postcode = request.getParameter("platform_postcode");
			//将依托单位添加导数据库
			support support = new support(support_number, support_name, legalperson_name, support_phone,
					support_type, user_Email);
			userDao.add_support(support); 
			//将平台主任添加导数据库
			director director = new director(director_name, director_sex, director_birthday, job_title,
					director_professional, education_background, degree, office_phone, director_phone,
					director_Email, user_Email);
			userDao.add_director(director);
			//将平台信息修改到数据库
			platform platform = new platform(platform_level, platform_texture, Big_subject,Middle_subject,Small_subject, platform_address,
					platform_postcode,selBig,selMiddle,selSmall, contactAddress, platform_webname, platform_weburl,
					user_Email);
			 userDao.update_platform(platform); 
	%>
	<<jsp:forward page="chenggong.jsp"></jsp:forward>	
	<%
		}
	%>
</body>
</html>