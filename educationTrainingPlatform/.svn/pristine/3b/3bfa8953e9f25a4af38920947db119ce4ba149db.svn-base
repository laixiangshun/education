<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="included/path_lib.jsp"%>
<%@ include file="included/taglib_lib.jsp"%>
<%@ include file="included/jquery_lib.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>usermodify</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
		$(function() {
			$("#modifybtn").click(function() {
				var userid=$("#userid").val();
				var name=$("#name").val();
				var sex=$("input[name='sex']:checked").val();
				var age=$("#age").val();
				$.post(
					"${path}/modifyuser.action",{
						"userid":userid,
						"name":name,
						"sex":sex,
						"age":age
					},function(data,status){
						if(status=="success"){
							alert(data);
							window.location.reload();
						}
					}
				);
			});
		});
	</script>
  </head>
  
  <body>
    	<div class="useritem">
    		姓名：<input id="name" value="${requestScope.user.userName }">
	    	年龄：<input id="age" value="${requestScope.user.age }">
	    	性别：
	    	<c:if test="${requestScope.user.sex==1 }">
				<input type="radio" name="sex" value="1" checked="checked">男
	    		<input type="radio" name="sex" value="0">女
			</c:if>
	    	<c:if test="${requestScope.user.sex==0 }">
				<input type="radio" name="sex" value="1">男
	    		<input type="radio" name="sex" value="0" checked="checked">女
			</c:if>
			<input type="hidden" id="userid" value="${requestScope.user.id }">
    	</div>
    	<button id="modifybtn">确定修改</button>
  </body>
</html>
