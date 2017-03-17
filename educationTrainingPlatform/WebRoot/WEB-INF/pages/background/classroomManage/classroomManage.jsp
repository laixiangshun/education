<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
</head>
<body>
<div id="classroomManage">
    <h3>會議室/教室預約列表</h3>
    <div class="search-div">
        <div class="search-div">
         &emsp;教&emsp;&emsp;室：
              <select class="form-control">
                <option>ALL</option>
                <option>206-阿基米德教室</option>
                <option>教室B</option>
                <option>教室C</option>
            </select>
            教室預約狀況：
           <select class="form-control">
                <option>ALL</option>
                <option>預約中</option>
                <option>取消預約</option>
                <option>已預約</option>
                <option>拒絕預約</option>
            </select>
           

            &emsp;使用日期時間起：
            <input id="txtusedateStart"     onfocus="selectDate('txtusedateStart');" type="text" class="form-control"/>
           使用日期時間止：
            <input id="txtusedateOver"    onfocus="selectDate('txtusedateOver');" type="text" class="form-control"/>   
        </div>
           <div class="search-div">

            借用日期起：
            <input id="txtborrowdateStart"   onfocus="selectDate('txtborrowdateStart');" type="text" class="form-control"/>
            &emsp;借用日期止：
            <input id="txtborrowdateOver"   onfocus="selectDate('txtborrowdateOver');" type="text" class="form-control"/>
             
            
             
        </div>
        <div class="search-div">
        <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
           <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-refresh"></b>&nbsp;重置</button>
            <button class="btn btn-xs btn-primary" onclick="popclassroomManageModal('${path}/background/classroomCreate.html', '新增', 'create')">
                <b class="glyphicon glyphicon-plus-sign"></b>&nbsp;新增
            </button>
            <button class="btn btn-xs btn-primary" onclick="popclassroomManageModal('${path}/background/classroomModify.html', '修改', 'modify')">
                <b class="glyphicon glyphicon-pencil"></b>&nbsp;修改
            </button>
            <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-download-alt"></b>&nbsp;導出</button>
        </div>
    </div>
    <div id="classroomManageData">
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th></th>
                    <th><input type="checkbox" value="all" id="selectAll"/></th>
                    <th>會議室</th>
                    <th>使用日期時間</th>
                    <th>會議室預約狀況</th>
                    <th>借用者</th>
                    <th>借用日期</th>
                    <th>修改者</th>
                    <th>修改日期</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>阿基米德1</td>
                    <td>2017-3-8 22:30:11</td>
                    <td>預約中</td>
                    <td>小明</td>
                    <td>2017-3-8 22:30:11</td>
                    <td>小明</td>
                    <td>2017-3-8 22:30:11</td>
                    
                </tr>
                <tr>
                     <td>2</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>阿基米德2</td>
                    <td>2017-3-9 22:30:11</td>
                    <td>預約取消</td>
                    <td>小紅</td>
                    <td>2017-3-9 22:30:11</td>
                    <td>小紅</td>
                    <td>2017-3-9 22:30:11</td>
                </tr>
            </tbody>
        </table>
        <div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="classroomManageSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="classroomManageSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="classroomManageSelectPage(this)">2</a></li>
                <li><a onclick="classroomManageSelectPage(this)">3</a></li>
                <li><a onclick="classroomManageSelectPage(this)">4</a></li>
                <li><a onclick="classroomManageSelectPage(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="classroomManageSelectPage(this)">lastPage</a></li>
                <li>
                    <a onclick="classroomManageSelectPage(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Modal -->
    <div style="" class="modal fade" id="classroomManageModal" tabindex="-1" role="dialog" aria-labelledby="classroomManageModalLabel">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="classroomManageModalLabel"></h4>
                </div>
                <div  class="modal-body">
                    加載中...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="commit">確定</button>
                    <button type="button" class="btn btn-primary" id="sendEmail">發送郵件</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
</div>
<script type="text/javascript">

    $('#commit').click(function () {
        //alert("this is modal");
        var opera=$("#classroomManageModalLabel").attr("operation");
        if (opera == "create"){
            //alert("create");
            //alert($("#functionManagePop_modelID").val());
        }else if(opera == "modify"){
            //alert("modify");
        } else {
            //alert($("#selectContent").val());
            /* $("#classroomManagefatherModel").val($("#selectContent").val()); */
        }
        $('#classroomManageModal').modal("hide");
        /*$.post(url, {"name1": "data1", "name2": "data2"}, function (data) {

        });*/
    });

    function popclassroomManageModal(url, title, operation) {
   
        $("#classroomManageModalLabel").html(title);
        $("#classroomManageModalLabel").attr("key", "function");
        $("#classroomManageModalLabel").attr("operation", operation);
        $('#classroomManageModal').modal({backdrop: "static", keyboard: false});

        if(url) {
          
            $("#classroomManageModal .modal-body").load(url);
        }else{
            $("#classroomManageModal .modal-body").html("url為空，加載失敗...");
        }
    }
    function classroomManageSelectPage(obj){
        /*翻页，获取数据，将其填充到页面上
         *
         *
         */
        $(".pagination li").removeClass("active");
        $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
    }
    $('#classroomManageModal').on('hide.bs.modal', function () {
        // 执行一些动作...
        $("#classroomManageModal .modal-body").html("");//關閉時清空modal-body的內容
        $("#classroomManageModalLabel").removeAttr("operation");//清除標誌
        $("#classroomManageModalLabel").removeAttr("key");//清除標誌
    });
</script>
</body>
</html>