<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
    <title>Title</title>
<head>
<style type="text/css">
    #satisfactioncss>div{
        margin-bottom: 10px;
        text-align:left;
        margin-left: 100px;
    }
    #satisfactioncss .dataName{
        display: inline-block;
        width: 110px;
         text-align:right;
    }
    #satisfactioncss input.form-control,
    #satisfactioncss select.form-control{
        width: 200px;
    }
    #satisfactioncss .text-btn-group input.form-control {
        width: 450px;
    }
    #satisfactioncss textarea.form-control {
        width: 450px;
        display: inline-block;
    }
    /* #satisfactionQuestionnaire #createPop{
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
    } */
    
</style>
</head>
<body>
 <div align="center"><strong>课程调查问卷</strong></div>
<div id="satisfactioncss">
	<%-- ${requestScope.testData }
	
    <div id="shade"></div> --%>
    
    <div><span class="dataName">課程名稱：</span> 
    <input type="text" class="form-control"/>
          </div>
            <div>
            <span class="dataName">課程開始時間：</span>
            <input id="txtcoursedateStart"   onfocus="selectDate('txtcoursedateStart');" type="text" class="form-control"/>
            
     </div>
          <div>
            <span class="dataName">課程結束時間：</span>
            <input id="txtcoursedateOver"   onfocus="selectDate('txtcoursedateOver');" type="text" class="form-control"/>
            
     </div>
    <div>
    <span class="dataName">次集團：</span> 
    <select class="form-control">
                <option>ALL</option>
                <option>A次集團</option>
                <option>B次集團</option>
            </select>
    </div>
   
    <!-- <div id="createPop">					
        <div id="createPop-body">
        </div>
        <div>
            <button class="btn btn-primary" id="popCommit">確定</button>
            <button class="btn" id="popClose" onclick="closePop()">關閉</button>
        </div>
    </div> -->
   
    <div>
       <span class="dataName">事業群：</span>
       <input type="text" class="form-control"/>
    </div>
 
    <div>
        <span class="dataName">工&nbsp;號：</span>
        <input type="text" class="form-control"/>
   </div>
      <div>
         <span class="dataName">姓&nbsp;名：</span>
         <input type="text" class="form-control"/>
         </div>
</div>
         <div>
        <table  width="100%"  border="0px" >
        <tr >
        <td>
        </td>
         <td colspan="10">
        滿意---------------------------------------------------------------->不滿意
        </td>
        </tr>
         <tr>
           <td>
     
        </td>
        <td colspan="2">
        非常滿意
        </td>
         <td colspan="2">
        滿意
        </td>
           <td colspan="2">
       普通
        </td>
           <td colspan="2">
        不滿意
        </td>
           <td colspan="2">
        非常不滿意
        </td>
        
        
        </tr>
        <tr>
           <td>
     
        </td>
        <td width="50px">
        10
        </td>
         <td width="50px">
        9
        </td>
           <td width="50px">
        8
        </td>
           <td width="50px">
        7
        </td>
           <td width="50px">
        6
        </td>
           <td width="50px">
        5
        </td>
           <td width="50px">
        4
        </td>
           <td width="50px">
        3
        </td>
           <td width="50px">
        2
        </td>
           <td width="50px">
        1
        </td>
        
        </tr>
        
        <tr>
           <td width="100px">
     <span class="dataName">1-1課程內容設計與主題一致性</span> 
        </td>
        <td>
        <input type="checkbox" value="data1" id="data10"/>
        </td>
         <td>
         <input type="checkbox" value="data1" id="data9"/>
        </td>
           <td>
        <input type="checkbox" value="data1" id="data8"/>
        </td>
           <td>
       <input type="checkbox" value="data1" id="data7"/>
        </td>
           <td>
        <input type="checkbox" value="data1" id="data6"/>
        </td>
           <td>
       <input type="checkbox" value="data1" id="data5"/>
        </td>
           <td>
        <input type="checkbox" value="data1" id="data4"/>
        </td>
           <td>
        <input type="checkbox" value="data1" id="data3"/>
        </td>
           <td>
        <input type="checkbox" value="data1" id="data2"/>
        </td>
           <td>
        <input type="checkbox" value="data1" id="data1"/>
        </td>
        
        </tr>
        </table>
         </div>
         <div  id="satisfactioncss" >
    <div> 4-4.未來若再次邀請本講師授課，你會推薦同仁參加此課程的意願？（請說明）（此題情填寫10個字以上）</div>
    <div >
      
       <textarea class="form-control"  rows="6" cols="70" style="width:300px;vertical-align:top" maxlength="420"></textarea>
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


