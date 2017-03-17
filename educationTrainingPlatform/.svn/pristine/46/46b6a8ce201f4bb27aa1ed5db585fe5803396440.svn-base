<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>createCourse</title>
    <style type="text/css">
    	#createCourse{
    		overflow: hidden;
    		width: 1200px;
    	}
    	#createCourse h3,
    	#createCourse h4{
    		color: #337AB7;
    	}
    	#createCourse .part{
    		overflow: hidden;
    		margin-left: 10px;
    	}
    	#createCourse .part-line{
    		border-bottom: 1px solid #337AB7;
    		margin-top: 5px 0;
    	}
    	#createCourse .left,
    	#createCourse .right{
    		float:left;
    	}
    	#createCourse .left,
    	#createCourse .right{
    		overflow: hidden;
    		width:440px;
    	}
    	#createCourse .item{
    		text-align: left;
    		margin-bottom: 10px;
    		overflow: hidden;
    	}
    	#createCourse .dataName{
    		display: block;
    		width:130px;
    		text-align: right;
    		float: left;
    		
    	}
    	#createCourse .part .form-control
    	{
    		display: block;
    		width: 300px;
    		float: left;
    	}  
    	#createCourse .part input.course-date{
    		width: 280px;
    		margin-bottom: 5px;
    	}
    	#createCourse .part .item .score{
    		margin-bottom:10px; 
    		width:100px;
    		float: none;
    		display: inline-block;
    	}
    	#createCourse .part textarea.form-control{
    		width: 750px;
    	}
    	#createCourse #managerCheck .dataName{
    		display: inline-block;
    	}
    	#createCourse #managerCheck .form-control{
    		display: inline-block;
    		width: 150px;
    	}
    	#createCourse #managerCheck select.form-control{
    		margin-left: 10px;
    	}
    	#createCourse #save-part{
    		text-align: center; 
    		margin: 10px 0;
    	}
    </style>
