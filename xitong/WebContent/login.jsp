<!-- login_input.jsp -->
<%@page import="dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String E_mail=request.getParameter("E_mail");
String password=request.getParameter("password");
if(E_mail.equals("wangli@qq.com")&&password.equals("wangli")){
	%>
	 <jsp:forward page="requireForm_shu.jsp"></jsp:forward>	
	<%	
}
UserDaoImpl userDao=new UserDaoImpl();
String correct_password=userDao.load_password(E_mail);
if(correct_password.equals(" ")){
	session.setAttribute("error", "此邮箱没有注册");
	%>
	 <jsp:forward page="login_input.jsp"></jsp:forward>	
	<%	
}
else if(correct_password.equals(password))
{
	 session.setAttribute("user_Email",E_mail);
%>
	<jsp:forward page="basicForm_input.jsp"></jsp:forward>	
	<% 
}
else{
session.setAttribute("error", "密码错误");
%>
 <<jsp:forward page="login_input.jsp"></jsp:forward>	
<%
}
%>
</body>
</html>