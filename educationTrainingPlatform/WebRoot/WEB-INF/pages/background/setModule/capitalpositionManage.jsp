<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
</head>
<body>
<div id="capitalpositionManage">
    <h3>資位表設定</h3>
    <div class="search-div">
        <div class="search-div">
     
           資位代碼： <input type="text" class="form-control"/>
            資位名稱： <input type="text" class="form-control"/>      
            
           
        </div>
        <div class="search-div">
        <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
            <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-refresh"></b>&nbsp;重置</button>
            <button class="btn btn-xs btn-primary" onclick="popcapitalpositionManageModal('${path}/background/capitalpositionManageCreate.html', '新增', 'create')">
                <b class="glyphicon glyphicon-plus-sign"></b>&nbsp;新增
            </button>
            <button class="btn btn-xs btn-primary" onclick="popcapitalpositionManageModal('${path}/background/capitalpositionManageModify.html', '修改', 'modify')">
                <b class="glyphicon  glyphicon-pencil"></b>&nbsp;修改
            </button>
            <button class="btn btn-xs btn-danger"><b class="glyphicon glyphicon-trash"></b>&nbsp;刪除</button>
              <button class="btn btn-xs btn-primary" onclick="popcapitalpositionManageModal('${path}/background/capitalpositionImportExcel.html', 'Excel匯入', 'importExcel')">
                <b class="glyphicon glyphicon-minus-save"></b>&nbsp;Excel匯入 </button>
        </div>
    </div>
    <div id="capitalpositionManageData">
    	${requestScope.capitalpositions}
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th></th>
                    <th><input type="checkbox" value="all" id="selectAll"/></th>
                    <th>資位代碼</th>
                    <th>資位名稱</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>A</td>
                    <td>師1~師3</td>
                  
                </tr>
                <tr>
                     <td>2</td>
                       <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>A</td>
                    <td>師1~師3</td>
                </tr>
            </tbody>
        </table>
        <div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="capitalpositionManageSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="capitalpositionManageSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="capitalpositionManageSelectPage(this)">2</a></li>
                <li><a onclick="capitalpositionManageSelectPage(this)">3</a></li>
                <li><a onclick="capitalpositionManageSelectPage(this)">4</a></li>
                <li><a onclick="capitalpositionManageSelectPage(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="capitalpositionManageSelectPage(this)">lastPage</a></li>
                <li>
                    <a onclick="capitalpositionManageSelectPage(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Modal -->
    <div style="" class="modal fade" id="capitalpositionManageModal" tabindex="-1" role="dialog" aria-labelledby="capitalpositionManageModalLabel">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" operation="" key="" id="capitalpositionManageModalLabel"></h4>
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
        var opera=$("#capitalpositionManageModalLabel").attr("operation");
        if (opera == "create"){
            //alert("create");
            //alert($("#functionManagePop_modelID").val());
            var levelid = $("#levelid").val();
            var levelname = $("#levelname").val();
            alert(levelid + levelname);
            $.post("${path}/background/addCapital.action",
            	{
            		"levelid": levelid,
            		"levelname": levelname},
            	function(data){
            		if(data == "true"){
            			alert("添加成功");
            		}
            	}
            );
        }else if(opera == "modify"){
            //alert("modify");
        } else {
            //alert($("#selectContent").val());
            $("#capitalpositionManagefatherModel").val($("#selectContent").val());
        }
        $('#capitalpositionManageModal').modal("hide");
        /*$.post(url, {"name1": "data1", "name2": "data2"}, function (data) {

        });*/
    });

    function popcapitalpositionManageModal(url, title, operation) {
   
        $("#capitalpositionManageModalLabel").html(title);
        $("#capitalpositionManageModalLabel").attr("key", "function");
        $("#capitalpositionManageModalLabel").attr("operation", operation);
        $('#capitalpositionManageModal').modal({backdrop: "static", keyboard: false});

        if(url) {
          
            $("#capitalpositionManageModal .modal-body").load(url);
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
            $("#capitalpositionManageModal .modal-body").html("url為空，加載失敗...");
        }
    }
    function capitalpositionManageSelectPage(obj){
        /*翻页，获取数据，将其填充到页面上
         *
         *
         */
        $(".pagination li").removeClass("active");
        $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
    }
    $('#capitalpositionManageModal').on('hide.bs.modal', function () {
        // 执行一些动作...
        $("#capitalpositionManageModal .modal-body").html("");//關閉時清空modal-body的內容
        $("#capitalpositionManageModalLabel").removeAttr("operation");//清除標誌
        $("#capitalpositionManageModalLabel").removeAttr("key");//清除標誌
    });
</script>
</body>
</html>