</head>
<body>
	<div id="createCourse">
	    <h3>開辦課程</h3>
	    <div class="part-line"></div>
	    <div class="part unit-part">
	    	<h4>開辦單位</h4>
	    	<div class="left">
	    		<div class="item">
		    		<span class="dataName">課程編號<font color="red">*</font>：</span>
		    		<input class="form-control" type="text" readonly="readonly" placeholder="系統自動生成"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">申請人工號<font color="red">*</font>：</span>
		    		<input class="form-control" type="text" readonly="readonly"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">申請人次集團<font color="red">*</font>：</span>
		    		<!-- <select class="form-control" >
		    			<option>A次集團</option>
		    			<option>B次集團</option>
		    			<option>C次集團</option>
		    		</select> -->
		    		<input class="form-control" value="A次集团" type="text" readonly="readonly"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">申請人事業處<font color="red">*</font>：</span>
		    		<input class="form-control" type="text"/>
	    		</div>
	    	</div>
	    	<div class="right">
	    		<div class="item">
		    		<span class="dataName">申請日期<font color="red">*</font>：</span>
		    		<input class="form-control" type="text" readonly="readonly"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">申請人姓名<font color="red">*</font>：</span>
		    		<input class="form-control" type="text" readonly="readonly"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">申請人事業群<font color="red">*</font>：</span>
		    		<!-- <select class="form-control">
		    			<option>台北人資</option>
		    			<option>中央人資</option>
		    		</select> -->
		    		<input class="form-control" value="台北人資" type="text" readonly="readonly"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">申請部門<font color="red">*</font>：</span>
		    		<input class="form-control" type="text"/>
	    		</div>
	    	</div>
	    </div>
	    <div class="part-line"></div>
	    <div class="part courseMessage-part">
	    	<h4>開辦單位</h4>
	    	<div class="left">
	    		<div class="item">
		    		<span class="dataName">課程名稱<font color="red">*</font>：</span>
		    		<input id="courseName" class="form-control" type="text"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">課程日期時間<font color="red">*</font>：</span>
		    		<input id="courseStartDate" class="form-control course-date" type="text" onfocus="selectDate('courseStartDate')" />&nbsp;至
		    		<input style="margin-left: 130px;" id="courseEndDate" class="form-control course-date" type="text" onfocus="selectDate('courseEndDate')"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">課程類別<font color="red">*</font>：</span>
		    		<div class="text-btn-group">
		                <input id="courseType" type="text" class="form-control" style="width: 275px;"/>
		                <button class="btn btn-xs btn-primary  glyphicon glyphicon-search"
		                        onclick="popCreateCourseModal('', '課程類別', 'courseType')">
		                </button>
		            </div>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">廠區<font color="red">*</font>：</span>
		    		<input class="form-control" type="text"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">&emsp;</span>		    		
	    		</div>
	    	</div>
	    	<div class="right">
	    		<div class="item">
		    		<span class="dataName">課程時數<font color="red">*</font>：</span>
		    		<input class="form-control" type="text" style="width:200px;"/>(以小時為單位)
	    		</div>
	    		<div class="item">
		    		<span class="dataName">報名截止時間<font color="red">*</font>：</span>
		    		<input id="signUpEndTime" class="form-control" type="text" onfocus="selectDate('signUpEndTime')"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">報名人數上限<font color="red">*</font>：</span>
		    		<input class="form-control" type="text"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">上課教室<font color="red">*</font>：</span>
		    		<input class="form-control" type="text"/>
	    		</div>	    		
	    		<div class="item">
		    		<span class="dataName">培訓對象<font color="red">*</font>：</span>
		    		<select class="form-control" id="tranningObject">
		    			<option value="歡迎有興趣的同仁參加(全體參加)">歡迎有興趣的同仁參加(全體參加)</option>
		    			<option value="資位">資位</option>
		    			<option value="技委會">技委會</option>
		    			<option value="事業群">事業群</option>
		    			<option value="其他">其他</option>
		    		</select>
	    		</div>	    		    		
	    		<div class="item" style="display: none" id="otherTranningObject-item">
		    		<span class="dataName">其他培訓對象：</span>
		    		<input class="form-control" type="text" id="otherTranningObject"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">&emsp;</span>		    		
	    		</div>		    		
	    	</div>	    	  	
	    </div>
	    <div class="part">
    		<div class="left">
    			<div class="item">
		    		<span class="dataName">上課文件：</span>
		    		<input type="file" style="display: inline-block;width:200px;"/>
		    		<button class="btn btn-xs btn-primary">上傳</button>
	    		</div>
    		</div>
    		<div class="right">		    		
	    		<div class="item">
		    		<span class="dataName">上課文件提供方式：</span>
		    		<select class="form-control" >
		    			<option>--請選擇--</option>
		    			<option>瀏覽</option>
		    			<option>下載</option>
		    		</select>
		    		<span class="dataName">(瀏覽/下載)</span>			    		
		    		<span class="dataName">只限PDF格式</span>
	    		</div>
    		</div>
    	</div>	  
	    <div class="part">
    		<div class="left">	    				    		
	    		<div class="item" >
		    		<span class="dataName">考核方式：</span>
		    		<div>(請必選一項，可複選)</div>
		    		<!-- <span class="dataName">&emsp;</span> -->
		    		<div style="width:300px; overflow: hidden; margin-left: 130px;">
		    			<input type="checkbox" id="panTest"/>筆試&emsp;&emsp;&emsp;
		    			筆試合格分數：<input class="form-control score" type="text" id="panTestQualifiedScore"/><br/>
		    			<input type="checkbox" id="panTest"/>口試&emsp;&emsp;&emsp;
		    			口試合格分數：<input class="form-control score" type="text" id="panTestQualifiedScore"/><br/>
		    			<input type="checkbox" id="panTest"/>問卷
		    		</div>		    		
	    		</div>
    		</div>
    	</div>
    	<div class="part">    				    		
    		<div class="item" >
	    		<span class="dataName">課程大綱：</span>
	    		<textarea rows="6" cols="100" maxlength="600" class="form-control"></textarea>	    		
    		</div>
    		<div class="item" >
	    		<span class="dataName">培訓目的：</span>
	    		<textarea rows="6" cols="100" maxlength="600" class="form-control"></textarea>	    		
    		</div>
    		<div class="item" >
	    		<span class="dataName">課程聯繫窗口咨詢：</span>
	    		<textarea rows="6" cols="100" maxlength="600" class="form-control"></textarea>	    		
    		</div>
    		<div class="item" >
	    		<span class="dataName">備註：</span>
	    		<textarea rows="6" cols="100" maxlength="600" class="form-control"></textarea>	    		
    		</div>
    	</div>
    	<div class="part-line"></div>
    	<div class="part">
    		<h4>講師資訊</h4>
    		<div class="left">
    			<div class="item">
		    		<span class="dataName">講師姓名<font color="red">*</font>：</span>
		    		<input type="text" class="form-control"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">講師email<font color="red">*</font>：</span>
		    		<input type="text" class="form-control"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">講師分類：</span>
		    		<select class="form-control">
		    			<option>--請選擇--</option>
		    			<option>內部講師</option>
		    			<option>外部講師</option>
		    		</select>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">講師最高學歷：</span>
		    		<input type="text" class="form-control"/>
	    		</div>
    		</div>
    		<div class="right">		    		
	    		<div class="item">
		    		<span class="dataName">講師電話<font color="red">*</font>：</span>
		    		<input type="text" class="form-control"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">講師現職<font color="red">*</font>：</span>
		    		<input type="text" class="form-control"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">講師證號：</span>
		    		<input type="text" class="form-control"/>
	    		</div>
	    		<div class="item">
		    		<span class="dataName">講師次高學歷：</span>
		    		<input type="text" class="form-control"/>
	    		</div>
    		</div>
    	</div>
    	<div class="part">    				    		
    		<div class="item" >
	    		<span class="dataName">講師經歷：</span>
	    		<textarea rows="6" cols="100" maxlength="600" class="form-control"></textarea>	    		
    		</div>
    		<div class="item" >
	    		<span class="dataName">講師專業領域：</span>
	    		<textarea rows="6" cols="100" maxlength="600" class="form-control"></textarea>	    		
    		</div>
    		<div class="item" >
	    		<span class="dataName">講師授課實績：</span>
	    		<textarea rows="6" cols="100" maxlength="600" class="form-control"></textarea>	    		
    		</div>
    	</div>
    	
	    <div class="part-line"></div>
    	<div class="part" id="managerCheck">
    		<h4>主管簽核</h4>    				    		
    		<div class="item" >
	    		<span class="dataName">審核主管1：</span>
	    		<input class="form-control" type="text"/>
	    		<select class="form-control">
	    			<option>--請選擇--</option>
	    		</select>&emsp;&emsp;
	    		<span class="dataName">審核主管職稱1：</span>
	    		<input class="form-control" type="text"/>
	    		<span class="dataName">審核主管email 1：</span>
	    		<input class="form-control" type="text"/>
	    		<button class="btn btn-xs btn-primary">添加審核主管</button>    		
    		</div>
    		<div class="item" >
	    		<span class="dataName">核准主管1：</span>
	    		<input class="form-control" type="text"/>
	    		<select class="form-control">
	    			<option>--請選擇--</option>
	    		</select>&emsp;&emsp;
	    		<span class="dataName">核准主管職稱1：</span>
	    		<input class="form-control" type="text"/>
	    		<span class="dataName">核准主管email 1：</span>
	    		<input class="form-control" type="text"/>
	    		<button class="btn btn-xs btn-primary">添加核准主管</button>    		
    		</div>
    		<div class="item" >
    			<span class="dataName">簽核進度：</span>
    			<input class="form-control" type="text"/>&emsp;
    			<button class="btn btn-xs btn-primary">發送</button>
    		</div>
    	</div>    	
	    <!-- <div class="part-line"></div> -->
    	<div class="part" id="save-part">
	    	<button class="btn ">保存</button>&emsp;&emsp;
	    	<button class="btn btn-primary">發送</button>
    	</div>	 
	</div>
	<!-- Modal -->
    <div style="" class="modal fade" id="createCourseModal" tabindex="-1" role="dialog" aria-labelledby="createCourseModalLabel">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="createCourseModalLabel"></h4>
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
	<script type="text/javascript">
		function popCreateCourseModal(url, title, operation){
			$("#createCourseModalLabel").html(title);
	        /* $("#createCourseModalLabel").attr("key", "function");
	        $("#createCourseModalLabel").attr("operation", operation); */
	        $("#createCourseModal").modal({backdrop: "static", keyboard: false});
	        if(url) {
	            $("#functionManageModal .modal-body").load(url);
	        }else{
	            $("#functionManageModal .modal-body").html("url為空，加載失敗...");
	        }
		}
		
		$("#tranningObject").change(function(){
			var option = $("#tranningObject").val();
			if(option == "其他"){
				$("#otherTranningObject-item").css("display", "block");
			}else{
				if(option == "資位"){
					popCreateCourseModal("", "資位", "");
				}
				if(option == "技委會"){
					popCreateCourseModal("", "技委會", "");
				}
				if(option == "事業群"){
					popCreateCourseModal("", "事業群", "");
				}
				$("#otherTranningObject-item").css("display", "none");				
			}
		});
		$('#functionManageModal').on('hide.bs.modal', function () {
	        // 执行一些动作...
	        $("#createCourseModal .modal-body").html("");//關閉時清空modal-body的內容
	        /* $("#createCourseModalLabel").removeAttr("operation");//清除標誌
	        $("#createCourseModalLabel").removeAttr("key");//清除標誌 */
	    });
	</script>
</body>
</html>