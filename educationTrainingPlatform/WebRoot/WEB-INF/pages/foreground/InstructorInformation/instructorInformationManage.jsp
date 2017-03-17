<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
</head>
<body>
<div id="instructorinformationManage">
    <h3>講師資訊</h3>
    <div class="search-div">
        <div class="search-div">
         請輸入講師姓名（或者課程）： <input type="text" class="form-control"/>&nbsp;
         課程日期時間起： <input id="txtcurriculumdateStart"   onfocus="selectDate('txtcurriculumdateStart');" type="text" class="form-control"/>&nbsp;
          課程日期時間迄： <input id="txtcurriculumdateOver"   onfocus="selectDate('txtcurriculumdateOver');" type="text" class="form-control"/>&nbsp; 
           
        </div>
          
        <div class="search-div">
        <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
        </div>
    </div>
    <div id="instructorinformationManageData">
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th>序號</th>
                    <th>照片</th>
                    <th>姓名</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>圖A</td>
                    <td> <a  onclick="popinstructorinformationManageModal('${path}/foreground/instructorinformationInfo.html', '講師資訊', 'info')">
                姓名A</a>
                </td>       
                </tr>
                <tr>
                    <td>2</td>
                    <td>圖B</td>
                    <td>
        <a  href="#" onclick="popinstructorinformationManageModal('${path}/foreground/instructorinformationInfo.html', '講師資訊', 'info')">
                姓名B</a>
</td> 
                </tr>
            </tbody>
        </table>
        <div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="instructorinformationManageSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="instructorinformationManageSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="instructorinformationManageSelectPage(this)">2</a></li>
                <li><a onclick="instructorinformationManageSelectPage(this)">3</a></li>
                <li><a onclick="instructorinformationManageSelectPage(this)">4</a></li>
                <li><a onclick="instructorinformationManageSelectPage(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="instructorinformationManageSelectPage(this)">lastPage</a></li>
                <li>
                    <a onclick="instructorinformationManageSelectPage(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
 <!-- Modal -->
    <div style="" class="modal fade" id="instructorinformationManageModal" tabindex="-1" role="dialog" aria-labelledby="instructorinformationManageModalLabel">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="instructorinformationManageModalLabel"></h4>
                </div>
                <div  class="modal-body">
                    加載中...
                </div>
                 <div class="modal-footer" >
                    <button type="button" class="btn btn-primary" id="commit">確定</button>
                   
                    <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                </div>
          
            </div>
        </div>
    </div>
    <!-- Modal -->
<script type="text/javascript">
 
    $('#commit').click(function () {
        //alert("this is modal");
        var opera=$("#instructorinformationManageModalLabel").attr("operation");
        if (opera == "create"){
            //alert("create");
            //alert($("#functionManagePop_modelID").val());
        }else if(opera == "modify"){
            //alert("modify");
        } else {
            //alert($("#selectContent").val());
            /* $("#classroomManagefatherModel").val($("#selectContent").val()); */
        }
        $('#instructorinformationManageModal').modal("hide");
        /*$.post(url, {"name1": "data1", "name2": "data2"}, function (data) {

        });*/
    });

    function popinstructorinformationManageModal(url, title, operation) {
   
        $("#instructorinformationManageModalLabel").html(title);
        $("#instructorinformationManageModalLabel").attr("key", "function");
        $("#instructorinformationManageModalLabel").attr("operation", operation);
        $('#instructorinformationManageModal').modal({backdrop: "static", keyboard: false});

        if(url) {
          
            $("#instructorinformationManageModal .modal-body").load(url);
        }else{
            $("#instructorinformationManageModal .modal-body").html("url為空，加載失敗...");
        }
    }
    function instructorinformationManageSelectPage(obj){
        /*翻页，获取数据，将其填充到页面上
         *
         *
         */
        $(".pagination li").removeClass("active");
        $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
    }
    $('#instructorinformationManageModal').on('hide.bs.modal', function () {
        // 执行一些动作...
        $("#instructorinformationManageModal .modal-body").html("");//關閉時清空modal-body的內容
        $("#instructorinformationManageModalLabel").removeAttr("operation");//清除標誌
        $("#instructorinformationManageModalLabel").removeAttr("key");//清除標誌
    });
  
</script>
</body>
</html>