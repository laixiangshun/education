<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../included/bootstrap_lib.jsp" %>
<!DOCTYPE html>
<head>
    <title>index-back</title>
</head>
<body>
<div>
    <div class="header" id="header">
    	<jsp:include page="../tile/header.jsp"></jsp:include>
    </div>
    <div class="main-body">
        <div class="main-body-left" id="sidebar">
            <div id="tree">
            </div>
        </div>
        <div class="main-body-right" id="content">
        	<jsp:include page="../tile/welcome.jsp"></jsp:include>
        </div>
    </div>
    <div class="footer" id="footer">
    	<jsp:include page="../tile/footer.jsp"></jsp:include>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        createSidebar();//动态生成sidebar
        footerPosition();//footer自适应页面高度，始终位于页面底部
    });

    function createSidebar() {
        /* 根据数据，动态生成sidebar */
        function getTree() {//获取树状导航的数据
            // Some logic to retrieve, or generate tree structure
            var tree = [
                {
                    text: "教育訓練平台系統",
                    href: "${path }/welcome.html",
                    nodes: [
                        {
                            text: "系統設定",
                            nodes: [
                                {
                                    text: "功能管理",
                                    href: "${path }/background/functionManage.html"
                                },
                                {
                                    text: "角色管理",
                                    href: "${path }/background/roleManage.html"
                                },
                                {
                                    text: "組織管理",
                                    href: "${path }/background/organizationManage.html"
                                },
                                {
                                    text: "登錄瀏覽日誌",
                                    href: "${path }/background/loginLog.html"
                                }
                            ]
                        },
                        {
                            text: "安控模組",
                            nodes: [
                                {
                                    text: "用戶管理",
                                    href: "${path }/background/userManage.html"
                                },
                                {
                                    text: "修改密碼",
                                    href: "${path }/background/modifyPassword.html"
                                }
                            ]
                        },
                        {
                            text: "設定模組",
                            nodes: [
                                {
                                    text: "課程滿意度調查問項",
                                    href:"${path }/background/questionnaire.html"
                                },
                                {
                                    text: "次集團事業群設定",
                                    href: "${path }/background/groupManage.html"
                                },
                                {
                                    text: "資位表設定",
                                    href: "${path }/background/capitalpositionManage.html"
                                },
                                {
                                    text: "技委會設定",
                                    href: "${path }/background/technicalCommitteeManage.html"
                                }
                            ]
                        },
                        {
                            text: "消息管理",
                            nodes: [
                                {
                                    text: "公告消息",
                                    href: "${path }/background/announcementMessage.html"
                                }
                            ]
                        },
                        {
                            text: "課程管理",
                            nodes: [
                                {
                                    text: "開辦課程",
                                    href: "${path }/background/courseCreate.html"
                                },
                                {
                                    text: "管理開辦課程",
                                    href: "${path }/background/courseManage.html"
                                },
                                {
                                    text: "教育訓練出勤比對",
                                    href: "${path }/background/timetag.html"
                                },
                                {
                                    text: "課程討論區列表",
                                    href: "${path }/background/courseDiscuss.html"
                                }
                            ]
                        },
                        {
                            text: "教室管理",
                            nodes: [
                                {
                                    text: "會議室/教室預約列表",
                                    href: "${path }/background/classroomList.html"
                                }
                            ]
                        },
                        {
                            text: "講師資料庫",
                            nodes: [
                                {
                                    text: "講師列表",
                                    href: "${path}/background/teacherList.html"
                                },
                                {
                                    text: "講師滿意度調查表",
                                    href: "${path}/background/teacherSatisfySurvey.html"
                                }
                            ]
                        },
                        {
                            text: "報表模組",
                            nodes: [
                                {
                                    text: "課程滿意度問卷報表",
                                    href: "${path }/background/coursequestionnaireManage.html"
                                }
                            ]
                        }
                    ]
                }/*,
                {
                    text: "test",
                    href: "../test.html"
                }*/
            ];
            return tree;
        }
        $("#tree").treeview({data: getTree()});
        /* 根据数据，动态生成sidebar */
    }

    function footerPosition() {
        /* footer自适应页面高度，始终位于页面底部 */
        var winHeight = window.innerHeight;//可视窗口高度，不包括浏览器顶部工具栏
        var headerHeight = $("#header").height();
        var footerHeight = $("#footer").height();
        //alert(headerHeight + "," + footerHeight);
        $(".main-body").css("minHeight", winHeight - headerHeight - footerHeight - 10);
        /* footer自适应页面高度，始终位于页面底部 */
    }
    function itemOnclick(target){
        //找到当前节点id
        var nodeid = $(target).attr("data-nodeid");
        //获取当前节点对象
        var root = $(target).closest(".treeview");//獲取tree的根節點
        var node = root.treeview('getNode', nodeid);
        if(node.tags){//tags不為空表示是資料選擇器
            alert(node.tags);
            return;
        }
        if(node.href){//href不為空表示是sidebar
            //alert(node.href);
            $("#content").load(node.href);
        }
    }
</script>
</body>
</html>