
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.min.js"></script>
</head>
<body>

	<h2>订单查询111</h2>
	<div>
		订单日期：<input type="text" id="id" value="123456"><br>
		 订单号：<input type="text" id="menuName" value="李白"><br> 
		 <input type="button" id="abc" value="test">
	</div>
	
	<!-- -->
<!-- 	<h2>按日期范围查询订单，测试redis缓存</h2>
	<form action="http://localhost:8080/ssm/order/listOrders" method="post">
		开始日期：<input type="text" name="startDate"><br>
		 结束日期：<input type="text" name="endDate"><br> 
		 <input type="submit" value="提交">
	</form> -->
	
	 <script type="text/javascript">
	 	window.onload = function(){
	 		$("#abc").click(function() {
	 			var menu = {
	 					"id" : "111",
	 					"menuName" : "abxc"
	 				};
		 		
		 		var json = JSON.stringify(menu);
		 		
		 		$.ajax({
	                  type: "POST",
	                  async: false,
	                  url:"http://localhost:8080/ssm" + "/getList",
	                  dataType : "json",
	                  contentType: "application/json;charset=UTF-8",
	                  data:json,
	                  success:function(data){
	                     
	                      alert("123");
	                       
	                  }
	           });
	 		});
	 	}
	 	
	 	

	 </script>
</body>
</html>