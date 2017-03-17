<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
</head>
<body>
<div id="coursequestionnaireManage">
    <h3>課程滿意度問卷報表</h3>
    <div class="search-div">
        <div class="search-div">
          講師： <input type="text" class="form-control"/>
         課程名稱： <input type="text" class="form-control"/>  
           
        </div>
          
        <div class="search-div">
        <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
           <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-refresh"></b>&nbsp;重置</button>
           <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-download-alt"></b>&nbsp;導出</button>
        </div>
    </div>
    <div id="coursequestionnaireManageData">
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th></th>
                    <th><input type="checkbox" value="all" id="selectAll"/></th>
                    <th>講師</th>
                    <th>課程名稱</th>
                    <th>上課人數</th>
                    <th>回收份數</th>
                    <th>課程滿意度</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>講師A</td>
                    <td>課程名稱A</td>
                    <td>5</td>
                    <td>10</td>
                    <td>100%</td>        
                </tr>
                <tr>
                    <td>2</td>
                    <td><input type="checkbox" value="data1" id="data1"/></td>
                    <td>講師B</td>
                    <td>課程名稱B</td>
                    <td>8</td>
                    <td>11</td>
                    <td>82%</td>
                </tr>
            </tbody>
        </table>
        <div class="page-div">
            <ul class="pagination">
                <li class="disabled"><a onclick="coursequestionnaireManageSelectPage(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="coursequestionnaireManageSelectPage(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="coursequestionnaireManageSelectPage(this)">2</a></li>
                <li><a onclick="coursequestionnaireManageSelectPage(this)">3</a></li>
                <li><a onclick="coursequestionnaireManageSelectPage(this)">4</a></li>
                <li><a onclick="coursequestionnaireManageSelectPage(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="coursequestionnaireManageSelectPage(this)">lastPage</a></li>
                <li>
                    <a onclick="coursequestionnaireManageSelectPage(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    function coursequestionnaireManageSelectPage(obj){
        /*翻页，获取数据，将其填充到页面上
         *
         *
         */
        $(".pagination li").removeClass("active");
        $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
    }
  
</script>
</body>
</html>