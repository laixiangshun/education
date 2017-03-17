<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
  <head>
  	<title>personalCourseDetail</title>
  	<style type="text/css">
  		.ask-for-leave{
  			text-align: left;
  			padding-left: 30%;
  			display: none;
  			position: absolute;
        	z-index: 10001;
        	width: 100%;
        	background-color: #ffffff ;
        	padding:0 15px;
        	border-radius: 5px;
        	text-align: center;
        	top:30px;
  		}
  		.shade{
  			display: none;
        	z-index:10000;
        	background-color:#000000;
        	width: 100%;
        	height: 100%;
        	position: fixed;
        	opacity: 0.3;
        	top: 0;
        	left: 0;
  		}
  		.ask-for-leave .infotitle{
  			display: inline-block;
  			width: 100px;
  			text-align: right;
  		}
  		.ask-for-leave .form-control{
  			width: 190px;
  		}
  		.my-button-group{
  			margin: 20px 0px 10px 0px;
  		}
  		.satisfactionQuestionnaire{
  			display: none;
  			position: absolute;
        	z-index: 10001;
        	width: 100%;
        	background-color: #ffffff ;
        	padding:0 15px;
        	border-radius: 5px;
        	text-align: center;
        	top: 0;
  		}
  	</style>
  </head>
  
  <body>
  	<div class="shade"></div>
  	<div class="satisfactionQuestionnaire">
    		<div class="satisfactionQuestionnaire-content"></div>
    		<div class="my-button-group">
	    		<button class="btn btn-xs btn-primary" id="satisfactionQuestionnaireCommit" >確認</button>
				<button class="btn btn-xs" id="satisfactionQuestionnaireClose" >關閉</button>
			</div>
    	</div>
    <div class="personalCourseDetail">
    	<div class="ask-for-leave">
    		<p style="padding-left: 10px; color: white;background-color: #337AB7; width: 80px;">請假</p>
    		<p class="infotitle">課程名稱：</p><input class="form-control" value="鴻海教育訓練課程" readonly>
    		<div class="showinfo text-btn-group" style="width: 100%">
		        <p class="infotitle">課程日期時間：</p>
		        <input type="text" class="form-control" id="showStartDate" style="width: 165px;"
		        		onfocus="selectDate('showStartDate');" readonly>
		        <button type="button" class="btn btn-xs btn-primary  glyphicon glyphicon-calendar"
		        		id="dateChooseS" onclick="selectDate('showStartDate');" >
		        </button>
		       	
    		</div>
    		<div class="showinfo text-btn-group" style="width: 100%;margin-bottom: 20px;">
		        <p class="infotitle">至：</p>
		        <input type="text" class="form-control" id="showEndDate" style="width: 165px;"
		        		onfocus="selectDate('showEndDate');" readonly>
		        <button type="button" class="btn btn-xs btn-primary  glyphicon glyphicon-calendar"
		        		id="dateChooseE" onclick="selectDate('showEndDate');" >
		        </button>
    		</div>
    		<p class="infotitle">請假理由：</p><textarea class="form-control" style="display: inline-block;"></textarea>
    		<div class="my-button-group">
    			<button class="btn btn-xs btn-primary" id="popCommit" >確認</button>
			    <button class="btn btn-xs" id="popClose" >關閉</button>
    		</div>
    	</div>
    	
    	<table class="table table-striped table-bordered table-hover">
    		<thead>
    			<tr>
    				<th colspan="3">考核方式</th>
    				<th rowspan="2">學分登錄</th>
    				<th rowspan="2">所得學分</th>
    				<th rowspan="2" colspan="3">報名情形</th>
    				<th rowspan="2">上課文件下載</th>
    			</tr>
    			<tr>
    				<th>筆試成績</th>
    				<th>口試成績</th>
    				<th>問卷填寫</th>
    			</tr>
    		</thead>
    		<tbody>
    			<tr>
    				<td>71/70</td>
    				<td>無</td>
    				<td>已填寫</td>
    				<td>已登錄</td>
    				<td>2</td>
    				<td>報名</td>
    				<td>/</td>
    				<td>請假</td>
    				<td><a>下載</a></td>
    			</tr>
    			<tr>
    				<td>無</td>
    				<td>90/70</td>
    				<td><a onclick="doSatisfactionQuestionnaire('課後滿意度問卷')">未填寫</a></td>
    				<td>未登錄</td>
    				<td>0</td>
    				<td>報名</td>
    				<td>/</td>
    				<td>請假</td>
    				<td><a>下載</a></td>
    			</tr>
    			<tr>
    				<td>無</td>
    				<td>無</td>
    				<td><a>未填寫</a></td>
    				<td>未登錄</td>
    				<td>0</td>
    				<td>報名</td>
    				<td>/</td>
    				<td><a onclick="showShade();">請假</a></td>
    				<td><a>瀏覽</a></td>
    			</tr>
    		</tbody>
    	</table>
    </div>
    <script type="text/javascript">
    	function showShade(){
    		$(".shade").show();
    		$(".ask-for-leave").show();
    	}
    	function doSatisfactionQuestionnaire(describe){
    		$(".modal-title").html(describe);
    		$(".satisfactionQuestionnaire").show();
    		$(".satisfactionQuestionnaire-content").load("${path}/foreground/satisfactionQuestionnaire.html");
    	}
    	$("#satisfactionQuestionnaireCommit").click(function(){
    		$(".satisfactionQuestionnaire").hide();
    		$(".shade").hide();
    	});
    	$("#satisfactionQuestionnaireClose").click(function(){
    		$(".satisfactionQuestionnaire").hide();
    		$(".shade").hide();
    	});
    	
    	$("#popClose").click(function(){
    		$(".shade").hide();
    		$(".ask-for-leave").hide();
    	});
    </script>
  </body>
</html>