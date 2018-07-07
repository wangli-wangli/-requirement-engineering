<%@page import="java.util.List"%>
<%@page import="dao.ContentDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">/* 树状图样式 */
* {
	margin: 0;
	padding: 0
}

body {
	font-size: 12px;
	font-family: "宋体", "微软雅黑";
}

ul, li {
	list-style: none;
}

a:link, a:visited {
	 text-decoration: none; 
	color: #fff;
}
a:hover {
	color: yellow;
}

a:active {
	color: red;
}

.list {
	width: 210px;
	border-bottom: solid 1px #316a91;
	margin: 40px auto 0 auto;
}

.list ul li {
	background-color: #467ca2;
	border: solid 1px #316a91;
	border-bottom: 0;
}

.list ul li a {
	padding-left: 10px;
	color: #fff;
	font-size: 12px;
	display: block;
	font-weight: bold;
	height: 36px;
	line-height: 36px;
	position: relative;
}

 .list ul li .inactive {
	background: url(image/off.png) no-repeat 184px center;
}

.list ul li .inactives {
	background: url(image/on.png) no-repeat 184px center;
} 

.list ul li ul {
	display: none;
}

.list ul li ul li {
	border-left: 0;
	border-right: 0;
	background-color: #6196bb;
	border-color: #467ca2;
}

.list ul li ul li ul {
	display: none;
}

.list ul li ul li a {
	padding-left: 20px;
}

.list ul li ul li ul li {
	background-color: #d6e6f1;
	border-color: #6196bb;
}

.last {
	background-color: #d6e6f1;
	border-color: #6196bb;
}

.list ul li ul li ul li a {
	color: #316a91;
	padding-left: 30px;
}

</style>
<style type="text/css">
/*设置超链接样式*/
table {
	border: 3px solid;
	border-color: transparent;
}

th, td {
	background: white;
}

a {
	color: #5086a5;
	text-decoration: none; /* 去掉链接中的下划线 */
	font-size: 12px;
}

a:hover /* 鼠标指针移动到链接上 */ {
	color: #5086a5;
	text-decoration: underline;
	font-size: 12px;
}

a:visited /* 已被访问的链接 */ {
	color: #5086a5;
	font-size: 12px;
}
/*tab头的样式*/
#tabsHead /* id 选择器 */ {
	padding-left: 0px;
	height: 26px;
	background-color: #e8f7fc;
	font-size: 1em;
	margin: 1px 0px 0px;
	color: #5086a5;
	line-height: 26px;
}
/*已选tab头（超链接）的样式*/
.curtab {
	padding-top: 0px;
	padding-right: 10px;
	padding-bottom: 0px;
	padding-left: 10px;
	border-right: #b2c9d3 1px solid; /*  把右边框的所有属性设置到一个声明中。*/
	font-weight: bold;
	float: left;
	cursor: pointer; /* 点光标： */
	background: #ffffff;
}
/*未选tab头（超链接）的样式*/
.tabs {
	border-right: #c1d8e0 1px solid;
	padding-top: 0px;
	padding-right: 10px;
	padding-bottom: 0px;
	padding-left: 10px;
	font-weight: normal;
	float: left;
	cursor: pointer;
}

p {
	font-size: 12pt;
	text-indent: 2em; /* 文本缩进 */
}
/*整个tab层居中，宽度为600px*/
#tabDiv {
	width: 600px;
	margin: 1em auto;
	padding-bottom: 10px;
	/* border-right: #b2c9d3 1px solid;
	border-top: #b2c9d3 1px solid;
	border-left: #b2c9d3 1px solid;
	border-bottom: #b2c9d3 1px solid; */
	background: #ffffff;
}
</style>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<script type="text/javascript">/* 表头超链接 */
	//显示tab（tabHeadId：tab头中当前的超链接；tabContentId要显示的层ID）
	function showTab(tabHeadId, tabContentId) {
		//tab层
		var tabDiv = document.getElementById("tabDiv");
		//将tab层中所有的内容层设为不可见
		//遍历tab层下的所有子节点
		var taContents = tabDiv.childNodes;
		for (i = 0; i < taContents.length; i++) {
			//将所有内容层都设为不可见
			if (taContents[i].id != null && taContents[i].id != 'tabsHead') {
				taContents[i].style.display = 'none';
			}
		}
		//将要显示的层设为可见
		document.getElementById(tabContentId).style.display = 'block';
		//遍历tab头中所有的超链接
		var tabHeads = document.getElementById('tabsHead')
				.getElementsByTagName('a');
		for (i = 0; i < tabHeads.length; i++) {
			//将超链接的样式设为未选的tab头样式
			tabHeads[i].className = 'tabs';
		}
		//将当前超链接的样式设为已选tab头样式
		document.getElementById(tabHeadId).className = 'curtab';
		document.getElementById(tabHeadId).blur();
	}
