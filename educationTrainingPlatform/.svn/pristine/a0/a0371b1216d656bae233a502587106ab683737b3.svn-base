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
    </style>
</head>
<body>
<div id="teacherModify">
	<div class="left" >
	
		<div class="data-item">
			<span class="name">講師類別<font color="red">*</font>：</span>
			<select class="form-control" id="teacherType" onchange="teacherChange()">
				<c:choose>
				  <c:when test="${requestScope.teacher.type == '1'}">
						 <option value="1" selected>內部講師</option>
				         <option value="2" >外部講師</option>		
				 </c:when>
				  <c:otherwise>
				       <option value="1" >內部講師</option>
				       <option value="2" selected>外部講師</option>
				 </c:otherwise>
				</c:choose>
			</select>
			
			
		</div>
		<div class="data-item">
			<span class="name" id="workNumberSpan">工號<font color="red">*</font>：</span>
			<input type="text" class="form-control" id="UserNo" value="${requestScope.teacher.jobnum }"/>
		</div>
		<div class="data-item">
			<span class="name">姓名<font color="red">*</font>：</span>
			<input type="text" class="form-control" id="UserName" value="${requestScope.teacher.teachername }"/>
		</div>
		<div class="data-item">
			<span class="name">電話<font color="red">*</font>：</span>
			<input type="text" class="form-control" id="UserPhone" value="${requestScope.teacher.phone }"/>
		</div>
		<div class="data-item">
			<span class="name">電子郵件<font color="red">*</font>：</span>
			<input type="text" class="form-control" id="UserEmail" value="${requestScope.teacher.email }"/>
		</div>
		<div class="data-item">
			<span class="name">現職：</span>
			<input type="text" class="form-control" id="UserJob" value="${requestScope.teacher.job }"/>
		</div>
	
		<div class="data-item">
			<span class="name">經歷：</span>
			<textarea class="form-control" rows="6" cols="70" maxlength="420" id="UserResume" value="${requestScope.teacher.resume }"></textarea>
		</div>
		<div class="data-item">
			<span class="name">最高學歷：</span>
			<input type="text" class="form-control" id="UserhighEducation" value="${requestScope.teacher.higheducation }"/>
		</div>
		<div class="data-item">
			<span class="name">次高學歷：</span>
			<input type="text" class="form-control" id="Usereducation" value="${requestScope.teacher.education }"/>
		</div>
		<div class="data-item">
			<span class="name">專業領域：</span>
			<textarea class="form-control" rows="6" cols="70" maxlength="420" id="Userdomain" value="${requestScope.teacher.domain }"></textarea>
		</div>
		<div class="data-item">
			<span class="name">授課實績：</span>
			<textarea class="form-control" rows="6" cols="70" maxlength="420" id="teachPerformance" value="${requestScope.teacher.teachperformance }"></textarea>
		</div><div class="data-item">
			<span class="name">備註：</span>
			<textarea class="form-control" rows="6" cols="70" maxlength="420" id="UserRemark" value="${requestScope.teacher.remark }"></textarea>
		</div>
		<div class="data-item">
			<input  class="form-control" id="UsercreateUser" value="${requestScope.teacher.createuser }" type="hidden"/>
			<input  class="form-control" id="UsercreateDate" value="${requestScope.teacher.createdate }" type="hidden"/>
			<input  class="form-control" id="QTeacherid" value="${requestScope.teacher.teacherid }" type="hidden"/>
		</div>
	</div>
	<div class="right">
		<div>
			<img alt="講師照片" src="${path }/images/test.jpg" value="${requestScope.teacher.photourl }"><br>
			格式：JPG &lt;500KB
		</div>
	</div>
	</div>
	<script type="text/javascript">
		function teacherChange(){
			if($("#teacherType").val() == "1"){
				$("#workNumberSpan").html("工號<font color='red'>*</font>：");
			}else{
				$("#workNumberSpan").html("工號：");
			}
		}
		
	</script>
</body>
</html>