<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<style type="text/css">
    #groupManageCreate>div{
        margin-bottom: 10px;
        text-align: left;
    }
    #groupManageCreate .dataName{
        display: inline-block;
        width: 100px;
    }
    #groupManageCreate input.form-control,
    #groupManageCreate select.form-control{
        width: 450px;
    }
    #groupManageCreate .text-btn-group input.form-control {
        width: 425px;
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
    }
</style>

<div id="groupManageCreate">
    <div id="shade"></div>
    <div><span class="dataName">次集團代碼<font color="red">*</font>：</span><input name="" type="text" id="groupManageCreate_modelID" class="form-control"/></div>
    <div><span class="dataName">次集團名稱<font color="red">*</font>：</span><input type="text" class="form-control"/></div>
    <div><span class="dataName">事業群代碼<font color="red">*</font>：</span><input type="text" class="form-control"/></div>
    <div><span class="dataName">事業群名稱<font color="red">*</font>：</span><input type="text" class="form-control"/></div>
    
</div>

<script type="text/javascript">


</script>


