<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<%@ include file="../../included/taglib_lib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        #roleManageCreate>div{
            margin-bottom: 10px;
            text-align: left;
        }
        #roleManageCreate .name{
            display: inline-block;
            width: 100px;
        }
        #roleManageCreate input.form-control{
            width: 450px;
        }
        #roleManageCreate input.form-control{
            width: 450px;
        }
        #roleManageCreate .right-div{
            display: inline-block;
            width: 450px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div id="roleManageCreate">
    	<c:choose>
    		<c:when test="${requestScope.roleFunction!=null}">
    				 <div>
			            <span class="name">角色識別碼<font color="red">*</font>：</span>
			            <input class="form-control" type="text" id="rolecode" value="${requestScope.roleFunction.roleCode }">
			        </div>
			        <div>
			            <span class="name">角色名稱<font color="red">*</font>：</span>
			            <input class="form-control" type="text" id="rolename" value="${requestScope.roleFunction.roleName }">
			        </div>
			        <div>
			            <div class="name" style="float: left;">角色權限：</div>
			            <div class="right-div" id="rolePermissionChoose">
			            </div>
			        </div>
			        <input type="hidden" id="roleId" value="${requestScope.roleFunction.roleId }">
    		</c:when>
    		<c:otherwise>
    			 <div>
		            <span class="name">角色識別碼<font color="red">*</font>：</span>
		            <input class="form-control" type="text" id="rolecode">
			        </div>
			        <div>
			            <span class="name">角色名稱<font color="red">*</font>：</span>
			            <input class="form-control" type="text" id="rolename">
			        </div>
			        <div>
			            <div class="name" style="float: left;">角色權限：</div>
			            <div class="right-div" id="rolePermissionChoose">
			            </div>
			        </div>
    		</c:otherwise>
    	</c:choose>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#rolePermissionChoose").load("${path}/background/rolePermissionChoose.html");
        });
    </script>
</body>
</html>