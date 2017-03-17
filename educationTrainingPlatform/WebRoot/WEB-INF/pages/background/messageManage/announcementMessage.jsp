<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
    <title>公告消息</title>
</head>
<body>
	<h3>系統消息</h3>
    <div id="announcementMessage">
        <div class="search-div">
        	<div class="search-div">
 				主題：
 					<input type="text" class="form-control">
				作者：
					<input type="text" class="form-control">
				有效否：
					<select class="form-control">
	                    <option value="Y">Y</option>
	                    <option value="N">N</option>
                    </select>
					&emsp;<button class="btn btn-xs btn-primary" type="button">
						<b class="glyphicon glyphicon-search"></b>&nbsp;查詢
					</button>
			</div>
         
            <div class="search-div">
	            <button class="btn btn-xs btn-primary" >
	            	<b class="glyphicon glyphicon-refresh"></b>&nbsp;重置
	            </button>
	            <button class="btn btn-xs btn-primary" onclick="popEditorModal('${path}/background/editorPage.html','新增','add')">
	            	<b class="glyphicon glyphicon-plus-sign" type="button"></b>&nbsp;新增
	            </button>
            </div>
        </div>
        
            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>狀態</th>
                        <th>主題</th>
                        <th>作者</th>
                        <th>建立日期</th>
                        <th>最後更新人</th>
                        <th>最後更新時間</th>
                        <th>有效否</th>
                        <th>編輯</th>
                        <th>置頂</th>
                        <th>取消置頂</th>
                        <th>删除</th>
                        <th>失效</th>
                        <th>生效</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><img src=""></td>
                        <td><a onclick="popEditorModal('${path}/background/previewPage.html','{requestScope}','show')">提醒</a></td>
                        <td>張偉信</td>
                        <td>2017-03-08 17:07</td>
                        <td>張偉信</td>
                        <td>2017-03-08 18:07</td>
                        <td>Y</td>
                        <td onclick="popEditorModal('${path}/background/editorPage.html','編輯','editor')"><b class="glyphicon glyphicon-pencil"></b></td>
                        <td><a onclick="popEditorModal('${path}/background/setTopPage.html','置顶','setTop')">置頂</a></td>
                        <td><a>取消置頂</a></td>
                        <td><b class="glyphicon glyphicon-trash" style="color: red;"></b></td>
                        <td><a>失效</a></td>
                        <td><a>生效</a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><img src=""></td>
                        <td><a href="">系統公告1</a></td>
                        <td>張偉信</td>
                        <td>2017-03-08 17:07</td>
                        <td>張偉信</td>
                        <td>2017-03-08 18:07</td>
                        <td>Y</td>
                        <td><img src=""></td>
                        <td><a>置頂</a></td>
                        <td><a>取消置頂</a></td>
                        <td><b class="glyphicon glyphicon-trash" style="color: red;"></b></td>
                        <td><a>失效</a></td>
                        <td><a>生效</a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><img src=""></td>
                        <td><a href="">系統公告2</a></td>
                        <td>張偉信</td>
                        <td>2017-03-08 17:07</td>
                        <td>張偉信</td>
                        <td>2017-03-08 18:07</td>
                        <td>Y</td>
                        <td><img src=""></td>
                        <td><a>置頂</a></td>
                        <td><a>取消置頂</a></td>
                        <td><b class="glyphicon glyphicon-trash" style="color: red;"></b></td>
                        <td><a>失效</a></td>
                        <td><a>生效</a></td>
                    </tr>
                </tbody>
            </table>
    </div>
    <!-- Modal -->
    <div style="" class="modal fade" id="editorPage" tabindex="-1" role="dialog" aria-labelledby="editorPageLabel">
        <div class="modal-dialog" role="document" style="width: 800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="editorPageLabel"></h4>
                </div>
                <div  class="modal-body">
                    	加載中...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary savabtn" id="save" onclick="save(this)">保存</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
</body>
<script type="text/javascript">
    function popEditorModal(url,describe,state) {
    	//动态给确定按钮添加id，以便确认跳转的后台方法
    	$(".savabtn").html("保存");
    	switch(state){
    		case "add" :
    			$(".savabtn").prop("id","addsave");
    			break;
    		case "editor" :
    			$(".savabtn").prop("id","editorsave");
    			break;
    		case "show" :
    			$(".savabtn").html("确定");
    			$(".savabtn").prop("id","previewsave");
    			break;
    		case "setTop" :
    			$(".savabtn").prop("id","setTopsave");
    			break;
    	}
    	$("#editorPageLabel").html(describe);
        $("#editorPage").modal();
        $("#editorPage .modal-body").load(url);
    }
   //不同情况下的确认按钮跳转
   function save(target){
   		switch ($(target).attr("id")){
   			case "addsave" :
    			alert("addsave");
    			break;
    		case "editorsave" :
    			alert("editorsave");
    			break;
    		case "previewsave" :
    			alert("previewsave");
    			break;
    		case "setTopsave" :
    			alert("setTopsave");
    			break;
   		}
   }
</script>
</html>