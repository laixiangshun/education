<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
  <head>
    <title>personalCourseManage</title>
    <style type="text/css">
    	.personalCourseManage .form-control{
    		width: 150px;
    		margin-right: 20px;
    	}
    	.personalCourseManage .search-title{
    		display: inline-block;
    		width: 120px;
    	}
    	.personalCourseManage .search-result{
    		margin-top: 20px;
    	}
    	.personalCourseManage .historyScore{
    		display: none;
    	}
    	#searchHistoryScore, .historyScore{
    		margin-left: 30%;
    	}
    </style>
  </head>
  <body>
    <div class="personalCourseManage">
    	<div class="search-group">
    		<div class="public-search">
	    		<p class="search-title">課程名稱：</p><input class="form-control">
	    		<p class="search-title">課程日期時間起：</p><input class="form-control">
	    		<p class="search-title">課程日期時間迄：</p><input class="form-control">
    		</div>
    		<div class="super-admin">
    			<div>
	    			<p class="search-title">次集團：</p><select class="form-control">
	    				<option>A次集團</option>
	    				<option>B次集團</option>
	    				<option>...</option>
	    			</select>
	    			<p class="search-title">事業群：</p><select class="form-control">
	    				<option>CESBG</option>
	    				<option>ADSBG</option>
	    				<option>...</option>
	    			</select>
	    			<p class="search-title">部門：</p><input class="form-control"><br>
	    			<p class="search-title">資位：</p><input class="form-control">
	    			<button class="btn btn-xs btn-primary" id="personalCourseImport" 
	    					onclick="personalCoursePop('${path}/foreground/personalCourseImport.html','import')">
	    				<b class="glyphicon glyphicon-save"></b> 匯入
	    			</button>
    				<button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-open"></b> 導出</button>
    			</div>
    		</div>
    		<div class="normal-user">
    			<p class="search-title">次集團：</p><select class="form-control">
	    				<option>A次集團</option>
	    				<option>B次集團</option>
	    				<option>...</option>
	    			</select>
	    			<p class="search-title">事業群：</p><select class="form-control">
	    				<option>CESBG</option>
	    				<option>ADSBG</option>
	    				<option>...</option>
	    			</select>
	    			<p class="search-title">部門：</p><input class="form-control"><br>
	    			<p class="search-title">技委會：</p><input class="form-control">
	    			<p class="search-title">姓名：</p><input class="form-control">
	    			<p class="search-title">工號：</p><input class="form-control"><br>
	    			<p class="search-title">年度應修學分：</p><input class="form-control">
    		</div>
    		<button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b> 查詢</button>
    	</div>
    	<div class="search-result">
    		<table class="table table-striped table-bordered table-hover">
    			<thead>
    				<tr>
    					<th>序號</th>
    					<th>次集團</th>
    					<th>事業群</th>
    					<th>部門</th>
    					<th>資位</th>
    					<th>工號</th>
    					<th>姓名</th>
    					<th>課程名稱</th>
    					<th>課程類別</th>
    					<th>上課日期</th>
    					<th>廠區</th>
    					<th>出席情形</th>
    				</tr>
    			</thead>
    			<tbody>
    				<tr>
    					<td>1</td>
    					<td>A次集團</td>
    					<td>CESBG</td>
    					<td>台北人資</td>
    					<td>師3</td>
    					<td>2000</td>
    					<td>林候選</td>
    					<td><a onclick="personalCoursePop('${path}/foreground/personalCourseDetail.html','教育訓練')">教育訓練</a></td>
    					<td>在職訓練(OJJ)</td>
    					<td>{2016/01/01 08:00}至{2016/01/01 10:00}</td>
    					<td>虎躍廠</td>
    					<td>出席</td>
    				</tr>
    				<tr>
    					<td>2</td>
    					<td>A次集團</td>
    					<td>CESBG</td>
    					<td>台北人資</td>
    					<td>師3</td>
    					<td>2000</td>
    					<td>林候選</td>
    					<td><a>資訊安全</a></td>
    					<td>在職訓練(OJJ)</td>
    					<td>{2016/01/01 10:00}至{2016/01/01 12:00}</td>
    					<td>虎躍廠</td>
    					<td>出席</td>
    				</tr>
    			</tbody>
    		</table>
    		<p><a id="searchHistoryScore">點擊查看---&gt;歷史學分查詢</a></p>
    		<div class="historyScore">
    			<p style="display: inline-block;">年份：</p>
    			<select class="form-control">
    				<option selected="selected">選擇年份</option>
    				<option value="2005">2005年</option>
    				<option value="2006">2006年</option>
    				<option>...</option>
    			</select>
    			<button class="btn btn-xs btn-primary">查詢</button>
    		</div>
    	</div>
    </div>
    <!-- Modal -->
    <div style="margin: 0;" class="modal fade" id="personalCourseManageModal" tabindex="-1" role="dialog" aria-labelledby="personalCourseManageModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="personalCourseManageModalLabel"></h4>
                </div>
                <div  class="modal-body" style="padding: 0;">
                   	 加載中...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-xs btn-primary" id="commit">確定</button>
                    <button type="button" class="btn btn-xs btn-primary" id="export" style="display: none;">導出錯誤信息</button>
                    <button type="button" class="btn btn-xs btn-default" data-dismiss="modal">關閉</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
  </body>
  <script type="text/javascript">
  	function personalCoursePop(url,describe){
  		if(describe == "import"){
  			$(".modal-title").html("匯入");
  			/* $(".modal-content").css("width","600px"); */
  		}else{
  			$(".modal-title").html(describe);
  			/* $(".modal-content").css("width","800px"); */
  		}
  		
  		$("#personalCourseManageModal").modal({backdrop: "static", keyboard: false});
  		if(url){
  			$("#personalCourseManageModal .modal-body").load(url);
  		}else {
			$("#personalCourseManageModal .modal-body").html("url為空，加載失敗...");
		}
  	}
  	$(document).ready(function(){
  		//控制歷史成績查詢按鈕的顯示
  		$("#searchHistoryScore").click(function(){
  			var state = $(".historyScore").css("display");
  			if(state == "none"){
  				$(".historyScore").css("display","inline");
  			}else{
  				$(".historyScore").css("display","none");
  			}
  		});
  	});
  </script>
</html>
