<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>

<style type="text/css">
    #uniqueTree{
        text-align: left;
        /*max-height: 400px;*/
        overflow-y: scroll;
    }
</style>

<input class="btn btn-xs btn-primary" type="button" value="測試獲取選中的數據" id="getData"/>
<div id="uniqueTree">

</div>
<input id="selectContent" value="" type="hidden"/>
<input id="selectId" value="" type="hidden"/>

<script type="text/javascript">
	var myTree=${requestScope.funcs}
   /*  var myTree = [
        {
            'text': "教育訓練平台系統",
            'uniqueId': "0",
            'nodes': [
                {
                    'text': "系統設定",
                    'nodes': [
                    	{
                            'text': "功能管理",
                            'operations':[
                            	{
                            		'operationID': "0",
                            		'operationText': "Add",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "1",
                            		'operationText': "Modify",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "2",
                            		'operationText': "Delete",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "3",
                            		'operationText': "Enable",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "4",
                            		'operationText': "Disable",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "5",
                            		'operationText': "Export",
                            		'url': ""
                            	}
                            ]
                        },
                        {
                            'text': "角色管理",
                            'operations':[
                            	{
                            		'operationID': "0",
                            		'operationText': "Add",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "1",
                            		'operationText': "Modify",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "2",
                            		'operationText': "Delete",
                            		'url': ""
                            	}
                            ]
                        },
                        {
                            'text': "組織管理",
                            'operations':[
                            	{
                            		'operationID': "0",
                            		'operationText': "Add",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "1",
                            		'operationText': "Modify",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "2",
                            		'operationText': "Delete",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "3",
                            		'operationText': "Enable",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "4",
                            		'operationText': "Disable",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "5",
                            		'operationText': "Export",
                            		'url': ""
                            	}
                            ]
                        },
                        {
                            'text': "登錄瀏覽日誌"
                        }
                    ]
                },
                {
                    'text': "安控模組",
                    'nodes': [
                        {
                            'text': "用戶管理",
                            'operations':[
                            	{
                            		'operationID': "0",
                            		'operationText': "Add",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "1",
                            		'operationText': "Modify",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "2",
                            		'operationText': "Delete",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "3",
                            		'operationText': "Enable",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "4",
                            		'operationText': "Disable",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "5",
                            		'operationText': "Export",
                            		'url': ""
                            	},
                            	{
                            		'operationID': "6",
                            		'operationText': "ResetPwd",
                            		'url': ""
                            	}
                            ]
                        },
                        {
                            'text': "修改密碼",
                            'operattion':[
                            	{
                            		'operationID': "0",
                            		'operationText': "Save",
                            		'url': ""
                            	}
                            ]
                        }
                    ]
                },
                {
                    'text': "設定模組",
                    'nodes': [
                        {
                            'text': "課程滿意度調查問項"
                        },
                        {
                            'text': "次集團事業群設定"
                        },
                        {
                            'text': "資位表設定"
                        },
                        {
                            'text': "技委會設定"
                        }
                    ]
                },
                {
                    'text': "消息管理",
                    'nodes': [
                        {
                            'text': "公告消息"
                        }
                    ]
                },
                {
                    'text': "課程管理",
                    'nodes': [
                        {
                            'text': "開辦課程"
                        },
                        {
                            'text': "管理開辦課程"
                        },
                        {
                            'text': "教育訓練出勤比對"
                        },
                        {
                            'text': "課程討論區列表"
                        }
                    ]
                },
                {
                    'text': "教室管理",
                    'nodes': [
                        {
                            'text': "會議室/教室預約列表"
                        }
                    ]
                },
                {
                    'text': "講師資料庫",
                    'nodes': [
                        {
                            'text': "講師列表"
                        }
                    ]
                },
                {
                    'text': "報表模組",
                    'nodes': [
                        {
                            'text': "課程滿意度問卷報表"
                        }
                    ]
                }
            ]
        }
    ]; */
    var currentLevel = 1;
    var innerHtml = "";
    $(document).ready(function () {
        //myTree = JSON.parse(myTree);
        createMessageChoose(myTree, "#selectContent", "#selectId");
        $("#uniqueTree").append(innerHtml);
    });

    function createMessageChoose(tree, selectContent, selectId){
        for(var index in tree){
            var intentStr = "";//根據層級，控制縮進
            var iconClass = "";//顯示加減號標誌
            var status = "hide";//標誌當前狀態，默認為hide
            var nodes = tree[index].nodes;//獲取子節點
            var hasChild = "yes";//是否拥有子节点，默认为no
            if(!nodes){
                hasChild = "no";
                intentStr += "<span class='intent'>&emsp;</span>";//增加一個縮進，對齊顯示同級節點
            }else{
            	iconClass = "<span class='icon expand-icon glyphicon glyphicon-plus'></span>";//加號標誌
            }
            if(currentLevel == 1 && nodes){
                iconClass = "<span class='icon expand-icon glyphicon glyphicon-minus'></span>";//減號標誌
                status = "show";
            }else if(currentLevel == 2 && nodes){
                iconClass = "<span class='icon expand-icon glyphicon glyphicon-plus'></span>";//加號標誌
            }
            for(var i = 0; i < currentLevel; i++){
                intentStr += "<span class='intent'>&emsp;&emsp;</span>";
            }
            var operations = tree[index].operations;
			var operationsHtml = "";
			if(operations){
				operationsHtml += "(";
				for(var i = 0; i < operations.length; i++){
					if( i > 0){
						operationsHtml += ",";
					}
					operationsHtml += "<a href='#' onclick='operationClick(\"" + operations[i].operationID + "\",\"" 
						+ operations[i].url +  "\")'>" + operations[i].operationText + "</a>"; 
				}
				operationsHtml += ")";
			}
            innerHtml += "<div onclick='treeControl(this, event,\"" + selectContent + "\",\"" + selectId +"\")' status='" + status + "' tree-level='"  
            	+ currentLevel + "' class='treeLevel level" + currentLevel + "' targetContent='" + tree[index].text + "' hasChild='" + hasChild 
            	+"' targetId='" + tree[index].id + "'>" + intentStr + iconClass + "<input type='checkbox' onclick='checkBoxChoose(this, event)' value='" 
            	+ tree[index].id + "'/>" + "<span class='treeContent'>" + tree[index].text +"</span>" + operationsHtml + "</div>";
            if(nodes){
                currentLevel++;
                /*innerHtml += "<div>";*/
                createMessageChoose(nodes, selectContent, selectId);
                /*innerHtml += "</div>";*/
                currentLevel--;
            }
        }
    }

    function checkBoxChoose(target, event) {
        var treeLevelElement = $(target).closest(".treeLevel");//获取最近的div，以便获取相应信息
        var isTargetChecked = $(target).is(":checked");
        var prevsElement = treeLevelElement.prevAll(".treeLevel");//获取div前面的所有同胞节点，最近的元素下标为0
        var targetTreeLevel = treeLevelElement.attr("tree-level");//获取当前树节点的层级
        var currentLevel = targetTreeLevel;
        var lastLevel = targetTreeLevel;
        for(var i = 0; i < prevsElement.length ; i++){//向前遍历，寻找父节点
            var prev = $(prevsElement[i]);
            currentLevel = prev.children("input").val();//获取节点得层级
            var checkBox = prev.children("input[type='checkbox']");
            if(lastLevel - currentLevel == 1 ){
                checkBox.prop("checked",true);
                lastLevel--;
            }
        }
        var nextsElement = treeLevelElement.nextAll(".treeLevel");//获取div前面的所有同胞节点
        for(var i = 0; i < nextsElement.length; i++){//向后遍历，寻找子节点
            var next = $(nextsElement[i]);
            var treeLevel = next.children("input").val();//获取节点得层级
            if(treeLevel <= targetTreeLevel )//当便遍历到下一个同级的节点直接跳出
                break;
            var checkBox = next.children("input[type='checkbox']");
            if(treeLevel > targetTreeLevel && isTargetChecked){//获取选中的所有子节点
                checkBox.prop("checked",true);
            }
            if (treeLevel > targetTreeLevel && !isTargetChecked){//若是取消选中
                checkBox.prop("checked", false);
            }
        }
        event.stopPropagation();//停止冒泡事件
        
        
        //当选中的时候，判断是否是最底层功能，获取id
         var checkBoxs = $("#uniqueTree input[type=checkbox]");
         var functionids=[];
         for(var i=0;i<checkBoxs.length;i++)
         {
         	 if($(checkBoxs[i]).is(":checked")){
               //dataString += $(checkBoxs[i]).closest(".treeLevel").children(".treeContent").text() + "/" + $(checkBoxs[i]).val() + "\n";
              if($(checkBoxs[i]).closest(".treeLevel").children(".treeContent"))
              {
              	var data=$(checkBoxs[i]).val();
               	functionids.push(data);
              }
           }
         }
         $("#selectId").val(functionids);
         alert(functionids)
    }

    function treeControl(target, event, selectContent, selectId) {
        var next = $(target).next();
        //$(".treeContent").css("backgroundColor", "#ffffff");
        //$(target).children(".treeContent").css("backgroundColor", "#337AB7");//點擊改變背景顏色
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
        checkBoxChoose($(target).children("input[type='checkbox']"), event);
        event.stopPropagation();
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
    $("#getData").click(function () {
        var checkBoxs = $("#uniqueTree input[type=checkbox]");
        var dataString = "";
        for(var i = 0; i < checkBoxs.length; i++){
           if($(checkBoxs[i]).is(":checked")){
               dataString += $(checkBoxs[i]).closest(".treeLevel").children(".treeContent").text() + "/" + $(checkBoxs[i]).val() + "\n";
           }
        }
        alert(dataString);
    });
</script>