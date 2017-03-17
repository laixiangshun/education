<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>

<link href="${path }/js/froala-editor/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${path }/js/froala-editor/css/froala_editor.min.css" rel="stylesheet" type="text/css">
<script src="${path }/js/froala-editor/js/froala_editor.min.js"></script>
<script src="${path }/js/froala-editor/js/lists.min.js"></script>
<script src="${path }/js/froala-editor/js/colors.min.js"></script>
<script src="${path }/js/froala-editor/js/font_size.min.js"></script>
<script src="${path }/js/froala-editor/js/zh_tw.js"></script>

<style type="text/css">
	#courseDiscussEdit,
	#courseDiscussEdit .item{
		overflow: hidden;
	}
	#courseDiscussEdit .item{
		margin-bottom: 10px;
	}
	#courseDiscussEdit .name{
		display: block;
		float: left;
		text-align: right;
		width:100px;
	}
	#courseDiscussEdit input.form-control{
		float: left;
		width: 150px;
	}
	#courseDiscussEdit .item>div{
		float: left;
	}
	
	#courseDiscussEdit #mainContent{
		width: 468px;
	}
	#courseDiscussEdit #edit{
		max-width: 468px;
	}
</style>

<div id="courseDiscussEdit">
	<div class="item">
		<span class="name">課程名稱<font color="red">*</font>：</span>
		<input class="form-control" type="text" value="鴻海教育訓練" readonly="readonly"/>&emsp;&emsp;
		<span class="name">工號<font color="red">*</font>：</span>
		<input class="form-control" type="text" value="21597" readonly="readonly"/>
	</div>
	<div class="item">
		<span class="name">事業群<font color="red">*</font>：</span>
		<input class="form-control" type="text" value="CCPGB" readonly="readonly"/>&emsp;&emsp;
		<span class="name">姓名<font color="red">*</font>：</span>
		<input class="form-control" type="text" value="張偉信" readonly="readonly"/>
	</div>
	<div class="item">
		<span class="name">主旨<font color="red">*</font>：</span>
		<input class="form-control" type="text" id="mainContent"/>
	</div>
	<div class="item">
		<span class="name">內容<font color="red">*</font>：</span>
		<div id="edit"></div>
	</div>
</div>

<script type="text/javascript">
	$(function(){
        $("#edit").editable({inlineMode: false,minHeight: 400, language: 'zh_tw'})
    });
</script>