<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用戶管理</title>
    <style type="text/css">
        .search-div .form-control{
            margin-bottom: 10px;
            display: inline-block;
            width: 150px;
        }
        .search-div-input{
        	margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h3>用戶管理</h3>
    <div class="userManage" id="userManage">
    	<form action="">
	        <div class="search-div">
	            <div class="search-div">
	                <div class="search-div-input">
	                                                   賬號：&emsp;&emsp;&nbsp; <input type="text" class="form-control">
	                                                   姓名：<input type="text" class="form-control">
	                    <div class="text-btn-group">
			                                        組織名稱：<input id="userManagefatherModel" type="text" class="form-control" />
			                <button type="button" class="btn btn-xs btn-primary  glyphicon glyphicon-search"
			                        onclick="popOrganizationManageModal
			                        ('${path}/background/organizationManageChoose.html', '資料選擇器', 'search-choose')">
			                </button>
			            </div>
		                                         角色識別碼：<input type="text" class="form-control">
		            </div>
		            <div>
		                                         是否有效：&nbsp; <select type="text" class="form-control">
						            <option value="Y">All</option>
						            <option value="Y">Y</option>
						            <option value="N">N</option>
						        </select>
						 <button class="btn btn-xs btn-primary" type="submit"><b class="glyphicon glyphicon-search"></b> 查詢</button>
					</div>
	            </div>
	            <div class="">
	                <button class="btn btn-xs btn-primary" type="reset"><b class="glyphicon glyphicon-refresh"></b> 重置</button>
	                <button class="btn btn-xs btn-primary" type="button" onclick="popOrganizationManageModal
			                        ('${path}/background/userManagePopView.html', '新增', 'search-choose')" >
	                	<b class="glyphicon glyphicon-plus-sign"></b> 新增</button>
	                <button class="btn btn-xs btn-primary" type="button" onclick="popOrganizationManageModal
			                        ('${path}/background/userManagePopView.html', '修改', 'search-choose')" >
			            <b class="glyphicon glyphicon-pencil"></b> 修改</button>
	                <button class="btn btn-xs btn-danger" type="button"><b class="glyphicon glyphicon-trash"></b> 刪除</button>
	                <button class="btn btn-xs btn-primary" type="button"><b class="glyphicon glyphicon-open"></b> 導出</button>
	                <button class="btn btn-xs btn-primary" type="button"><b class="glyphicon glyphicon-lock"></b> 重置密碼</button>
	                <button class="btn btn-xs btn-primary" type="button" onclick="popOrganizationManageModal('${path}/background/userInfoCopy.html', '複製', 'Copy')">
	                	<b class="glyphicon glyphicon-copy"></b> 複製</button>
	            </div>
	        </div>
        </form>
        <div class="userManageData">
        	<table class="table table-bordered table-striped table-condensed">
        		<thead>
        			<tr>
        				<th></th>
        				<th><input type="checkbox" value="all" id="selectAll"/></th>
        				<th>工號</th>
        				<th>姓名</th>
        				<th>次集團</th>
        				<th>事業群</th>
        				<th>角色識別碼</th>
        				<th>角色名稱</th>
        				<th>???</th>
        				<th>???</th>
        				<th>電子郵箱</th>
        				<th>有效否</th>
        				<th>修改人</th>
        				<th>修改日期</th>
        			</tr>
        		</thead>
        		<tbody>
        			<tr>
        				<td>1</td>
        				<td><input type="checkbox" value="all" id="singleSelect"> </td>
        				<td>21597</td>
        				<td>姓名1</td>
        				<td>J次集團</td>
        				<td>台北人資</td>
        				<td>SYSTEM</td>
        				<td>管理員</td>
        				<td>438</td>
        				<td>2017-03-13上午 15:23</td>
        				<td>xxxxx@efeihu.com</td>
        				<td>Y</td>
        				<td>21597</td>
        				<td>2017-03-13 上午 16:24</td>
        			</tr>
        			<tr>
        				<td>2</td>
        				<td><input type="checkbox" value="all" id="singleSelect"> </td>
        				<td>21597</td>
        				<td>姓名1</td>
        				<td>J次集團</td>
        				<td>台北人資</td>
        				<td>SYSTEM</td>
        				<td>管理員</td>
        				<td>438</td>
        				<td>2017-03-13上午 15:23</td>
        				<td>xxxxx@efeihu.com</td>
        				<td>Y</td>
        				<td>21597</td>
        				<td>2017-03-13 上午 16:24</td>
        			</tr>
        			<tr>
        				<td>3</td>
        				<td><input type="checkbox" value="all" id="singleSelect"> </td>
        				<td>21597</td>
        				<td>姓名1</td>
        				<td>J次集團</td>
        				<td>台北人資</td>
        				<td>SYSTEM</td>
        				<td>管理員</td>
        				<td>438</td>
        				<td>2017-03-13上午 15:23</td>
        				<td>xxxxx@efeihu.com</td>
        				<td>Y</td>
        				<td>21597</td>
        				<td>2017-03-13 上午 16:24</td>
        			</tr>
        		</tbody>
        	</table>
        </div>
    </div>
    <!-- Modal -->
    <div style="margin: 0;" class="modal fade" id="organizationManageModal" tabindex="-1" role="dialog" aria-labelledby="organizationManageModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="organizationManageModalLabel"></h4>
                </div>
                <div  class="modal-body" style="padding: 0;">
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
    <script type="text/javascript">
    	function popOrganizationManageModal(url, title, operation) {
        //alert(operation);
        if(operation == "Copy"){
        	$(".modal-dialog").css("width","1150");
        }else{
        	$(".modal-dialog").css("width","600");
        }
        $("#organizationManageModal").modal({backdrop: "static", keyboard: false});
        $("#organizationManageModalLabel").html(title);
        if(url){
            $("#organizationManageModal .modal-body").load(url);
        }else {
            $("#organizationManageModal .modal-body").html("url為空，加載失敗...");
        }
    }
    </script>
</body>
</html>