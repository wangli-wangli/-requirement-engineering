<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

/*  a{text-decoration:none;}  */
.nav ul li {
	float: left;
	list-style: none;
	display: inline-block;
	padding: 0px 57px;
	   
}
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
			<li><a href="requireForm_build.jsp" target="_blank">共建单位信息</a></li>
			<li><a href="requireForm_user.jsp" target="_blank">填表人信息</a></li>
			<li><a href="requireForm_platform.jsp" target="_blank">平台信息</a></li>
			<li><a href="requireForm_authorize.jsp" target="_blank">批准信息</a></li>
			<li><a href="requireForm_support.jsp" target="_blank">依托单位信息</a></li>
			<li><a href="requireForm_director.jsp" target="_blank">平台主任信息</a></li>
		</ul>
	</div>

</body>
</html>