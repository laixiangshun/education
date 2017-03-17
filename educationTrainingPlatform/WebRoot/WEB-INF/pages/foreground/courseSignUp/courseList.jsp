<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>

<style type="text/css">
	#courseList .name,
	#courseList .shortName{
		display: inline-block;		
		text-align: right;
	}
	#courseList .name{
		width: 130px;
	}
	#courseList .shortName{
		width: 100px;
	}
	
</style>

<div id="courseList">
	<h3>課程報名</h3>
	<div class="search-div">
		<span class="name shortName">課程名稱：</span>
		<input class="form-control" type="text"/>
		<span class="name">課程日期時間起：</span>
		<input class="form-control" type="text"/>
		<span class="name">課程日期時間止：</span>
		<input class="form-control" type="text"/>
	</div>
	<div class="search-div">
		<span class="name shortName">廠區：</span>
		<input class="form-control" type="text"/>
		<span class="name">關鍵字：</span>
		<input class="form-control" type="text"/>
		<span class="name">講師：</span>
		<input class="form-control" type="text"/>&emsp;&emsp;
		<button class="btn btn-xs btn-primary">
			<b class="glyphicon glyphicon-search"></b>&nbsp;查詢
		</button>
	</div>
	<div id="courseListData">
		<table class="table table-bordered table-striped table-condensed">
            <thead>
            <tr>
                <th>序號</th>
                <th>課程名稱</th>
                <th>課程日期時間</th>
                <th>課程時數</th>
                <th>報名截止時間</th>
                <th>個人報名</th>
                <th>團體報名</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>                
                <td><a href="#" onclick="popCourseSignUpModal('uniqueId', '${path}/foreground/popCourseNotice.html', '課程資訊', 'courseInfo')">鴻海教育課程</a></td>
                <td>2015/11/01 08:00 至  2015/11/01 10:00</td>
                <td>2</td>
                <td>2015/11/01</td>
                <td><a href="#" onclick="popCourseSignUpModal('uniqueId', '${path}/foreground/courseSignUp.html', '填寫基本資料', 'signUp')">報名</a></td>
                <td><a href="#" onclick="popCourseSignUpModal('uniqueId', '${path}/foreground/courseGroupSignUp.html', '團體報名', 'groupSignUp')">報名</a></td>
            </tr>
            <tr>
                <td>2</td>                
                <td><a href="#" onclick="popCourseSignUpModal('uniqueId', '${path}/foreground/popCourseNotice.html', '課程資訊', 'courseInfo')">勞工安全訓練課程</a></td>
                <td>2015/11/01 08:00 至  2015/11/01 10:00</td>
                <td>2</td>
                <td>2015/11/01</td>
                <td><a href="#" onclick="popCourseSignUpModal('uniqueId', '${path}/foreground/courseSignUp.html', '填寫基本資料', 'signUp')">報名</a></td>
                <td><a href="#" onclick="popCourseSignUpModal('uniqueId', '${path}/foreground/courseGroupSignUp.html', '團體報名', 'groupSignUp')">報名</a></td>
            </tr>
            </tbody>
        </table>
        <div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="next(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="next(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="next(this)">2</a></li>
                <li><a onclick="next(this)">3</a></li>
                <li><a onclick="next(this)">4</a></li>
                <li><a onclick="next(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="next(this)">lastPage</a></li>
                <li>
                    <a onclick="next(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
	</div>
	<!-- Modal -->
    <div style="" class="modal fade" id="courseListModal" tabindex="-1" role="dialog" aria-labelledby="courseListModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="courseListModalLabel"></h4>
                </div>
                <div  class="modal-body">
                    加載中...
                </div>
                <div class="modal-footer">
                    <!-- 根據情況加入按鈕 -->
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
</div>
<script type="text/javascript">
	function popCourseSignUpModal(uniqueId, url, title, operation){
		$("#courseListModalLabel").html(title);
		if("courseInfo" == operation){
			$("#courseListModal .modal-dialog").css("width", "800px");
			$("#courseListModal .modal-footer").html("<button id='close' type='button' class='btn btn-default' data-dismiss='modal'>關閉</button>");
		}else if("groupSignUp" == operation){
			$("#courseListModal .modal-dialog").css("width", "850px");
			$("#courseListModal .modal-footer").html("<button id='commit' class='btn btn-primary'>送出</button>");
		}else{
			$("#courseListModal .modal-footer").html("<button id='commit' class='btn btn-primary'>送出</button>");
		}		
		$("#courseListModal").modal({backdrop: "static", keyboard: false});
        $("#courseListModal .modal-body").load(url);
	}
	
	$('#courseListModal').on('hide.bs.modal', function () {
        // 执行一些动作...
        $("#courseListModal .modal-body").html("");//關閉時清空modal-body的內容
        /* $("#functionManageModalLabel").removeAttr("operation");//清除標誌
        $("#functionManageModalLabel").removeAttr("key");//清除標誌 */
    });
</script>