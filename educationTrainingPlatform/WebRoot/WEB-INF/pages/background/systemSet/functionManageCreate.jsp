<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<style type="text/css">
    #functionManageCreate>div{
        margin-bottom: 10px;
        text-align: left;
    }
    #functionManageCreate .dataName{
        display: inline-block;
        width: 100px;
    }
    #functionManageCreate input.form-control,
    #functionManageCreate select.form-control{
        width: 450px;
    }
    #functionManageCreate .text-btn-group input.form-control {
        width: 425px;
    }
    #functionManageCreate #createPop{
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

<div id="functionManageCreate">
    <div id="shade"></div>
    <div><span class="dataName">模組代碼<font color="red">*</font>：</span><input name="" type="text" id="functionManageCreate_modelID" class="form-control"/></div>
    <div><span class="dataName">順序號<font color="red">*</font>：</span><input type="text" class="form-control"/></div>
    <div>
        <span class="dataName">父模組：</span><div class="text-btn-group">
        <input id="fatherModelPop" type="text" class="form-control" />
        <button class="btn btn-xs btn-primary  glyphicon glyphicon-search"onclick="createrChooseFatherModel('${path}/background/functionManageChoose.html', '資料選擇器')"></button>
        </div>
    </div>
    <div id="createPop">
        <div id="createPop-body">
        </div>
        <div>
            <button class="btn btn-xs btn-primary" id="popCommit">確定</button>
            <button class="btn btn-xs" id="popClose" onclick="closePop()">關閉</button>
        </div>
    </div>
    <div><span class="dataName">窗口名稱<font color="red">*</font>：</span><input type="text" class="form-control"/></div>
    <div><span class="dataName">網頁地址：</span><input type="text" class="form-control"/></div>
    <div><span class="dataName">模組描述：</span><input type="text" class="form-control"/></div>
    <div>
        <span class="dataName">是否有效：</span><select class="form-control"><option>Y</option><option>N</option></select>
    </div>
    <div><span class="dataName">功能碼：</span><input type="text" class="form-control"/></div>
    <div><span class="dataName">功能描述：</span><input type="text" class="form-control"/></div>
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


