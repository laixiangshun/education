<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<style type="text/css">
	#courseSignUp,
	#courseSignUp .item{
		overflow: hidden;
	}
	#courseSignUp .item{
		margin-bottom: 10px;
	}
	#courseSignUp .name{
		display: inline-block;
		width: 100px;
		text-align: right;
	}
	#courseSignUp .item .form-control{
		display: inline-block;
		width: 430px;
	}
</style>
<div id="courseSignUp">
	<div class="item">
		<span class="name">課程名稱：</span>
		<select id="courseName" class="form-control" onchange="courseNameChange()">
			<option value="no">--請選擇--</option>
			<option>鴻海教育訓練</option>
			<option>勞工安全訓練課程</option>
		</select>
	</div>
	<div class="item" style="display: none;" id="courseDate-item">
		<span class="name">課程日期時間：</span>
		<select id="courseDate" class="form-control" onchange="courseDateChange()">
			<option value="no">--請選擇--</option>
			<option>時間段1</option>
			<option>時間段2</option>
		</select>
	</div>
	<div class="item">
		<span class="name">上課教室：</span>
		<input class="form-control" type="text" readonly="readonly"/>
	</div>
	<div class="item">
		<span class="name">課程時數：</span>
		<input class="form-control" type="text" readonly="readonly"/>
	</div>
	<div class="item">
		<span class="name">次集團：</span>
		<select class="form-control">
			<option>A次集團</option>
			<option>B次集團</option>
		</select>
	</div>
	<div class="item">
		<span class="name">事業群：</span>
		<select class="form-control">
			<option>CCPBG</option>
			<option>CCPGB</option>
		</select>
	</div>
	<div class="item">
		<span class="name">工號：</span>
		<input id="userID" class="form-control" type="text"/>
	</div>
	<div class="item">
		<span class="name">姓名：</span>
		<input class="form-control" type="text"/>
	</div>
	<div class="item">
		<span class="name">分機號碼：</span>
		<input class="form-control" type="text"/>
	</div>
	<div class="item">
		<span class="name">費用代碼：</span>
		<input class="form-control" type="text"/>
	</div>
	<div class="item">
		<span class="name">email：</span>
		<input class="form-control" type="text"/>
	</div>
	<div style="text-align: center; color: red" id="warningMessage">
		<!-- 你已報名***********，請確認是否重複報名 -->
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#courseListModal .modal-dialog").removeAttr("style");		
	});
	function courseNameChange(){
		var value = $("#courseName").val();
		if("no" != value){
			$("#courseDate-item").css("display", "block");
		}
	}
	function courseDateChange(){
		/* 根據選擇的時間段帶出上課教室、課程時數 */
	}
</script>