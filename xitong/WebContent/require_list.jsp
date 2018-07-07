<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style type="text/css">
#shi2{
line-height:200%;
}
ul li {
	list-style: none;
}
</style>
<script src="jquery-1.11.1.min.js">
</script>
<script>
var i=1;
$(document).ready(function(){
	form1.geshu.value=i;

$("#remove").click(function(){
	if(i>0)
        i--;
    $("#div"+i).empty();
    
    form1.geshu.value=i;
  });

  $("#add").click(function(){
	 
    $("ul").append('<div id=div'+i+'><li>'+
    		' <select name="way1['+i+']">'+
			'<option value="and" checked>并且</option>'+
			'<option value="or">或者</option>'+
			'<option value="not">不含</option>'+
			
		'</select>&nbsp;'+
    		'( <select name="type['+i+']">'+
			'<option value="user_name" checked>填表人姓名</option>'+
			'<option value="platfrom_name">平台名称</option>'+
			'<option value="authorize_number">批准文号</option>'+
			'<option value="support_name">依托单位名称</option>'+
			'<option value="director_name">平台主任姓名</option>'+
			'<option value="build_unit">共建单位</option>'+
		'</select>&nbsp;'+
		 '<input type="text" name="content1['+i+']" size="20" />&nbsp;'+
		  '<select name="way2['+i+']">'+
			'<option value="and" checked>并含</option>'+
			'<option value="or">或含</option>'+
			'<option value="not">不含</option>'+
		'</select>&nbsp;'+
		 '<input type="text" name="content2['+i+']" size="20" />&nbsp;'+
		 ' <select name="content3['+i+']">'+
			'<option value="in" checked>精准</option>'+
			'<option value="like">模糊</option>'+
		'</select>&nbsp;'+
		')'+
    		'</li></div>'); 
    i++;
    form1.geshu.value=i;
  });
 
	 
});
</script>
</head>
<body bgcolor="#EEEEFF">
<div id="shi2">
<form  name="form1" action="requireForm_shu.jsp" method="post">

	输入查询条件
	<br />
	<ul>
	<li>
	    <input type="button" id="add" value="+" />
	   <input type="button" id="remove" value="-" />
		( <select name="type[0]">
			<option value="user_name" checked>填表人姓名</option>
			<option value="platfrom_name">平台名称</option>
			<option value="authorize_number">批准文号</option>
			<option value="support_name">依托单位名称</option>
			<option value="director_name">平台主任姓名</option>
			<option value="build_unit">共建单位</option>
		</select>
		 <input type="text" name="content1[0]" size="20" />
		  <select name="way2[0]">
			<option value="and" checked>并含</option>
			<option value="or">或含</option>
			<option value="not">不含</option>
		</select>
		 <input type="text" name="content2[0]" size="20" />
		  <select name="content3[0]">
			<option value="in" checked>精准</option>
			<option value="like">模糊</option>
		</select>
		 )
	</li>
	</ul> 
	<input type="hidden" name="geshu"/>
	<input type="submit" id="submit" value="查询">
</form>
</div>
</body>

</html>
