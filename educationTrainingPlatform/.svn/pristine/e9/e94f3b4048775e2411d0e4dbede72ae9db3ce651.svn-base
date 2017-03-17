<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        #organizationManageCreate>div{
            margin-bottom: 10px;
            text-align: left;
        }
        #organizationManageCreate .name{
            display: inline-block;
            width: 100px;
        }
        #organizationManageCreate input.form-control,
        #organizationManageCreate select.form-control{
            width: 450px;
        }
        #organizationManageCreate .text-btn-group input.form-control{
            width: 425px;
        }
        #organizationManageCreate #createPop{
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
    <div id="organizationManageCreate">
    	<div id="shade"></div>
        <div>
            <span class="name">組織名稱<font color="red">*</font>：</span>
            <input class="form-control" type="text"/>
        </div>
        <div>
            <span class="name">父組織：</span>
            <div class="text-btn-group">
                <input class="form-control" type="text" id="fatherModelPop"/>
                <button class="btn btn-xs btn-primary  glyphicon glyphicon-search"
                	onclick="createrChooseFatherModel('${path}/background/organizationManageChoose.html', '資料選擇器')"></button>
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
        <!-- <div>
            <span class="name">層級名稱<font color="red">*</font>：</span>
            <select class="form-control">
                <option>集團</option>
                <option>子集團</option>
                <option>事業處</option>
            </select>
        </div> -->
        <div>
            <span class="name">順序號：</span>
            <input class="form-control" type="text"/>
        </div>
        <div>
            <span class="name">是否有效：</span>
            <select class="form-control">
                <option>是</option>
                <option>否</option>
            </select>
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