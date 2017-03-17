<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>教育訓練出勤比對</title>
</head>
<body>
	<div id="timetagManage">
		<h3>教育訓練出勤比對</h3>
		<div class="search-div">
			<div class="search-div">
				課程名稱：
				<div class="text-btn-group">
					<input id="courseChoooseModel" type="text" class="form-control" />
					<button class="btn btn-xs btn-primary  glyphicon glyphicon-search"
						onclick="popTimetagManageModal('${path}/background/courseChoose.html', '選擇課程', 'other')">
					</button>
				</div>
				廠區：
				<div class="text-btn-group">
					<input id="regionChooseModel" type="text" class="form-control" />
					<button class="btn btn-xs btn-primary  glyphicon glyphicon-search"
						onclick="popTimetagManageModal('${path}/background/regionChoose.html', '選擇廠區', 'other')">
					</button>
				</div>
				刷卡時間起： <input id="dateEntry" type="text" class="form-control"
					onfocus="selectDate('dateEntry')" /> 至：<input id="dateLeave"
					type="text" class="form-control" onfocus="selectDate('dateLeave')" />
				</div>
				<div class="search-div">
					表單類型： <select id="formtype"
						class="selectpicker show-tick form-control"
						data-live-search="true">
						<option value="0">--ALL--</option>
						<option value="1">有提報有上課</option>
						<option value="2">有提報沒上課</option>
						<option value="3">沒提報有上課</option>
						<option value="4">各廠區參與員工實際人數匯總表</option>
					</select>
				</div>
			

			<div class="search-div">
				<button class="btn btn-xs btn-primary">
					<b class="glyphicon glyphicon-search"></b>&nbsp;查詢
				</button>
				<button class="btn btn-xs btn-primary">
					<b class="glyphicon glyphicon-refresh"></b>&nbsp;重置
				</button>
				<button class="btn btn-xs btn-primary"
					onclick="popTimetagManageModal('${path}/background/timetagCreate.html', '新增', 'create')">
					<b class="glyphicon glyphicon-plus-sign"></b>&nbsp;新增
				</button>
				<button class="btn btn-xs btn-primary"
					onclick="popTimetagManageModal('${path}/background/timetagModify.html', '修改', 'modify')">
					<b class="glyphicon glyphicon-pencil"></b>&nbsp;修改
				</button>
				<button class="btn btn-xs btn-danger">
					<b class="glyphicon glyphicon-trash"></b>&nbsp;刪除
				</button>
				<button class="btn btn-xs btn-primary">
					<b class="glyphicon glyphicon-save"></b>&nbsp;Excel匯入
				</button>
				<button id="btnReportAbsent" class="btn btn-xs btn-primary">
					<b class="glyphicon glyphicon-open"></b>&nbsp;導出出缺勤報表
				</button>
			</div>
		</div>

		<div id="timetagManageData">
			<table class="table table-bordered table-striped table-condensed">
				<thead>
					<tr>
						<th></th>
						<th><input type="checkbox" value="all" id="selectAll" /></th>
						<th>課程名稱</th>
						<th>工號</th>
						<th>姓名</th>
						<th>上課時間</th>
						<th>下課時間</th>
						<th>下班時間</th>
						<th>備註</th>
						<th>筆試</th>
						<th>口試</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><input type="checkbox" value="data1" id="data1" /></td>
						<td>鴻海教訓訓練課程</td>
						<td>VH1745</td>
						<td>張偉信</td>
						<td>2017/03/03 10:10:10</td>
						<td>2017/03/03 12:10:10</td>
						<td>2017/03/03 12:10:10</td>
						<td></td>
						<td>65</td>
						<td>70</td>
					</tr>
					<tr>
						<td>1</td>
						<td><input type="checkbox" value="data1" id="data1" /></td>
						<td>鴻海教訓訓練課程</td>
						<td>VH1745</td>
						<td>張偉信</td>
						<td>2017/03/05 10:10:10</td>
						<td>2017/03/05 12:10:10</td>
						<td>2017/03/05 12:10:10</td>
						<td>簽到</td>
						<td></td>
						<td>70</td>
					</tr>
				</tbody>
			</table>
			<div class="page-div">
				<ul class="pagination">
					<li class="disabled"><a
						onclick="timetagManageSelectPage(this)" aria-label="Previous"><span
							aria-hidden="true">&laquo;</span></a></li>
					<li class="active"><a onclick="timetagManageSelectPage(this)">1
							<span class="sr-only">(current)</span>
					</a></li>
					<li><a onclick="timetagManageSelectPage(this)">2</a></li>
					<li><a onclick="timetagManageSelectPage(this)">3</a></li>
					<li><a onclick="timetagManageSelectPage(this)">4</a></li>
					<li><a onclick="timetagManageSelectPage(this)">5</a></li>
					<li><span>...</span></li>
					<li><a onclick="timetagManageSelectPage(this)">lastPage</a></li>
					<li><a onclick="timetagManageSelectPage(this)"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
		</div>

		<!-- Modal -->
		<div style="" class="modal fade" id="timetagManageModal" tabindex="-1"
			role="dialog" aria-labelledby="timetagManageModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" operation="" key=""
							id="timetagManageModalLabel"></h4>
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
		$('#commit').click(function() {
			//alert("this is modal");
			var opera = $("#timetagManageModalLabel").attr("operation");
			if (opera == "create") {
				//alert("create");

			} else if (opera == "modify") {
				//alert("modify");
			}
			$('#timetagManageModal').modal("hide");
			/*$.post(url, {"name1": "data1", "name2": "data2"}, function (data) {

			});*/
		});

		function popTimetagManageModal(url, title, operation) {
			$("#timetagManageModalLabel").html(title);
			$("#timetagManageModalLabel").attr("key", "timetag");
			$("#timetagManageModalLabel").attr("operation", operation);
			$("#timetagManageModal").modal({
				backdrop : "static",
				keyboard : false
			});
			if (url) {
				$("#timetagManageModal .modal-body").load(url);
			} else {
				$("#timetagManageModal .modal-body").html("url為空，加載失敗...");
			}
		}
		function timetagManageSelectPage(obj) {
			/*翻页，获取数据，将其填充到页面上
			 *
			 *
			 */
			$(".pagination li").removeClass("active");
			$(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
		}
		$('#timetagManageModal').on('hide.bs.modal', function() {
			// 执行一些动作...
			$("#timetagManageModal .modal-body").html("");//關閉時清空modal-body的內容
			$("#timetagManageModalLabel").removeAttr("operation");//清除標誌
			$("#timetagManageModalLabel").removeAttr("key");//清除標誌
		})
	</script>
</body>
</html>