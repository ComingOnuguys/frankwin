
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.min.js"></script>
</head>
<body>
	<div>
		id：<input type="text" id="id" value="123456"><br>
		menuName：<input type="text" id="menuName" value="李白"><br>
		<input type="button" id="abc" value="test">
	</div>

	<script type="text/javascript">
		window.onload = function() {
			$("#abc").click(function() {
				var menu = {
					"id" : $("#id").val(),
					"menuName" : $("#menuName").val()
				};
				var jsonStr = JSON.stringify(menu);
				$.ajax({
					type : "POST",
					async : false,
					url : "http://localhost:8080/ssm/getList",
					dataType : "json",
					contentType : "application/json;charset=UTF-8",
					data : jsonStr,
					success : function(data) {
						alert("123");
					}
				});
			});
		}
	</script>
</body>
</html>