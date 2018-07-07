/**
 * 共建单位
 */
var i=1;
	$(document).ready(function() {

		$("#btn2").click(function() {
			$("ol").append('<li><input type="text" name="user_unit"+i+"" name="user_unit"+i+"" size="70"/></li>');
			i++;
			//alert(i);
		});
	});