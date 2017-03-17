<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
    <title>Title</title>
<head>
<style type="text/css">
    #capitalpositionExcelManage>div{
        margin-bottom: 10px;
        text-align:left;
        margin-left: 100px;
    }
    #capitalpositionExcelManage .dataName{
        display: inline-block;
        width: 110px;
         text-align:right;
    }
    #capitalpositionExcelManage input.form-control,
    #capitalpositionExcelManage select.form-control{
        width: 200px;
    }
    #capitalpositionExcelManage .text-btn-group input.form-control {
        width: 450px;
    }
    #capitalpositionExcelManage textarea.form-control {
        width: 450px;
        display: inline-block;
    }
    #capitalpositionExcelManage #createPop{
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
</head>
<body>
<div id="capitalpositionExcelManage">
	${requestScope.testData }
    <div id="shade"></div>
    <div>
    <span class="dataName">資位資料<font color="red">*</font>：</span> 
     <input type="file" name="fileUpload" class="form-control"  /> 
     </div>
     <div>
           <span class="dataName">範本下載：</span> <a href="#" ><span class="dataName">資位模板</span></a>
    </div>
    <div id="createPop">					
        <div id="createPop-body">
        </div>
        <div>
            <button class="btn btn-primary" id="popCommit">確定</button>
            <button class="btn" id="popClose" onclick="closePop()">關閉</button>
        </div>
    </div>
    
    
</div>

<script type="text/javascript">
    $("#popCommit").click(function () {
        /*提交數據*/
        $("#fatherModelPop").val($("#selectContent").val());
        closePop();
    });
    $("#createPop").blur(function () {
        closePop();
    });
    function createrChooseFatherModel(url, title){
        //$("#functionManageCreateModalLabel").html(title);
        //alert(url);
        //$('#functionManageCreateModal').modal({backdrop: "static", keyboard: false});
        if(url) {
            $("#createPop").css("display", "block");
            $("#shade").css("display", "block");
            $("#createPop-body").load(url);
        }else{
            $("#createPop").css("display", "block");
            $("#shade").css("display", "block");
            $("#createPop-body").html("url為空，加載失敗...");
        }
    }
    function closePop() {
        $("#createPop").css("display", "none");
        $("#shade").css("display", "none");
        $("#createPop-body").html("");
    }
</script>
</body>
</html>


