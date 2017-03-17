<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp"%>

<style type="text/css">
#courseGroupSignUpImportExcel>div {
	margin-bottom: 20px;
}

#courseGroupSignUpImportExcel .name {
	display: inline-block;
	width: 80px;
	text-align: right;
}

#courseGroupSignUpImportExcel .name-two {
	display: inline-block;
	width: 260px;
	text-align: left;
}

#courseGroupSignUpImportExcel input {
	display: inline-block;
}
</style>
<div id="courseGroupSignUpImportExcel">
	<h3 style="color:#337AB7; text-align: left;">匯入</h3>
	<div>
		<span class="name">模板下載：</span>&emsp; <span class="name-two"><a
			href="#">學員資料模板</a></span>
	</div>
	<div>
		<span class="name">學員：</span>&emsp; <span class="name-two"><input
			type="file" /></span>
	</div>
	<div style="text-align: center;">
		<button class="btn btn-xs btn-primary">導入</button>&emsp;
		<button class="btn btn-xs btn-primary">導出錯誤信息</button>&emsp;
		<button class="btn btn-xs" id="popClose">離開</button>&emsp;
	</div>
</div>
<script type="text/javascript">
	$("#popClose").click( function(){
		//alert("close");
		$("#shade").css("display", "none");		
		$("#createPop").animate({width: "0%", height: "0%"}, 300);
		$("#createPop-body").html("");
	});
</script>