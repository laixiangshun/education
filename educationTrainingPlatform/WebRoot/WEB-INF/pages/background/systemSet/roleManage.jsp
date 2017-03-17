<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/taglib_lib.jsp" %>
<%@ include file="../../included/path_lib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <div id="roleManage">
    <input type="hidden" id="roleIdlist">
        <h3>角色管理</h3>
        <div class="search-div">
            <div class="search-div">
                角色識別碼：
                <input type="text" id="roleCode" class="form-control" />&emsp;
                角色名稱：
                <input type="text" id="roleName" class="form-control" />&emsp;
                角色權限：
                <div class="text-btn-group">
                    <input id="rolePermission" type="text" class="form-control" />
                    <button class="btn btn-xs btn-primary  glyphicon glyphicon-search"
                            onclick="popRoleManageModal('${path}/background/functionManageChoose.html', '角色權限', 'search-choose')">
                    </button>
                    <input type="hidden" id="functionid">
                </div>
<!-- 
                &emsp;<button id="roleSelect" class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
                </div>  -->               
            </div>
            <div class="search-div">
            	<button id="roleSelect" id="roleSelect" class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
                <button class="btn btn-xs btn-primary" id="roleReset"><b class="glyphicon glyphicon-refresh"></b>&nbsp;重置</button>
                <button class="btn btn-xs btn-primary" onclick="popRoleManageModal('${path}/background/roleManageCreate.html', '新增角色', 'create')">
                    <b class="glyphicon glyphicon-plus-sign"></b>&nbsp;新增
                </button>
                <button class="btn btn-xs btn-primary" onclick="popRoleManageModal('${path}/background/roleManageModify.html', '修改角色', 'modify')">
                    <b class="glyphicon glyphicon-pencil"></b>&nbsp;修改
                </button>
                <button class="btn btn-xs btn-danger" id="roleDelete"><b class="glyphicon glyphicon-trash"></b>&nbsp;刪除</button>
               <!--  <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-download-alt"></b>&nbsp;導出</button> -->
            </div>
        </div>
        <div id="functionManageData">
            <table class="table table-bordered table-striped table-condensed">
                <thead>
                <tr>
                    <th><input type="checkbox" id="checkall"></th>
                    <th>角色識別碼</th>
                    <th>角色名稱</th>
                    <th>角色權限</th>
                    <!-- <th>聯絡方式權限</th> -->
                </tr>
                </thead>
                <tbody>
                	<c:choose>
                		<c:when test="${requestScope.roleFunction !=null && requestScope.roleFunction!=''}">
                			<c:forEach items="${requestScope.roleFunction.result }" var="roleFunction">
                				<tr>
                					<td><input type="checkbox" value="${roleFunction.roleId }" name="role"></td>
                					<td>${roleFunction.roleCode }</td>
                					<td>${roleFunction.roleName }</td>
                					<td>${roleFunction.functionName}</td>
                				</tr>
                			</c:forEach>
                		</c:when>
                		<c:otherwise>
                			<tr>
                				<td colspan="4">没有数据！</td>
                			</tr>
                		</c:otherwise>
                	</c:choose>
                </tbody>
            </table>
            <div class="page-div">
                <ul class="pagination">
                    <li class="disabled"><a onclick="roleManageSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                    <li class="active"><a onclick="roleManageSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                    <li><a onclick="roleManageSelectPage(this)">2</a></li>
                    <li><a onclick="roleManageSelectPage(this)">3</a></li>
                    <li><a onclick="roleManageSelectPage(this)">4</a></li>
                    <li><a onclick="roleManageSelectPage(this)">5</a></li>
                    <li><span >...</span></li>
                    <li><a onclick="roleManageSelectPage(this)">lastPage</a></li>
                    <li>
                        <a onclick="roleManageSelectPage(this)" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Modal -->
        <div style="" class="modal fade" id="roleManageModal" tabindex="-1" role="dialog" aria-labelledby="roleManageModalLabel">
            <div class="modal-dialog" role="document" >
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" operation="" key="" id="roleManageModalLabel"></h4>
                    </div>
                    <div  class="modal-body">
                        加載中...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="commit" onclick="commite();">確定</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
    </div>
    <script type="text/javascript">
        function popRoleManageModal(url, title, operation) {
           
            $("#roleManageModalLabel").html(title);
            $("#roleManageModalLabel").attr("operation",operation);
            $("#roleManageModalLabel").attr("key","function");
            if(url)
            {
            	if(operation == "modify")
            	{
            		var roleIds=$("input[name='role']:checked");
            		if(roleIds.length<1)
            		{
            			alert("请选择要修改的角色");
            			return false;
            		}else if(roleIds.length>1)
            		{
            			alert("每次只能修改一个角色");
            			return false;
            		}else{
            			 var roleid=roleIds.val();
	            		 url=url+"?roleid="+roleid;
	            		 $("#roleManageModal").modal({backdrop: "static", keyboard: false});
	            		 $("#roleManageModal .modal-body").load(url);
            		}
            	}else if(operation == "create")
            	{
            		 $("#roleManageModal").modal({backdrop: "static", keyboard: false});
            		 $("#roleManageModal .modal-body").load(url);
            	}else if(operation == "search-choose")
            	{
            		$("#roleManageModal").modal({backdrop: "static", keyboard: false});
            		$("#roleManageModal .modal-body").load(url);
            	}
            }else
            {
            	$("#roleManageModal").modal({backdrop: "static", keyboard: false});
				$("#functionManageModal .modal-body").html("url為空，加載失敗...");	
            }
        }
        function roleManageSelectPage(obj){
            /*翻页，获取数据，将其填充到页面上
             *
             *
             */
            $(".pagination li").removeClass("active");
            $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
        }
        $('#roleManageModal').on('hide.bs.modal', function () {
            // 执行一些动作...
            $("#roleManageModal .modal-body").html("");//關閉時清空modal-body的內容
            /*$("#roleManageModalLabel").removeAttr("operation");//清除標誌
             $("#roleManageModalLabel").removeAttr("key");//清除標誌*/
        });
        
        function commite(){
        	var operation=$("#roleManageModalLabel").attr("operation");
        	if(operation == "create")
        	{
	        	var rolecode=$("#rolecode").val();
	        	var roleName=$("#rolename").val();
	        	if(rolecode=="")
	        	{
	        		alert("角色識別碼不能為空");
	        		return false;
	        	}
	        	if(roleName=="")
	        	{
	        		alert("角色名稱不能為空");
	        		return false;
	        	}
	        	//var Permission=$("#selectContent").val();
	        	var Permission=$("#selectId").val();
	        	if(Permission=="")
	        	{
	        		alert("请选择角色权限");
	        		return false;
	        	}
	        	 $.post("${path}/background/roleManageAdd.action",{
	        	 	
	        	 	"roleCode":rolecode,
	        	 	"roleName": roleName,
	        	 	"functionids":Permission
	        	 },function(data){
	        	 	alert(data);
	        	 	//$("#content").html(data);
	        	 	window.location.reload();
	        	 });
        	}else if(operation == "modify")
        	{
        		var roleCode=$("#rolecode").val();
	        	var roleName=$("#rolename").val();
	        	if(roleCode="")
	        	{
	        		alert("角色識別碼不能為空");
	        		return false;
	        	}
	        	if(roleName=="")
	        	{
	        		alert("角色名稱不能為空");
	        		return false;
	        	}
	        	//var Permission=$("#selectContent").val();
	        	var Permission=$("#selectId").val();
	        	if(Permission="")
	        	{
	        		alert("请选择角色权限");
	        		return false;
	        	}
	        	$.get("${path}/background/roleModidy.html",{
	        		"roleCode":roleCode,
	        		"roleName":roleName,
	        		"permission":Permission
	        	},function(data){
	        		alert(data);
	        		window.location.reload(true);
	        	});
        	}else if(operation == "search-choose")
        	{
        		var chooce=$("#selectContent").val();
        		$("#rolePermission").val(chooce);
        		var functionid=$("#selectId").val();
        		$("#functionid").val(functionid);
        	}
        	$("#roleManageModal").modal("hide");
        }
        
        $("#roleDelete").click(function(){
        	var roleIds=$("input[name='role']:checked");
        	if(roleIds.length<1)
        	{
        		alert("请选择要删除的角色！");
        		return;
        	}
        	var roleidArray=[];
        	for(var i=0;i<roleIds.length;i++)
        	{
        		roleidArray.push($(roleIds[i]).val());
        	}
        	$("#roleIdlist").val(roleidArray);
        	var roleIdlist=$("#roleIdlist").val();
        	$.post("${path}/background/deleteRole.action",{
        		"roleIdList": roleIdlist
        	},function(data){
        		alert(data);
        		window.location.reload();
        	});
        });
        //重置
        $("#roleReset").click(function(){
        	$("#roleCode").val("");
        	$("#roleName").val("");
        	$("#rolePermission").val("");
        });
        
        
        $("#roleSelect").click(function(){
        	var roleCode=$("#roleCode").val();
        	var roleName=$("#roleName").val();
        	//var rolePermission=$("#rolePermission").val();
        	//var rolePermission=$("#selectId").val();
        	var functionid=$("#functionid").val();
        	$.get("${path}/background/inquiryRole.html",{
        		"roleCode":roleCode,
        		"roleName":roleName,
        		"functionid":functionid
        	},function(data){
        		$("#content").html(data);
        		//window.location.reload();
        	});
        });
        
        //全选与取消全选
        $("#checkall").click(function(){
        	var roles=$("input[name='role']");
        	for(var i=0;i<roles.length;i++)
        	{
        		if(roles[i].checked==true)
        		{
        			roles[i].checked=false;
        		}else
        		{
        			roles[i].checked=true;
        		}
        	}
        });
    </script>
</body>
</html>