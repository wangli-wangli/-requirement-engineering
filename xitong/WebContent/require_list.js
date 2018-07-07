/**
 * 添加查询条件
 */
var i=1;
	/*$(document).ready(function() {
		alert("点击这儿");
		 $("#btu1").click(function(){
			    $("ul").append("<li>Appended item</li>");
			  });

		$("#btu1").click(function() {
			
			$("ul").append('<li><div id='+(i+1)+'>'+
					'( <select name="type">'+
					'<option value="填表人姓名">填表人姓名</option>'+
					'<option value="平台名称">平台名称</option>'+
					'<option value="批准文号">批准文号</option>'+
					'<option value="填表人姓名">依托单位名称</option>'+
					'<option value="平台主任姓名">平台主任姓名</option>'+
				'</select>'+
				 '<input type="text" name="content1" size="20" />'+
				  '<select name="way">'+
					'<option value="and">并含</option>'+
					'<option value="or">或含</option>'+
					'<option value="not">不含</option>'+
				'</select>'+
				 '<input type="text" name="content2" size="20" />'+
				 ' <select name="content3">'+
					'<option value="in">精准</option>'+
					'<option value="like">模糊</option>'+
				'</select>'+
				')'+
					'</div><li/>');
			//alert(i);

			});
		$("#-").click(function(){
			    $("#div"+i).remove();
			    i--;
			  });

	});*/
$(document).ready(function(){
	  $("#btn1").click(function(){
	    $("p").append(" <b>Appended text</b>.");
	  });

	  $("#btn2").click(function(){
	    $("ul").append("<li>Appended item</li>");
	  });
	});
