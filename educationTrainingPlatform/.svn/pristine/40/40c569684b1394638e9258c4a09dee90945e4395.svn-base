<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
	<style type="text/css">
		#courseManage .searchName{
			display: inline-block;
			width:130px;
			text-align: right;
		}
	</style>
	
</head>
<body>
<div id="courseManage">
    <h3>管理開辦課程</h3>
    <div class="search-div">
    	<span class="searchName">事業群：</span>
    	<select class="form-control">
    		<option>--請選擇--</option>
    	</select>    	
    	<span class="searchName">教室：</span>
    	<select class="form-control">
    		<option>--請選擇--</option>
    	</select>
    	<span class="searchName">關鍵字：</span>
    	<input type="text" class="form-control"/>
    	<span class="searchName">報名狀態：</span>
    	<select class="form-control short-control">
    		<option>報名中</option>
    		<option>報名結束</option>
    		<option>未報名</option>
    	</select>&emsp;&emsp;&emsp;
    </div>
    <div class="search-div">
    	<span class="searchName">報名截止日期起：</span>
    	<input id="signUpStartDate" type="text" class="form-control" onfocus="selectDate('signUpStartDate')"/>    	
    	<span class="searchName">報名截止日期止：</span>
    	<input id="signUpEndDate" type="text" class="form-control" onfocus="selectDate('signUpEndDate')"/>
    	
    	<span class="searchName">全集團名單：</span>
    	<select class="form-control short-control">
    		<option>否</option>
    		<option>是</option>
    	</select>
    	<span class="searchName">課程狀態：</span>
    	<select class="form-control short-control">
    		<option>已開辦</option>
    		<option>申請中</option>
    	</select>
    </div>
    <div class="search-div">
    	<span class="searchName">課程日期時間起：</span>
    	<input id="courseStartDate" type="text" class="form-control" onfocus="selectDate('courseStartDate')"/>    	
    	<span class="searchName">課程日期時間止：</span>
    	<input id="courseEndDate" type="text" class="form-control" onfocus="selectDate('courseEndDate')"/>
    	
    	<span class="searchName">全集團名單：</span>
    	<select class="form-control short-control">
    		<option>--請選擇--</option>
    		<option>2016</option>
    		<option>2017</option>
    	</select>    	
    </div>
    <div class="search-div">
    	<button class="btn btn-xs btn-primary">
    		<b class="glyphicon glyphicon-search"></b>&nbsp;查詢
    	</button>
         <button class="btn btn-xs btn-primary">
         	<b class="glyphicon glyphicon-refresh"></b>&nbsp;重置
         </button>
         <button class="btn btn-xs btn-primary" onclick="popCourseManageModal('', '修改', 'courseModify')">
             <b class="glyphicon glyphicon-pencil"></b>&nbsp;修改
         </button>
         <button class="btn btn-xs btn-primary">
         	<b class="glyphicon glyphicon-lock"></b>&nbsp;關閉報名
         </button>
         <button class="btn btn-xs btn-primary">
             <b class="glyphicon glyphicon-pencil"></b>&nbsp;公告
         </button>
         <button class="btn btn-xs btn-primary">
             <b class="glyphicon glyphicon-open"></b>&nbsp;導出
         </button>
         <button class="btn btn-xs btn-primary" onclick="popCourseManageModal('${path}/background/excelInput.html', 'Excel匯入', 'excelInput')">
             <b class="glyphicon glyphicon-save"></b>&nbsp;Excel匯入
         </button>
         <button class="btn btn-xs btn-primary" onclick="popCourseManageModal('${path}/background/creditInput.html', '學分匯入', 'creditInput')">
             <b class="glyphicon glyphicon-save"></b>&nbsp;學分匯入
         </button>
         <button class="btn btn-xs btn-primary">
             <b class="glyphicon glyphicon-save"></b>&nbsp;多廠區實績人數表
         </button>
     </div>
     <div id="courseData">
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th></th>
                    <th><input type="checkbox" value="all" id="selectAll"/></th>
                    <th>課程名稱</th>
                    <th>開課日期時間</th>
                    <th>課程時數</th>
                    <th>報名截止日期</th>
                    <th>教室</th>
                    <th>報名人數上限</th>
                    <th>修改日期</th>
                    <th>修改</th>
                    <th>賬號</th>
                    <th>詳細資訊</th>
                    <th>事業群</th>
                    <th>報名狀態</th>
                    <th>小節報告</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>鴻海教育訓練</td>
                    <td>2017/03/14 15:59 至  2017/03/14 17:59</td>
                    <td>2</td>
                    <td>2017/03/13</td>
                    <td>206</td>
                    <td>100</td>
                    <td>2017/03/16</td>
                    <td>DRI</td>
                    <td></td>
                    <td><a href="#">詳細資訊</a></td>
                    <td>台北人資</td>
                    <td>Y</td>
                    <td><a href="#">下載</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>鴻海教育訓練</td>
                    <td>2017/03/14 15:59 至  2017/03/14 17:59</td>
                    <td>2</td>
                    <td>2017/03/13</td>
                    <td>206</td>
                    <td>100</td>
                    <td>2017/03/16</td>
                    <td>DRI</td>
                    <td></td>
                    <td><a href="#">詳細資訊</a></td>
                    <td>台北人資</td>
                    <td>Y</td>
                    <td><a href="#">下載</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>鴻海教育訓練</td>
                    <td>2017/03/14 15:59 至  2017/03/14 17:59</td>
                    <td>2</td>
                    <td>2017/03/13</td>
                    <td>206</td>
                    <td>100</td>
                    <td>2017/03/16</td>
                    <td>DRI</td>
                    <td></td>
                    <td><a href="#">詳細資訊</a></td>
                    <td>台北人資</td>
                    <td>Y</td>
                    <td><a href="#">下載</a></td>
                </tr>
             </tbody>
       	</table>
       	<div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="functionManageSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="functionManageSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="functionManageSelectPage(this)">2</a></li>
                <li><a onclick="functionManageSelectPage(this)">3</a></li>
                <li><a onclick="functionManageSelectPage(this)">4</a></li>
                <li><a onclick="functionManageSelectPage(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="functionManageSelectPage(this)">lastPage</a></li>
                <li>
                    <a onclick="functionManageSelectPage(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
   	</div>
   	<!-- Modal -->
    <div style="" class="modal fade" id="courseManageModal" tabindex="-1" role="dialog" aria-labelledby="courseManageModalLabel">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="courseManageModalLabel"></h4>
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
 	function popCourseManageModal(url, title, operation) {
        $("#courseManageModalLabel").html(title);
        /* $("#courseManageModalLabel").attr("key", "function");
        $("#courseManageModalLabel").attr("operation", operation); */
        $("#courseManageModal").modal({backdrop: "static", keyboard: false});
        if(url) {
            $("#courseManageModal .modal-body").load(url);
        }else{
            $("#courseManageModal .modal-body").html("url為空，加載失敗...");
        }
    }
    function functionManageSelectPage(obj){
        /*翻页，获取数据，将其填充到页面上
         *
         *
         */
        $(".pagination li").removeClass("active");
        $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
    }
    $('#functionManageModal').on('hide.bs.modal', function () {
        // 执行一些动作...
        $("#functionManageModal .modal-body").html("");//關閉時清空modal-body的內容
        /* $("#courseManageModalLabel").removeAttr("operation");//清除標誌
        $("#courseManageModalLabel").removeAttr("key");//清除標誌 */
    })
 </script>   
</body>
</html> 