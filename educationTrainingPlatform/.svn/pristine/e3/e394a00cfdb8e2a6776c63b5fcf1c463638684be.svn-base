<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="included/bootstrap_lib.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>demo index</title>
    
	<script type="text/javascript">
		$(function() {
			$("#adduserbtn").click(function() {
				var name=$("#userName").val();
				var sex=$("input[name='sex']:checked").val();
				var age=$("#age").val();
				$.post(
					"${path}/adduser.action",{
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
			$(".deleteuserbtn").click(function() {
				/* var userid=$(this).siblings(".userid").val();
				$.post(
					"${path}/deleteuser.action",{
						"userid":userid
					},function(data,status){
						if(status=="success"){
							alert(data);
							window.location.reload();
						}
					}
				); */
				var userids=$("input[name='check']:checked").val();
				if(userids.length>0)
				{
					$.post("${path}/deleteAllUser.action",{"userids":userids},function(data){
						alert(data);
						window.location.reload();
					});
				}
				
			});
			$(".userdetailbtn").click(function() {
				var  userid=$(this).siblings(".userid").val();
				/* 三种跳转方式 */
				/*第一种，ajax方式，地址栏不变，可局部刷新  */
				$.get(
					"${path}/getuserdetail.html",{
						"userid":userid
					},function(data,status){
						if(status=="success"){
							$("body").html(data);
						}
					}
				);
				
				/*第二种，href本页跳转  */
				/* window.location.href="${path}/getuserdetail.html?userid="+userid; */
				
				/*第三种，打开新窗口  */
				/* window.open("${path}/getuserdetail.html?userid="+userid, "_blank"); */
			});
			
			$(".usermodifybtn").click(function() {
				var  userid=$(this).siblings(".userid").val();
				$.get(
					"${path}/modifyuser.html",{
						"userid":userid
					},function(data,status){
						if(status=="success"){
							$("body").html(data);
						}
					}
				);
			});
		});
	</script>
  </head>
   <script type="text/javascript">
	    	if("${requestScope.message}"!=null && "${requestScope.message}"!="")
	    	{
	    		alert("${requestScope.message}");
	    	}
	</script>
  <body>
  	<div>
  		新增用户：
	  	姓名：<input type="text" id="userName">
	  	年龄：<input id="age">
	  	性别：<input type="radio" name="sex" value="1">男 <input type="radio" name="sex" value="0">女
	  	<br><input type="button" id="adduserbtn" value="新增"><br>
  	</div>
  	
  	<table class="table table-bordered table-striped table-condensed">
  		<thead>
  			<th style="text-align:center;width: 70px ">选择</th>
  			<th style="text-align:center;width: 80px ">用户编号</th>
  			<th style="text-align:center;width: 80px ">姓名</th>
  			<th style="text-align:center;width: 50px ">年龄</th>
  			<th style="text-align:center;width: 50px ">性别</th>
  			<th style="text-align:center;width: 300px ">操作</th>
  		</thead>
  		<tbody>
  			<c:forEach items="${requestScope.userList }" var="user">
  				<tr>
  					<td><input type="checkbox" name="check" value="${user.userId}"></td>
  					<td>${user.userId }</td>
  					<td>${user.userName }</td>
  					<td>${user.age }</td>
  					<td>${user.sex }</td>
  					<td>
	  					<button class="userdetailbtn">查看详情</button>
				    	<button class="usermodifybtn">修改</button>
				    	<button class="deleteuserbtn">删除</button>
			    	</td>
  				</tr>
		    </c:forEach>
		    <c:if test="${requestScope.userList==null }">
		    	<tr>
		    		<td colspan="6" align="center"><font size="4" color="red">没有相关记录！</font></td>
		    	</tr>
		    </c:if>
  		</tbody>
  	</table>
    <div>
    	<form action="${path }/fileUpload.action" method="post" enctype="multipart/form-data" name="form1">
    		课程满意度调查问项：
    		<input type="file" name="upload" id="upload">
    		<input type="submit" id="submit" value="导入">
    	</form>
    </div>
	   
  </body>
</html>
