<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>課程公告</title>
    <style type="text/css">
        .pagination{
            position: relative;
            float: right;
        }
        .modal-body textarea {
            width: 650px;
            height: 100px;
        }
        h1{
            margin-top: 0;
        }
        #myModalLabel{
            color: #337ab7;
            font-size: 30px;
        }
    </style>
</head>
<body>
<div class="">
    <div class="">
        <h1>課程公告</h1>
    </div>
    <div class="">
        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th>序號</th>
                <th>課程名稱</th>
                <th>課程日期</th>
                <th>課程講師</th>
                <th>報名狀態</th>
                <th>公告日期</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th>1</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')">鴻海教育訓練1</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>報名中</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>2</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')">鴻海教育訓練2</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>3</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')">鴻海教育訓練3</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>4</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')" >鴻海教育訓練4</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>5</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')" >鴻海教育訓練5</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>6</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')">鴻海教育訓練6</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>7</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')">鴻海教育訓練7</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>8</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')">鴻海教育訓練8</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>9</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')">鴻海教育訓練9</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            <tr>
                <th>10</th>
                <th><a href="#" onclick="popModal('${path}/foreground/popCourseNotice.html')">鴻海教育訓練10</a> </th>
                <th>2017-03-04</th>
                <th>林候選</th>
                <th>已截止報名</th>
                <th>2017-03-04</th>
            </tr>
            </tbody>
        </table>
        <nav aria-label="...">
            <ul class="pagination">
                <li class="disabled"><a onclick="next(this)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a onclick="next(this)">1 <span class="sr-only">(current)</span></a></li>
                <li><a onclick="next(this)">2</a></li>
                <li><a onclick="next(this)">3</a></li>
                <li><a onclick="next(this)">4</a></li>
                <li><a onclick="next(this)">5</a></li>
                <li><span >...</span></li>
                <li><a onclick="next(this)">lastPage</a></li>
                <li>
                    <a onclick="next(this)" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <!-- Modal -->
    <div style="" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width: 800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">課程資訊</h4>
                </div>
                <div  class="modal-body">
                    加載中...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">確定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
</div>

</body>
<script type="application/javascript">
    function popModal(url) {
        $("#myModal").modal();
        $("#myModal .modal-body").load(url);
    }

    function next(obj){
        /*翻页，获取数据，将其填充到页面上
         *
         *
         */
        $(".pagination li").removeClass("active");
        $(obj).parent().addClass("active");//获取当前a标签的父元素li标签，加入active类，使其处于选中状态
    }

</script>
</html>