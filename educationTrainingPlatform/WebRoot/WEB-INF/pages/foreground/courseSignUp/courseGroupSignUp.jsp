<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>

<style type="text/css">
	#groupSignUp{
		text-align: left;
	}
	#groupSignUp .name{
		display: inline-block;		
		text-align: right;
	}
	#groupSignUp .name{
		width: 100px;
	}
	#groupSignUp .shortName{
		width: 50px;
	}
	#groupSignUp #createPop{
        display: none;
        width: 0%;
        height: 0%;
        position: absolute;
        z-index: 10001;
        left: 0;
        background-color: #ffffff;
        padding:0 15px;
        border-radius: 5px;
        box-shadow:0 0 10px #000000 ;
        text-align: center;
    }
    #groupSignUp #shade{
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
<div id="groupSignUp">
	<div id="shade"></div>
	<div class="search-div">
		<span class="name shortName">工號：</span>
		<input class="form-control" type="text"/>
		<span class="name">次集團：</span>
		<input class="form-control" type="text"/>
		<span class="name">事業群：</span>
		<input class="form-control" type="text"/>
	</div>
	<div class="search-div">
		<span class="name shortName">姓名：</span>
		<input class="form-control" type="text"/>
		<span class="name">電子郵件：</span>
		<input class="form-control" type="text"/>
	</div>
	<div class="search-div">
		<button class="btn btn-xs btn-primary">
			<b class="glyphicon glyphicon-search"></b>&nbsp;查詢
		</button>
		<button class="btn btn-xs btn-primary" id="importExcel">
			<b class="glyphicon glyphicon-save"></b>&nbsp;匯入
		</button>
		<button class="btn btn-xs btn-danger" id="importExcel">
			<b class="glyphicon glyphicon-trash"></b>&nbsp;删除
		</button>
	</div>
	<div id="createPop">
        <div id="createPop-body">
        </div>        
    </div>
	<div id="courseGroupSignUpData">
		<table class="table table-bordered table-striped table-condensed">
            <thead>
	            <tr>
	            	<th><input type="checkbox" id="selectAll"/></th>
	                <th>序號</th>
	                <th>次集團</th>
	                <th>事業群</th>
	                <th>工號</th>
	                <th>姓名</th>
	                <th>電子郵件</th>
	            </tr>
            </thead>
            <tbody>
	            <tr>
	            	<td><input type="checkbox"/></td>
	                <td>1</td>                
	                <td>A次集團</td>
	                <td>iDPBG</td>
	                <td>001</td>
	                <td>林后軒</td>
	                <td>123@mail.foxconn.com</td>
	            </tr>
	            <tr>
	            	<td><input type="checkbox"/></td>
	                <td>1</td>                
	                <td>A次集團</td>
	                <td>iDPBG</td>
	                <td>001</td>
	                <td>林后軒</td>
	                <td>123@mail.foxconn.com</td>
	            </tr>
	            <tr>
	            	<td><input type="checkbox"/></td>
	                <td>1</td>                
	                <td>A次集團</td>
	                <td>iDPBG</td>
	                <td>001</td>
	                <td>林后軒</td>
	                <td>123@mail.foxconn.com</td>
	            </tr>
        	</tbody>
    	</table>
	</div>
</div>
<script type="text/javascript">
	$("#importExcel").click(function(){
		/* 根據權限是否顯示匯入彈出框 */
		$("#shade").css("display", "block");
		$("#createPop").css("display", "block");
		$("#createPop").animate({width: "100%", height: "180px"}, 500);
		$("#createPop-body").load("${path}/foreground/courseGroupSignUpImportExcel.html");
	});
	
	
</script>