<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<style type="text/css">
    #uniqueTree{
        text-align: left;
        max-height: 400px;
        overflow-y: scroll;
    }
</style>
<div>
    <div id="uniqueTree">
    </div>
    <input id="selectContent" value="" type="hidden"/>
    <input id="selectId" value="" type="hidden"/>
</div>
<script type="text/javascript">
    var myTree = [
        {
            'text': "鴻海科技集團",
            'nodes': [
                {
                    'text': "B次集團",
                    'nodes': [
                        {
                            'text': "iDSBG"
                        }
                    ]
                },
                {
                    'text': "J次集團",
                    'nodes': [
                        {
                            'text': "財會總處"
                        }
                    ]
                }
            ]
        }
    ];
    var currentLevel = 1;
    $(document).ready(function () {
        //myTree = JSON.parse(myTree);
        createMessageChoose(myTree, "#selectContent", "#selectId");
    });

    function createMessageChoose(tree, selectContent, selectId){
        for(var index in tree){
            var intentStr = "";//根據層級，控制縮進
            var iconClass = "icon expand-icon glyphicon ";//加減號標誌
            var status = "hide";//標誌當前狀態，默認為hide
            var nodes = tree[index].nodes;//獲取子節點
            var hasChild = "yes";//是否拥有子节点，默认为no
            if(!nodes){
                hasChild = "no";
            }
            if(currentLevel == 1){
                iconClass += "glyphicon-minus";//減號標誌
                status = "show";
            }else if(currentLevel == 2){
                iconClass += "glyphicon-plus";//加號標誌
            }
            for(var i = 0; i < currentLevel; i++){
                intentStr += "<span class='intent'>&emsp;&emsp;</span>";
            }

            var innerHtml = "<div onclick='treeControl(this,\"" + selectContent + "\",\"" + selectId +"\")' status='" + status + "' tree-level='"  + currentLevel + "' class='treeLevel level" + currentLevel + "' targetContent='" + tree[index].text + "' hasChild='" + hasChild +"' targetId='" + tree[index].uniqueId + "'>" + intentStr + "<span class='" + iconClass
                + "'></span><span class='treeContent'>" + tree[index].text +"</span></div>";
            $("#uniqueTree").append(innerHtml);
            if(nodes){
                currentLevel++;
                createMessageChoose(nodes, selectContent, selectId);
                currentLevel--;
            }
        }
    }

    function treeControl(target, selectContent, selectId) {
        var next = $(target).next();
        $(".treeContent").css("backgroundColor", "#ffffff");
        $(target).children(".treeContent").css("backgroundColor", "#337AB7");//點擊改變背景顏色
        $(selectContent).val($(target).attr("targetContent"));
        $(selectId).val($(target).attr("targetId"));

        if ($(target).attr("status") == "hide") {
            while (next.length != 0 && (next.attr("tree-level") > $(target).attr("tree-level"))) {
                var level = $(target).attr("tree-level");
                var nextLevel = next.attr("tree-level");
                if (nextLevel - level == 1) {//只展示二級目錄
                    next.show();
                    iconControl(next);
                }
                next = next.next();
            }
            $(target).attr("status", "show");
        } else {
            while (next.length != 0 && (next.attr("tree-level") > $(target).attr("tree-level"))) {
                next.hide();
                next.attr("status", "hide");
                next = next.next();
                iconControl(next);
            }
            $(target).attr("status", "hide");
        }
        iconControl(target);

    }

    function iconControl(target){
        var icon = $(target).children(".icon");
        if($(target).attr("status") == "show" && $(target).attr("hasChild") == "yes"){
            icon.removeClass("glyphicon-plus");
            icon.addClass("glyphicon-minus");
        }else if ($(target).attr("status") == "hide" && $(target).attr("hasChild") == "yes"){
            icon.removeClass("glyphicon-minus");
            icon.addClass("glyphicon-plus");
        }
    }
</script>