<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
</head>
<body>
<div id="technicalcommitteeManage">
    <h3>技委會設定</h3>
    <div class="search-div">
        <div class="search-div">
     
          技委會代碼： <input type="text" class="form-control"/>
           技委會名稱： <input type="text" class="form-control"/>      
             
             
        </div>
        <div class="search-div">
        <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
          <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-refresh"></b>&nbsp;重置</button>
            <button class="btn btn-xs btn-primary" onclick="poptechnicalcommitteeManageModal('${path}/background/technicalCommitteeManageCreate.html', '新增', 'create')">
                <b class="glyphicon glyphicon-plus-sign"></b>&nbsp;新增
            </button>
            <button class="btn btn-xs btn-primary" onclick="poptechnicalcommitteeManageModal('${path}/background/technicalCommitteeManageModify.html', '修改', 'modify')">
                <b class="glyphicon glyphicon-pencil"></b>&nbsp;修改
            </button>
            <button class="btn btn-xs btn-danger"><b class="glyphicon glyphicon-trash"></b>&nbsp;刪除</button>
                      <button class="btn btn-xs btn-primary" onclick="poptechnicalcommitteeManageModal('${path}/background/technicalCommitteeImportExcel.html', 'Excel匯入', 'importExcel')">
                <b class="glyphicon glyphicon-minus-save"></b>&nbsp;Excel匯入 </button>
        </div>
    </div>
    <div id="technicalcommitteeManageData">
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th></th>
                    <th><input type="checkbox" value="all" id="selectAll"/></th>
                    <th>技委會代碼</th>
                    <th>技委會名稱</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>技A</td>
                    <td>技1~技3</td>
                  
                </tr>
                <tr>
                     <td>2</td>
                       <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>技B</td>
                    <td>技1~技4</td>
                </tr>
            </tbody>
        </table>
        <div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="technicalcommitteeManageSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="technicalcommitteeManageSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="technicalcommitteeManageSelectPage(this)">2</a></li>
                <li><a onclick="technicalcommitteeManageSelectPage(this)">3</a></li>
                <li><a onclick="technicalcommitteeManageSelectPage(this)">4</a></li>
                <li><a onclick="technicalcommitteeManageSelectPage(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="technicalcommitteeManageSelectPage(this)">lastPage</a></li>
                <li>
                    <a onclick="technicalcommitteeManageSelectPage(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Modal -->
    <div style="" class="modal fade" id="technicalcommitteeManageModal" tabindex="-1" role="dialog" aria-labelledby="technicalcommitteeManageModalLabel">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="technicalcommitteeManageModalLabel"></h4>
                </div>
                <div  class="modal-body">
                    加載中...
                </div>
                 <div class="modal-footer" id="divcommit">
                    <button type="button" class="btn btn-primary" id="commit">確定</button>
                   
                    <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                </div>
                 <div class="modal-footer" id="divimport">
                     <button type="button" class="btn btn-primary" id="import">導入</button>
                     <button type="button" class="btn btn-primary" id="importError">導出錯誤信息</button>
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
        var opera=$("#technicalcommitteeManageModalLabel").attr("operation");
        if (opera == "create"){
            //alert("create");
            //alert($("#functionManagePop_modelID").val());
        }else if(opera == "modify"){
            //alert("modify");
        } else {
            //alert($("#selectContent").val());
            $("#technicalcommitteeManagefatherModel").val($("#selectContent").val());
        }
        $('#technicalcommitteeManageModal').modal("hide");
        /*$.post(url, {"name1": "data1", "name2": "data2"}, function (data) {

        });*/
    });

    function poptechnicalcommitteeManageModal(url, title, operation) {
   
        $("#technicalcommitteeManageModalLabel").html(title);
        $("#technicalcommitteeManageModalLabel").attr("key", "function");
        $("#technicalcommitteeManageModalLabel").attr("operation", operation);
        $('#technicalcommitteeManageModal').modal({backdrop: "static", keyboard: false});

        if(url) {
          
            $("#technicalcommitteeManageModal .modal-body").load(url);
             if (operation == "importExcel")
             {
                $("#divimport").css("display", "block");
                $("#divcommit").css("display", "none");
             }
             else
             {
               $("#divimport").css("display", "none");
                $("#divcommit").css("display", "block");
             }
        }else{
            $("#technicalcommitteeManageModal .modal-body").html("url為空，加載失敗...");
        }
    }
    function technicalcommitteeManageSelectPage(obj){
        /*翻页，获取数据，将其填充到页面上
         *
         *
         */
        $(".pagination li").removeClass("active");
        $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
    }
    $('#technicalcommitteeManageModal').on('hide.bs.modal', function () {
        // 执行一些动作...
        $("#technicalcommitteeManageModal .modal-body").html("");//關閉時清空modal-body的內容
        $("#technicalcommitteeManageModalLabel").removeAttr("operation");//清除標誌
        $("#technicalcommitteeManageModalLabel").removeAttr("key");//清除標誌
    });
</script>
</body>
</html>