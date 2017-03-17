<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp"%>
<%@ include file="../../included/taglib_lib.jsp"%>
<html>
<head>
</head>
<body>
	<div id="functionManage">
		<h3>功能管理</h3>
		<div class="search-div">
			<div class="search-div">
				模組代碼： <input type="text" id="modulecode" class="form-control" />&emsp;
				窗口名稱： <input type="text" id="functionname" class="form-control" />&emsp;
				父模組：
				<div class="text-btn-group">
					<input id="functionManagefatherModel" type="text"
						class="form-control" />
					<button class="btn btn-xs btn-primary  glyphicon glyphicon-search"
						onclick="popFunctionManageModal('${path}/background/functionManageChoose.html', '資料選擇器', 'other')">
					</button>
				</div>
				<!-- 組織權限：
            <select class="form-control">
                <option>ALL</option>
                <option>Y</option>
                <option>N</option>
            </select> -->
				<!-- &emsp;
				<button class="btn btn-xs btn-primary" id="btn_search">
					<b class="glyphicon glyphicon-search"></b>&nbsp;查詢
				</button> -->
			</div>
			<div class="search-div">
				<button class="btn btn-xs btn-primary" id="btn_search">
					<b class="glyphicon glyphicon-search"></b>&nbsp;查詢
				</button>
				<button class="btn btn-xs btn-primary"
					onclick="popFunctionManageModal('${path}/background/functionManageCreate.html', '新增', 'create')">
					<b class="glyphicon glyphicon-plus-sign"></b>&nbsp;新增
				</button>
				<button class="btn btn-xs btn-primary"
					onclick="popFunctionManageModal('${path}/background/functionManageModify.html', '修改', 'modify')">
					<b class="glyphicon glyphicon-pencil"></b>&nbsp;修改
				</button>
				<button class="btn btn-xs btn-danger">
					<b class="glyphicon glyphicon-trash"></b>&nbsp;刪除
				</button>
				<button class="btn btn-xs btn-primary">
					<b class="glyphicon glyphicon-download-alt"></b>&nbsp;導出
				</button>
			</div>
		</div>
		<div id="functionManageData">
			<table class="table table-bordered table-striped table-condensed">
				<thead>
					<tr>
						<th></th>
						<th><input type="checkbox" value="all" id="selectAll" /></th>
						<th>系統模組</th>
						<th>順序號</th>
						<th>父模組</th>
						<th>窗口名稱</th>
						<th>網頁地址</th>
						<!-- <th>組織權限</th> -->
						<th>有效否</th>
						<th>功能碼</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.functions.result }" var="func"
						varStatus="status">
						<tr>
							<td>${status.index+1 }</td>
							<td><input type="checkbox" value="data1" id="data1" /></td>
							<td>鴻海教育訓練管理系統</td>
							<td>${func.menuorder }</td>
							<td>${func.parentfunc }</td>
							<td>${func.functionname }</td>
							<td>${func.urls }</td>
							<td><c:if test="${func.status eq 1 }">Y</c:if>
								<c:if test="${func.status eq -1 }">N</c:if></td>
							<td>${func.functioncode }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="page-div">
				<ul class="pagination">
					<li class="disabled"><a
						onclick="functionManageSelectPage(this)" aria-label="Previous"><span
							aria-hidden="true">&laquo;</span></a></li>
					<li class="active"><a onclick="functionManageSelectPage(this)">1
							<span class="sr-only">(current)</span>
					</a></li>
					<li><a onclick="functionManageSelectPage(this)">2</a></li>
					<li><a onclick="functionManageSelectPage(this)">3</a></li>
					<li><a onclick="functionManageSelectPage(this)">4</a></li>
					<li><a onclick="functionManageSelectPage(this)">5</a></li>
					<li><span>...</span></li>
					<li><a onclick="functionManageSelectPage(this)">lastPage</a></li>
					<li><a onclick="functionManageSelectPage(this)"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
		</div>

		<!-- Modal -->
		<div style="" class="modal fade" id="functionManageModal"
			tabindex="-1" role="dialog"
			aria-labelledby="functionManageModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" operation="" key=""
							id="functionManageModalLabel"></h4>
					</div>
					<div class="modal-body">加載中...</div>
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
		$('#btn_search').click(function() {
			var url = "${path}/background/functionManage.html";
			$.get(url, {
				"modulecode" : $("#modulecode").val(),
				"functionname" : $("#functionname").val(),
				"parentfunc" : $("#functionManagefatherModel").val()
			}, function(data, status) {
				$("#content").html(data);
			});
		});
		$('#commit').click(function() {
			//alert("this is modal");
			var opera = $("#functionManageModalLabel").attr("operation");
			if (opera == "create") {
				//alert("create");
				//alert($("#functionManagePop_modelID").val());
			} else if (opera == "modify") {
				//alert("modify");
			} else {
				//alert($("#selectContent").val());
				$("#functionManagefatherModel").val($("#selectContent").val());
			}
			$('#functionManageModal').modal("hide");
			/*$.post(url, {"name1": "data1", "name2": "data2"}, function (data) {

			});*/
		});

		function popFunctionManageModal(url, title, operation) {
			$("#functionManageModalLabel").html(title);
			$("#functionManageModalLabel").attr("key", "function");
			$("#functionManageModalLabel").attr("operation", operation);
			$('#functionManageModal').modal({
				backdrop : "static",
				keyboard : false
			});
			if (url) {
				$("#functionManageModal .modal-body").load(url);
			} else {
				$("#functionManageModal .modal-body").html("url為空，加載失敗...");
			}
		}
		function functionManageSelectPage(obj) {
			/*翻页，获取数据，将其填充到页面上
			 *
			 *
			 */
			$(".pagination li").removeClass("active");
			$(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
		}
		$('#functionManageModal').on('hide.bs.modal', function() {
			// 执行一些动作...
			$("#functionManageModal .modal-body").html("");//關閉時清空modal-body的內容
			$("#functionManageModalLabel").removeAttr("operation");//清除標誌
			$("#functionManageModalLabel").removeAttr("key");//清除標誌
		})
	</script>
</body>
</html>