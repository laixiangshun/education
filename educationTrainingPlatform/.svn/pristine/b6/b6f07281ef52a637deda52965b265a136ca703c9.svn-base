<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
    <title>Title</title>
<head>
<style type="text/css">
    #instructorInformationInfo>div{
        margin-bottom: 10px;
        text-align:left;
        margin-left: 100px;
    }
    #instructorInformationInfo .dataName{
        display: inline-block;
        width: 110px;
         text-align:right;
    }
    #instructorInformationInfo input.form-control,
    #instructorInformationInfo select.form-control{
        width: 200px;
    }
    #instructorInformationInfo .text-btn-group input.form-control {
        width: 450px;
    }
    #instructorInformationInfo textarea.form-control {
        width: 450px;
        display: inline-block;
    }
    
    #instructorInformationInfo #shade{
        display: none;
        z-index: 10000;
        background-color: #000000;
        width: 100%;
        height: 100%;
        opacity: 0.3;
        position: fixed;
        top: 0;
        left: 0;
        margin-left: 0;	
    }
     #satisfactionQuestionnaire{
  			display: none;
  			position: absolute;
  			top:70%;
  			left:0;
        	z-index: 10001;
        	width: 100%;
        	background-color: #ffffff ;
        	padding:0 15px;
        	border-radius: 5px;
        	text-align: center; 
  		}
</style>
</head>
<body>
<div id="instructorInformationInfo">
	${requestScope.testData }
    <div id="shade"></div>
    <div>
    <div><strong>基本資料</strong></div>
    <span class="dataName">現職<font color="red">*</font>：</span> 
     <input type="text" class="form-control"/>
     </div>
     <div>
              <span class="dataName">講師類別<font color="red">*</font>：</span>
             <select class="form-control">
                <option>ALL</option>
                <option>外部講師</option>
                <option>內部講師</option>
            </select>
    </div>
     <div>
    <span class="dataName">最高學歷<font color="red">*</font>：</span> 
      <input type="text" class="form-control"/>
     </div>
         <div>
    <span class="dataName">次高學歷<font color="red">*</font>：</span> 
      <input type="text" class="form-control"/>
     </div>
          <div>
    <span class="dataName">證書編號：</span> 
       <input type="text" class="form-control"/>
     </div>
      <div>
      <span class="dataName">經歷：</span> 
      <textarea  class="form-control"  rows="6" cols="70"  style="width:300px;vertical-align:top" maxlength="420" ></textarea>
     </div>
      <div>
      <span class="dataName">專業領域：</span> 
      <textarea  class="form-control"  rows="6" cols="70"  style="width:300px;vertical-align:top" maxlength="420" ></textarea>
     </div>
      <div>
      <span class="dataName">授課實際：</span> 
      <textarea  class="form-control"  rows="6" cols="70"  style="width:300px;vertical-align:top" maxlength="420" ></textarea>
     </div>
      <div>
      <span class="dataName">備註：</span> 
      <textarea  class="form-control"  rows="6" cols="70"  style="width:300px;vertical-align:top" maxlength="420" ></textarea>
     </div>
      <div>
      <span class="dataName">平均滿意度<font color="red">*</font>：</span> 
      <input type="text" class="form-control"/>
     </div>
      <div><strong>課程歷程</strong></div>
           <div>
      <span class="dataName">課程名稱<font color="red">*</font>：</span> 
      <input type="text" class="form-control"/>
     </div>
          <div>
      <span class="dataName">課程類別<font color="red">*</font>：</span> 
      <input type="text" class="form-control"/>
     </div>
     <div>
         課程日期時間起： <input id="txtcurriculuminfodateStart"   onfocus="selectDate('txtcurriculuminfodateStart');" type="text" class="form-control"/>
     </div>
     <div>
          課程日期時間迄： <input id="txtcurriculuminfodateOver"   onfocus="selectDate('txtcurriculuminfodateOver');" type="text" class="form-control"/>
     </div>   
      <div class="search-div">
        <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
        </div>
        
        <div id="instructorinformationManageData">
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th>序號</th>
                    <th>課程名稱</th>
                    <th>課程日期</th>
                     <th>課程類別</th>
                      <th>課程滿意度</th>
                      <th>整體滿意度</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                     
                 <td>
                    <a   onclick="doSatisfactionQuestionnaire()">勞工委員會</a>
                </td>   
                 <td>2011-10-20 10:22:33~2011-10-20 23:22:33</td> 
                  <td>在職培訓</td>   
                   <td>72分</td>
                    <td>60分</td> 
                </tr>
            </tbody>
        </table>
        <div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="instructorinformationinfoSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="instructorinformationinfoSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="instructorinformationinfoSelectPage(this)">2</a></li>
                <li><a onclick="instructorinformationinfoSelectPage(this)">3</a></li>
                <li><a onclick="instructorinformationinfoSelectPage(this)">4</a></li>
                <li><a onclick="instructorinformationinfoSelectPage(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="instructorinformationinfoSelectPage(this)">lastPage</a></li>
                <li>
                    <a onclick="instructorinformationinfoSelectPage(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
        
</div>


	<div id="satisfactionQuestionnaire">
   		<div id="satisfactionQuestionnaire-content"></div>
   		<div class="my-button-group">
    		<button class="btn btn-xs btn-primary" id="satisfactionQuestionnaireCommit" >確認</button>
			<button class="btn btn-xs" id="satisfactionQuestionnaireClose" >關閉</button>
		</div>
   	</div>
<script type="text/javascript">

    function instructorinformationinfoSelectPage(obj){
        /*翻页，获取数据，将其填充到页面上
         *
         *
         */
        $(".pagination li").removeClass("active");
        $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
    }




    function doSatisfactionQuestionnaire(){
    		$("#shade").show();
    		$("#satisfactionQuestionnaire").css("display", "block");
    		$("#satisfactionQuestionnaire-content").load("${path}/foreground/satisfactionQuestionnaire.html");
    	}
    	$("#satisfactionQuestionnaireCommit").click(function(){
    		$("#satisfactionQuestionnaire").hide();
    		$("#shade").hide();
    	});
    	$("#satisfactionQuestionnaireClose").click(function(){
    		$("#satisfactionQuestionnaire").hide();
    		$("#shade").hide();
    	});
    	
    	$("#popClose").click(function(){
    		$("#shade").hide();
    		$("#ask-for-leave").hide();
    	});
</script>
</body>
</html>


