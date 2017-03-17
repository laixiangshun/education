<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>teacherList</title>
    <style type="text/css">
    	#teacherList .modal-body{    	
    		overflow: hidden;
    	}
    	#teacherList td>img{
    		max-width: 100px;
    		max-height: 100px;
    	}
    </style>
</head>
<body>
<div id="teacherList">
    <h3>講師列表</h3>
    <div class="search-div">
        <div class="search-div">
            姓名：
            <input type="text" class="form-control"  id="qName"/>
                    電話：<input type="text" class="form-control" id="qphone"/>
            email：
            <input type="text" class="form-control" id="qemail"/>
                       關鍵字：
            <input type="text" class="form-control" />
            
        </div>
        <div class="search-div">
        	<button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
            <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-refresh"></b>&nbsp;重置</button>
            <button class="btn btn-xs btn-primary" onclick="popTeacherListModal('${path}/background/teacherCreate.html', '新增講師', 'create')">
                <b class="glyphicon glyphicon-plus-sign"></b>&nbsp;新增
            </button>
            <button class="btn btn-xs btn-primary" onclick="popTeacherListModal('${path}/background/teacherModify.html', '修改講師', 'modify')">
                <b class="glyphicon glyphicon-pencil"></b>&nbsp;修改
            </button>
            <button class="btn btn-xs btn-danger" onclick="deleteTeatcherInfo()">
            <b class="glyphicon glyphicon-trash"></b>&nbsp;刪除</button>
        </div>
    </div>
    <div id="teacherListData" >
        <table class="table table-bordered table-striped table-condensed" id="teacherList">
            <thead>
            <tr>
                <th><input type="checkbox" value="all" id="selectAll"/></th>
                <th>個人照片</th>
                <th>姓名</th>
                <th>講師類別</th>
                <th>工號</th>
                <th>最高學歷</th>
                <th>次高學歷</th>
            </tr>
            </thead>
            <tbody >
            <c:if test="${requestScope.teachers !=null }">
                 <c:forEach items="${requestScope.teachers }"  var="teacher">
                     <tr>
                       <td><input type="checkbox" value="${teacher.teacherid }" name="teacherid" id="teacherid"/></td>
                       <td><img alt="講師照片" src="${path }/images/test.jpg"></td>
                       <td>
                           ${teacher.teachername }
                       </td>
                       <td>                       
                            ${teacher.type }
                       </td>
                       <td>
                           ${teacher.jobnum }
                       </td>
                       <td>
                           ${teacher.higheducation }
                       </td>
                       <td>
                            ${teacher.education }
                       </td>
                  </tr>
            </c:forEach>
           </c:if>
        </table>
        <div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="teacherListSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="teacherListSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="teacherListSelectPage(this)">2</a></li>
                <li><a onclick="teacherListSelectPage(this)">3</a></li>
                <li><a onclick="teacherListSelectPage(this)">4</a></li>
                <li><a onclick="teacherListSelectPage(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="teacherListSelectPage(this)">lastPage</a></li>
                <li>
                    <a onclick="teacherListSelectPage(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Modal -->
    <div style="" class="modal fade" id="teacherListModal" tabindex="-1" role="dialog" aria-labelledby="teacherListModalLabel">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="teacherListModalLabel"></h4>
                </div>
                <div  class="modal-body">
                    加載中...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="commit">確定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
