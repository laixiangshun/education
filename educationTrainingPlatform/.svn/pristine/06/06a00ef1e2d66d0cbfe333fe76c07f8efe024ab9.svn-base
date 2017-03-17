<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>teacherCreate</title>
    <style type="text/css">
    	#teacherCreate .left,
    	#teacherCreate .right{
    		float:left;
    	}
    	#teacherCreate .left{
    		width:410px;
    		
    	}
    	#teacherCreate .right{width:150px;}
    	#teacherCreate .data-item{
    		text-align: left;
    		margin-bottom: 10px;
    		overflow: hidden;
    	}
    	#teacherCreate .name{
    		display: block;
    		width:150px;
    		text-align: right;
    		float: left;
    		
    	}
    	#teacherCreate .form-control{
    		display: block;
    		width:250px;
    		float: left;
    	}
    	#teacherCreate .left input.course-date{
    		width: 230px;
    		margin-bottom: 5px;
    	}
    	#teacherCreate img{
    		max-width: 100px;
    		max-height: 100px;
    	}

.upload-buttons{
float: right;
height: 30px;
width:61px;
position:relative;
margin-right: 28%;
}
.upload-word{
text-align:center;
padding-top:8px;
}
.inputstyle{
    width:60px;
    font-size:10px;
    height: 30px;
    outline: medium none;
    position: absolute;
    filter:alpha(opacity=0);
    -webkit-opacity:0;
    -moz-opacity:0;
    opacity:0; 
    left:0px;
    top: 0px;
}

    </style>
</head>
<body>
<div id="teacherCreate">
	<div class="left" >
		<div class="data-item">
			<span class="name">講師類別<font color="red">*</font>：</span>
			<select class="form-control" id="teacherType" onchange="teacherChange()">
				<option value="1">內部講師</option>
				<option value="2">外部講師</option>
			</select>
		</div>
		<div class="data-item">
			<span class="name" id="workNumberSpan">工號<font color="red">*</font>：</span>
			<input type="text" class="form-control" id="UserNo"/>
		</div>
		<div class="data-item">
			<span class="name">姓名<font color="red">*</font>：</span>
			<input type="text" class="form-control" id="UserName"/>
		</div>
		<div class="data-item">
			<span class="name">電話<font color="red">*</font>：</span>
			<input type="text" class="form-control" id="UserPhone"/>
		</div>
		<div class="data-item">
			<span class="name">電子郵件<font color="red">*</font>：</span>
			<input type="text" class="form-control" id="UserEmail"/>
		</div>
		<div class="data-item">
			<span class="name">現職：</span>
			<input type="text" class="form-control" id="UserJob"/>
		</div>
	
		<div class="data-item">
			<span class="name">經歷：</span>
			<textarea class="form-control" rows="6" cols="70" maxlength="420" id="UserResume"></textarea>
		</div>
		<div class="data-item">
			<span class="name">最高學歷：</span>
			<input type="text" class="form-control" id="UserhighEducation"/>
		</div>
		<div class="data-item">
			<span class="name">次高學歷：</span>
			<input type="text" class="form-control" id="Usereducation"/>
		</div>
		<div class="data-item">
			<span class="name">專業領域：</span>
			<textarea class="form-control" rows="6" cols="70" maxlength="420" id="Userdomain"></textarea>
		</div>
		<div class="data-item">
			<span class="name">授課實績：</span>
			<textarea class="form-control" rows="6" cols="70" maxlength="420" id="teachPerformance"></textarea>
		</div><div class="data-item">
			<span class="name">備註：</span>
			<textarea class="form-control" rows="6" cols="70" maxlength="420" id="UserRemark"></textarea>
		</div>
	</div>
	<div class="right">
		<div>
			<img alt="講師照片" src="${path }/images/test.jpg"><br>
			格式：JPG &lt;500KB
		</div>
		<div class=" upload-buttons">
			<button class="upload-word btn btn-primary">上传</button>
			<input id="upload" name="upload"  class="inputstyle" type="file">
		</div>
	</div>
	</div>
	<script type="text/javascript">
		function teacherChange(){
			if($("#teacherType").val() == "inside"){
				$("#workNumberSpan").html("工號<font color='red'>*</font>：");
			}else{
				$("#workNumberSpan").html("工號：");
			}
		}
		
	</script>
</body>
</html>