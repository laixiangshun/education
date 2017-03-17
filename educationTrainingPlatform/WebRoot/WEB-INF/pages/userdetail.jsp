<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="included/path_lib.jsp"%>
<%@ include file="included/taglib_lib.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>userdetail</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <div class="useritem">
    		姓名：${requestScope.user.userName }
	    	年龄：${requestScope.user.age }
	    	性别：
	    	<c:if test="${requestScope.user.sex==1 }">男</c:if>
	    	<c:if test="${requestScope.user.sex==0 }">女</c:if>
    	</div>
  </body>
</html>