</div>
<script type="text/javascript">
        function ClearInput(){
           $("#qName").value="";
           $("#qphone").value="";
           $("#qemail").value="";           
        }
        function queryTeacherInfo(){
             var teachername=$("#qName").val();
             var teacherphone=$("#qphone").val();
             var teacheremail=$("#qemail").val();
              $.get("${path}/background/teacherQuery.html",{
        		     "name": teachername,
        		     "phone": teacherphone,
        		     "email": teacheremail
        	       }, function(data, status) {
				$("#content").html(data);
			});
        }
        function deleteTeatcherInfo(){
           var teacherid=$("input[name='teacherid']:checked");
                      if(teacherid.length<1){
                          alert("请选择要删除的教师信息");
                          return false;
                   }
                   var teacherids=teacherid.val();
                   $.get("${path}/background/teacherdelete.html",{
        		     "teacherids": teacherids
        	       },function(data){
        		      alert("删除成功");
        		     window.location.reload();
        	       });
        }
        function popTeacherListModal(url, title, operation) {
            $("#teacherListModal").modal({backdrop: "static", keyboard: false});
            $("#teacherListModalLabel").html(title);
            $("#teacherListModalLabel").attr("key", "function");
            $("#teacherListModalLabel").attr("operation", operation);
            //var teacherid=$("#teacherid").val(); 
            if(url){
                if(operation=="create"){
                       $("#teacherListModal").modal({backdrop: "static", keyboard: false});
	            	   $("#teacherListModal .modal-body").load(url);
                } 
                if(operation=="modify"){
                   var teacherids=$("input[name='teacherid']:checked");
                   if(teacherids.length<1){
                      alert("请选择要修改的教师信息");
                      return false;
                   }else if(teacherids.length>1){
                       alert("每次只能修改一条教师信息");
                       return false;
                   }else{
                        var teacherid=teacherids.val();                        
                        url=url+"?teacherid="+teacherid;
                         $("#teacherListModal").modal({backdrop: "static", keyboard: false});
	            	     $("#teacherListModal .modal-body").load(url);
                   }
                }
              }               
        }
        function teacherListSelectPage(obj){
            /*翻页，获取数据，将其填充到页面上
             *
             *
             */
            $(".pagination li").removeClass("active");
            $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
        }
        $("#teacherListModal").on("hide.bs.modal", function () {
            // 执行一些动作...
            $("#teacherListModal .modal-body").html("");//關閉時清空modal-body的內容
            /*$("#roleManageModalLabel").removeAttr("operation");//清除標誌
             $("#roleManageModalLabel").removeAttr("key");//清除標誌*/
        });
        
        
        $("#commit").click(function(){
           var opera =$("#teacherListModalLabel").attr("operation");
           if(opera=="create"){             
              var teachertype=$("#teacherType").val();
              var userNo=$("#UserNo").val();
              var UserName=$("#UserName").val();
              var UserPhone=$("#UserPhone").val();
              var UserEmail=$("#UserEmail").val();
              var UserJob=$("#UserJob").val();
              var UserResume=$("#UserResume").val();
              var UserhighEducation=$("#UserhighEducation").val();
              var Usereducation=$("#Usereducation").val();
              var Userdomain=$("#Userdomain").val();
              var teachPerformance=$("#teachPerformance").val();
              var UserRemark=$("#UserRemark").val();
              if(teachertype==""){
                 alert("讲师类别为必选项");
                 return false;
              }
              if(UserName==""){
                  alert("姓名为必填项");
                 return false;
              }              
              if(UserPhone==""){
               alert("联系电话为必填项");
                  return false;
              }
              if(UserEmail==""){
               alert("Email为必填项");
                  return false;
              }
              if(UserEmail!=""){
                   if(UserEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)==-1)
	      	        {
	      		        alert("邮箱输入格式不正确");
       			        return false;
	      	         }
              }
              $.get(
                    "${path}/background/teacherCreate.action",{ 
                     "type" :  teachertype,
                  "userno": userNo,
                  "name": UserName,
                  "phone":UserPhone,
                  "email":UserEmail,
                  "job":UserJob,
                  "resume":UserResume,
                  "highEducation":UserhighEducation,
                  "education":Usereducation,
                  "domain":Userdomain,
                  "Remark":UserRemark,
                  "teachPerformance":teachPerformance                  
        	 },function(data,status){
        	     if(status=="success"){
        	 	   alert("成功插入");        	 	   
        	 	    //alert(data);
        	 	    window.location.reload();
        	 	 }
        	 }
               );     
              
           }else if (opera=="modify"){
             var teacherid=$("#QTeacherid").val();
             var teachertype=$("#teacherType").val();
              var userNo=$("#UserNo").val();
              var UserName=$("#UserName").val();
              var UserPhone=$("#UserPhone").val();
              var UserEmail=$("#UserEmail").val();
              var UserJob=$("#UserJob").val();
              var UserResume=$("#UserResume").val();
              var UserhighEducation=$("#UserhighEducation").val();
              var Usereducation=$("#Usereducation").val();
              var Userdomain=$("#Userdomain").val();
              var teachPerformance=$("#teachPerformance").val();
              var UserRemark=$("#UserRemark").val();
              var UsercreateUser=$("#UsercreateUser").val();
              var UsercreateDate=$("#UsercreateDate").val();
              if(teachertype==""){
                 alert("讲师类别为必选项");
                 return false;
              }
              if(UserEmail==""){
               alert("Email为必填项");
                  return false;
              }
              if(UserName==""){
                  alert("姓名为必填项");
                 return false;
              }              
              if(UserPhone==""){
               alert("联系电话为必填项");
                  return false;
              }
              if(UserEmail!=""){
                   if(UserEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)==-1)
	      	        {
	      		        alert("邮箱输入格式不正确");
       			        return false;
	      	         }
              }
              $.get(
                    "${path}/background/teacherModify.action",{ 
                    "teacherid":teacherid,
                     "type" :  teachertype,
                  "userno": userNo,
                  "name": UserName,
                  "phone":UserPhone,
                  "email":UserEmail,
                  "job":UserJob,
                  "resume":UserResume,
                  "highEducation":UserhighEducation,
                  "education":Usereducation,
                  "domain":Userdomain,
                  "Remark":UserRemark,
                  "teachPerformance":teachPerformance ,
                  "createUser":UsercreateUser,
                  "createDate":UsercreateDate
                                   
        	 },function(data,status){
        	     if(status=="success"){
        	 	   alert("成功修改");        	 	   
        	 	    //alert(data);
        	 	    window.location.reload();
        	 	 }
        	 }
               );     
              
           }else {
              alert("this is other");
           }
        });
    </script>
</body>
</html>