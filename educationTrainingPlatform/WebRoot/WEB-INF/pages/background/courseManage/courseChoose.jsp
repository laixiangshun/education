<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<style type="text/css">
    #uniqueTree{
        text-align: left;
        max-height: 400px;
        overflow-y: scroll;
    }
    
    #searchCondition{
    text-align: left;
    }
</style>
<div><br></div>
<input id="selectContent" value="" type="hidden"/>
<input id="selectedId" value="" type="hidden"/>

    <div id="searchCondition" class="search-div">
             課程名稱：
            <input type="text" class="form-control" />
            <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-search"></b>&nbsp;查詢</button>
            <button class="btn btn-xs btn-primary"><b class="glyphicon glyphicon-refresh"></b>&nbsp;重置</button>
    </div>


<div id="courseData">
<table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th></th>                    
                    <th>課程ID</th>
                    <th>課程名稱</th>             
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="radio" id="courseid" value="option1"> </td>
                    <td>1</td>
                    <td>鴻海教訓訓練課程</td>
                </tr>
                <tr>
                    <td><input type="radio" id="courseid" value="option1"> </td>
                    <td>2</td>
                    <td>鴻海教訓訓練課程23333</td>
                </tr>
                </tbody>
            </table>

</div>