</script>
<script type="text/javascript">
	/* 树状图 */
	$(document)
			.ready(
					function() {
						$('.inactive')
								.click(
										function() {
											if ($(this).siblings('ul').css(
													'display') == 'none') {
												$(this).parent('li').siblings(
														'li').removeClass(
														'inactives');
												$(this).addClass('inactives');
												$(this).siblings('ul')
														.slideDown(100)
														.children('li');
												if ($(this).parents('li')
														.siblings('li')
														.children('ul').css(
																'display') == 'block') {
													$(this)
															.parents('li')
															.siblings('li')
															.children('ul')
															.parent('li')
															.children('a')
															.removeClass(
																	'inactives');
													$(this).parents('li')
															.siblings('li')
															.children('ul')
															.slideUp(100);

												}
											} else {
												//控制自身变成+号
												$(this)
														.removeClass(
																'inactives');
												//控制自身菜单下子菜单隐藏
												$(this).siblings('ul').slideUp(
														100);
												//控制自身子菜单变成+号
												$(this).siblings('ul')
														.children('li')
														.children('ul').parent(
																'li').children(
																'a').addClass(
																'inactives');
												//控制自身菜单下子菜单隐藏
												$(this).siblings('ul')
														.children('li')
														.children('ul')
														.slideUp(100);

												//控制同级菜单只保持一个是展开的（-号显示）
												$(this).siblings('ul')
														.children('li')
														.children('a')
														.removeClass(
																'inactives');
											}
										})
					});
</script>
<script type="text/javascript">
	function fuzhi()//向framework_1赋值
	{
		var a = document.getElementById('t1');

		alert("a:" + a);
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>树形菜单</title>
</head>
<body>
	<div id="tabDiv" style="width: 1000px" >
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
						ContentDaoImpl contentDao = new ContentDaoImpl();

						List<String> big_occupations = contentDao.load_occupation("big_occupation");
						for (String big_occupation : big_occupations) {
					%>
					<li><a href="#" class="inactive"><%=big_occupation%></a>
						<ul style="display: none">
							<%
								List<String> middle_occupations = contentDao.load_occupation2("big_occupation", "middle_occupation",
											big_occupation);

									for (int i = 0; i < middle_occupations.size(); i++) {
										String middle_occupation = middle_occupations.get(i);
							%>

							<li><a href="#" class="inactive active"><%=middle_occupation%></a>
								<ul>
									<%
										List<String> small_occupations = contentDao.load_occupation2("middle_occupation",
														"small_occupation", middle_occupation);
												for (String small_occupation : small_occupations) {
									%>
									<li><a
										href="requireForm_shu.jsp?occupation=<%=small_occupation%>"
										target="rightFrame"><%=small_occupation%></a></li>

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
						<li><a href="#" class="inactive"><%=big_subject%></a>
							<ul style="display: none">
								<%
									List<String> middle_subjects = contentDao.load_occupation2("big_subject", "middle_subject",
												big_subject);

										for (int i = 0; i < middle_subjects.size(); i++) {
											String middle_subject = middle_subjects.get(i);
								%>

								<li><a href="#" class="inactive active"><%=middle_subject%></a>
									<ul>
										<%
											List<String> small_subjects = contentDao.load_occupation2("middle_subject", "small_subject",
															middle_subject);
													for (String small_subject : small_subjects) {
										%>
										<li><a
											href="requireForm_shu.jsp?occupation=<%=small_subject%>"
											target="rightFrame"><%=small_subject%></a></li>

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


</body>
</html>