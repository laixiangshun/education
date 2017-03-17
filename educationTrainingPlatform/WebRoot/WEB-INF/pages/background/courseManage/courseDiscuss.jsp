<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>

<style type="text/css">
	.glyphicon-pencil:hover,
	.glyphicon-trash:hover{
		cursor: pointer;
	}
</style>

<div id="courseDiscuss">
	<h3>課程討論區列表</h3>
	<div class="search-div">
		課程名稱：
		<input class="form-control" type="text"/>&emsp;
		工號：
		<input class="form-control" type="text"/>&emsp;
		姓名：
		<input class="form-control" type="text"/>&emsp;
		
	</div>
	<div class="search-div">
		<button class="btn btn-xs btn-primary">
			<b class="glyphicon glyphicon-search"></b>&nbsp;查詢
		</button>
		<button class="btn btn-xs btn-primary">
			<b class="glyphicon glyphicon-refresh"></b>&nbsp;重置
		</button>
	</div>
	<div id="courseDiscussData">
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th></th>
                    <th><input type="checkbox" value="all" id="selectAll"/></th>
                    <th>課程名稱</th>
                    <th>內容</th>
                    <th>發問者工號</th>
                    <th>發問者姓名</th>
                    <th>建立日期</th>
                    <th>最後更新人</th>
                    <th>最後更新時間</th>
                    <th>編輯</th>
                    <th>刪除</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>鴻海教育訓練</td>
                    <td>鴻海教育訓練第一條？</td>
                    <td>21597</td>
                    <td>林后軒</td>
                    <td>2017/03/14 15:59 </td>
                    <td>講師姓名</td>
                    <td>2017/03/17 15:59</td>
                    <td><b class="glyphicon glyphicon-pencil" onclick="popEditorModal('${path}/background/courseDiscussEdit.html')"></b></td>
                    <td><b class="glyphicon glyphicon-trash"style="color:red"></b></td>
				</tr>
				<tr>
                    <td>2</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>鴻海教育訓練</td>
                    <td>鴻海教育訓練第一條？</td>
                    <td>21597</td>
                    <td>林后軒</td>
                    <td>2017/03/14 15:59 </td>
                    <td>講師姓名</td>
                    <td>2017/03/17 15:59</td>
                    <td><b class="glyphicon glyphicon-pencil" onclick="popEditorModal('${path}/background/courseDiscussEdit.html')"></b></td>
                    <td><b class="glyphicon glyphicon-trash"style="color:red"></b></td>
				</tr>
				<tr>
                    <td>3</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>鴻海教育訓練</td>
                    <td>鴻海教育訓練第一條？</td>
                    <td>21597</td>
                    <td>林后軒</td>
                    <td>2017/03/14 15:59 </td>
                    <td>講師姓名</td>
                    <td>2017/03/17 15:59</td>
                    <td><b class="glyphicon glyphicon-pencil" onclick="popEditorModal('${path}/background/courseDiscussEdit.html')"></b></td>
                    <td><b class="glyphicon glyphicon-trash"style="color:red"></b></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- Modal -->
    <div class="modal fade" id="courseDiscussModal" tabindex="-1" role="dialog" aria-labelledby="courseDiscussModalLabel">
        <div style="width:700px;" class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="courseDiscussModalLabel">編輯</h4>
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
	function popEditorModal(url){	
		$("#courseDiscussModal").modal({backdrop: "static", keyboard: false});
		if(url){
			$("#courseDiscussModal .modal-body").load(url);
		}else{
			$("#courseDiscussModal .modal-body").html("url為空，加載失敗...");
		}
	}
</script>