<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<style type="text/css">
	#excelInput>div{margin-bottom: 20px;}
	#excelInput .name{
		display: inline-block;
		width:80px;
		text-align: right;
	}
	#excelInput .name-two{
		display: inline-block;
		width:260px;
		text-align: left;
	}
	#excelInput input{
		display: inline-block;
	}
</style>
<div id="excelInput">
	<div>
		<span class="name">1.課程：</span>&emsp;
		<span class="name-two"><input type="file"/></span>
	</div>
	<div>
		<span class="name">範本下載：</span>&emsp;		
		<span class="name-two"><a href="#">課程模板</a>&emsp;點擊下載課程資料Excal模板</span>
	</div>
</div>