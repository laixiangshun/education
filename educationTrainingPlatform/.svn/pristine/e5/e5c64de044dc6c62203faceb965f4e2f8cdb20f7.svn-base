<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
  <head>
  	<title>userManagePopView</title>
  	<style type="text/css">
  		.form-control{
            width: 190px;
            display: inline-block;
        }

        .infotitle {
            width: 135px;
            text-align: right;
            display: inline-block;
        }
        .showinfo{
            margin-top: 10px;
        }
        .userCompany {
        	display: none;
        	position: absolute;
        	z-index: 10001;
        	width: 99.5%;
        	background-color: #ffffff;
        	padding:0 15px;
        	border-radius: 5px;
        	text-align: center;
        }
        .userCompany #popDisplay{
        	margin-bottom: 20px;
        }
        .userCompany #uniqueTree{
        	max-height: 115px;
        	overflow: auto;
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
  	</style>
  </head>
  <body>
  	<div class="">
  		<div class="shade"></div>
	  	<div class="showinfo">
	        <p class="infotitle">工號<font color="red"> *</font>：</p>
	        <input type="text" class="form-control">
	    </div>
	    <div class="showinfo">
	        <p class="infotitle">姓名<font color="red"> *</font>：</p>
	        <input type="text" class="form-control">
	    </div>
	    <div class="showinfo">
	        <p class="infotitle">角色<font color="red"> *</font>：</p>
	        <select class="form-control">
	        	<option>中央人資</option>
	        	<option>管理员</option>
	        </select>
	    </div>
	    <div class="showinfo text-btn-group" style="width: 100%">
	        <p class="infotitle">組織名稱<font color="red"> *</font>：</p>
	        <input type="text" class="form-control" style="width: 165px; margin-left: 5px;">
	        <button type="button" class="btn btn-xs btn-primary  glyphicon glyphicon-search" id="companyChoose" >
	        </button>
	    </div>
	    <div class="userCompany">
	    	<div id="popDisplay">
	    	
	    	</div>
		    <div>
		    	<button class="btn btn-xs btn-primary" id="popCommit" >確認</button>
		    	<button class="btn btn-xs" id="popClose" >關閉</button>
		    </div>
		    <input id="selectContent" value="" type="hidden"/>
		    <input id="selectId" value="" type="hidden"/>
    	</div>
	    <div class="showinfo">
	        <p class="infotitle">分機<font color="red"> *</font>：</p>
	        <input type="text" class="form-control">
	    </div>
	    <div class="showinfo">
	        <p class="infotitle">電子郵箱<font color="red"> *</font>：</p>
	        <input type="text" class="form-control">
	    </div>
	    <div class="showinfo">
	        <p class="infotitle">前台集體報名權限<font color="red"> *</font>：</p>
	        <select class="form-control">
	        	<option value="N" selected="selected">否</option>
	        	<option value="Y">是</option>
	        </select>
	    </div>
	    <div class="showinfo">
	        <p class="infotitle">是否有效<font color="red"> *</font>：</p>
	        <select class="form-control">
	        	<option value="Y" selected="selected">是</option>
	        	<option value="N">否</option>
	        </select>
	    </div>
    </div>
    <script type="text/javascript">
    	//顯示彈出層
    	$(document).ready(function(){
	    	$("#companyChoose").click(function(){
	    		var url="${path}/background/organizationManageChoose.html";
	    		$(".shade").show();
	    		$("#popDisplay").load(url);
	    		$(".userCompany").show();
	    	});
	    	$("#popClose").click(function(){
	    		$(".userCompany").hide();
	    		$(".shade").hide();
	    	});
	    	$("#popCommit").click(function(){
	    		$(".userCompany").hide();
	    		$(".shade").hide();
	    	});
	    });
	</script>
  </body>
</html>
