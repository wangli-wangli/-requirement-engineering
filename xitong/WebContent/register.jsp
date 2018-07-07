
<!-- rejister.jsp -->
<%@page import="model.authorize"%>
<%@page import="model.platform"%>
<%@page import="model.User"%>
<%@page import="dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body>
<%
String user_name=request.getParameter("user_name");
String user_department=request.getParameter("user_partment");
String phone=request.getParameter("phone");
String mobile_phone=request.getParameter("mobile_phone");
String E_mail=request.getParameter("E_mail");
String password=request.getParameter("password");
String platform_name=request.getParameter("platform_name");
String platform_number=request.getParameter("platform_number");
String authorize_number=request.getParameter("authorize_number");
String  authorize_date=request.getParameter("authorize_date");
System.out.println("批准日期："+authorize_date);
String technology_field=request.getParameter("technology_field");

UserDaoImpl userDao=new UserDaoImpl();
//查询是否注册过
int count=userDao.load_count(E_mail);
if(count>0){
	session.setAttribute("error_reg", "此邮箱已被注册过");
	%>
	 <<jsp:forward page="register_input.jsp"></jsp:forward>	
	<%
	}
	
session.setAttribute("user_Email",E_mail);
//存储用户信息
User user=new User(user_name,user_department,phone,mobile_phone,E_mail,password);
userDao.add_user(user);//t_user表存储情况
//存储批准信息
authorize authorize=new authorize();
authorize.setAuthorize_number(authorize_number);
authorize.setAuthorize_date(authorize_date);
authorize.setUser_E_mail(E_mail);
userDao.add_authorize(authorize);
//存储平台信息
platform platform=new platform(platform_name,platform_number,technology_field,E_mail);

userDao.add_platofrm(platform);
%>
<<jsp:forward page="basicForm_input.jsp"></jsp:forward>	
</body>
</html>