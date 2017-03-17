<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<html>
<head>
    <link href="${path }/js/froala-editor/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${path }/js/froala-editor/css/froala_editor.min.css" rel="stylesheet" type="text/css">
    <script src="${path }/js/froala-editor/js/froala_editor.min.js"></script>
    <script src="${path }/js/froala-editor/js/lists.min.js"></script>
    <script src="${path }/js/froala-editor/js/colors.min.js"></script>
    <script src="${path }/js/froala-editor/js/font_size.min.js"></script>
    <script src="${path }/js/froala-editor/js/zh_tw.js"></script>
    <title>編輯</title>
    <style type="text/css">
        .editor-page .left{
            width: 100px;
            margin-right: 20px;
            float: left;
        }
        .editor-page .right{
            float: left;
            width: 600px;
        }
        .editor-page{
            margin-top: 10px;
            overflow: auto;
        }
    </style>
</head>
<body>
    <div class="editor-page">
        <div class="left">主題:</div>
        <div class="right" id="editor">
            <input class="form-control">
            <div id="edit" style="margin-top: 10px;">
            </div>
        </div>
    </div>
</body>
<script>
    $(function(){
        $("#edit").editable({inlineMode: false,minHeight: 400,language: 'zh_tw'})
    });
</script>
</html>