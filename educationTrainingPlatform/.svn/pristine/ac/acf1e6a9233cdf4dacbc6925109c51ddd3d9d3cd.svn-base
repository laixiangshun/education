<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<style type="text/css">
    #timetagCreate>div{
        margin-bottom: 10px;
        text-align: left;
    }
    #timetagCreate .dataName{
        display: inline-block;
        width: 100px;
    }
    #timetagCreate input.form-control,
    #timetagCreate select.form-control{
        width: 450px;
    }
    #timetagCreate .text-btn-group input.form-control {
        width: 425px;
    }
    #timetagCreate #createCoursePop,
    #timetagCreate #createRegionPop {
        display: none;
        width: 100%;
        position: fixed;
        z-index: 10001;
        left: 0;
        background-color: #ffffff;
        padding:0 15px;
        border-radius: 5px;
        box-shadow:0 0 10px #000000 ;
        text-align: center;
    }
    #shade{
        display: none;
        z-index: 10000;
        background-color: #000000;
        width: 100%;
        height: 100%;
        opacity: 0.3;
        position: fixed;
        top: 0;
        left: 0;
    }
</style>

<div id="timetagCreate">
    <div id="shade"></div>
    <div>
       <span class="dataName">課程名稱<font color="red">*</font>：</span>
       <div class="text-btn-group">
          <input type="text" id="courseChoosePop" class="form-control"/>
          <button class="btn btn-xs btn-primary  glyphicon glyphicon-search"onclick="createChooseCourse('${path}/background/courseChoose.html', '資料課程')"></button>
       </div>
    </div>
    <div id="createCoursePop">
        <div id="createCoursePop-body">
        </div>
        <div>
            <button class="btn btn-xs btn-primary" id="popCourseCommit">確定</button>
            <button class="btn btn-xs" id="popCourseClose" onclick="closeCoursePop()">關閉</button>
        </div>
        <div><br><br></div>
    </div>
    
        <div>
       <span class="dataName">廠區<font color="red">*</font>：</span>
       <div class="text-btn-group">
          <input type="text" id="regionChoosePop" class="form-control"/>
          <button class="btn btn-xs btn-primary  glyphicon glyphicon-search"onclick="createChooseRegion('${path}/background/regionChoose.html', '選擇廠區')"></button>
       </div>
    </div>
    <div id="createRegionPop">
        <div id="createRegionPop-body">
        </div>
        <div>
            <button class="btn btn-xs btn-primary" id="popRegionCommit">確定</button>
            <button class="btn btn-xs" id="popRegionClose" onclick="closeRegionPop()">關閉</button>
        </div>
        <div><br><br></div>
    </div>
    
    
    <div><span class="dataName">工號<font color="red">*</font>：</span>
         <input id="txtJobnum" type="text" class="form-control"/></div>
    <div><span class="dataName">姓名<font color="red">*</font>：</span>
         <input id="txtuserName" type="text" class="form-control" disabled/></div>
    <div>
        <span class="dataName">上課時間：<font color="red">*</font>：</span>
        <input id="dateEntry" type="text" class="form-control" onfocus="selectDate('dateEntry')" />
    </div>        
            <div><span class="dataName">下課時間：<font color="red">*</font>：</span>
                 <input id="dateLeave" type="text" class="form-control" onfocus="selectDate('dateLeave')" />
            </div>
    
    <div>
      <span class="dataName">下班時間<font color="red">*</font>：</span>
      <input id="dateOffduty" type="text" class="form-control" onfocus="selectDate('dateLeave')" />
    </div>
    <div><span class="dataName">備註：</span>
         <input id="txtRemark" type="text" class="form-control"/>
    </div>
     
     <div><span class="dataName">筆試：</span>
         <input id="txtWrittenexam" type="text" class="form-control"/>
     </div>
     <div><span class="dataName">口試：</span>
         <input id="txtEvalExam" type="text" class="form-control"/>
     </div>
    
</div>

<script type="text/javascript">
    $("#popCourseCommit").click(function () {
        /*提交數據*/
        $("#courseChoosePop").val($("#selectContent").val());
        closeCoursePop();
    });
    $("#createCoursePop").blur(function () {
        closeCoursePop();
    });
    
    function createChooseCourse(url, title){
        //$("#functionManageCreateModalLabel").html(title);
        //alert(url);
        //$('#functionManageCreateModal').modal({backdrop: "static", keyboard: false});
        if(url) {
            $("#createCoursePop").css("display", "block");
            $("#shade").css("display", "block");
            $("#createCoursePop-body").load(url);
        }else{
            $("#createCoursePop").css("display", "block");
            $("#shade").css("display", "block");
            $("#createCoursePop-body").html("url為空，加載失敗...");
        }
    }
    function closeCoursePop() {
        $("#createCoursePop").css("display", "none");
        $("#shade").css("display", "none");
        $("#createCoursePop-body").html("");
    }
    
    $("#popRegionCommit").click(function () {
      
        $("#regionChoosePop").val($("#selectContent").val());
        closeRegionPop();
    });
    $("#createRegionPop").blur(function () {
        closeRegionPop();
    });
    function createChooseRegion(url, title){
        //$("#functionManageCreateModalLabel").html(title);
        //alert(url);
        //$('#functionManageCreateModal').modal({backdrop: "static", keyboard: false});
        if(url) {
            $("#createRegionPop").css("display", "block");
            $("#shade").css("display", "block");
            $("#createRegionPop-body").load(url);
        }else{
            $("#createRegionPop").css("display", "block");
            $("#shade").css("display", "block");
            $("#createRegionPop-body").html("url為空，加載失敗...");
        }
    }
    function closeRegionPop() {
        $("#createRegionPop").css("display", "none");
        $("#shade").css("display", "none");
        $("#createRegionPop-body").html("");
    }
</script>
