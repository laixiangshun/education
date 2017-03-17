<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../included/path_lib.jsp" %>
<script src="${path }/js/mcalendar.js"></script>
<style type="text/css">
    .roomReservationNotice{
        width: 460px;
    }
    .roomReservation_calendar{
        display: inline-block;
        margin-left:200px;
        width: 460px;
        text-align: center;
    }
    .haveMark{
    	background-image: url('${path}/images/calenderpic.png');
    	background-repeat: no-repeat;
    	background-position: 90% 10%;
    }
</style>
<div id="roomReservation">
    <div class="roomReservation_calendar">
        <div id="calen">

        </div>
        <input id="selectMonth" value="" type="hidden"><input id="selectDay" value="" type="hidden">
        <div class="roomReservationNotice">
            <div style="margin-bottom: 10px;"><a href="#" >阿基米德教室操作SOP</a></div>
            <strong><p style="font-size: 20px;">阿基米德教室/206會議室使用規則</p></strong>
            <p>1、本預約場地由台北人力資源總處管理，本預約場地由台北人力資源總處管理，本預約場地由台北人力資源總處管理，
				    本預約場地由台北人力資源總處管理，本預約場地由台北人力資源總處管理，本預約場地由台北人力資源總處管理</p>
            <p>2、每次登記借用時間最多2小時</p>
            <p>3、輸入個人資料輸入個人資料輸入個人資料輸入個人資料。</p>
        </div>
    </div>
    <!-- Modal -->
    <div style="" class="modal fade" id="reservationDetail" tabindex="-1" role="dialog" aria-labelledby="reservationDetailLabel">
        <div class="modal-dialog" role="document" style="width: 800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="reservationDetailLabel">會議室/教室預約</h4>
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
<script>
    new calendar("calen",[1,2,3,5,6,15,29]);
    function calendarClick(target){
        var url = "${path}/foreground/roomReservationDetail.html";
        //获取年月日
        var year = String(parseInt($("#Year").html()));
        var month = String(parseInt($("#Month").html()));
        var day = $(target).attr("value");
        month = month < 10 ? "0"+month :month ;
        day = day < 10 ? "0"+day :day ;
        //将选中的日期传递到页面上
        $("#selectDay").val(year + month +day);
        $("#reservationDetail").modal();
        $("#reservationDetail .modal-body").load(url);
    }
    $(document).ready(function(){
        var width =$("#main-body-right").width();
        $("#roomReservation").css("width", width);
    });
</script>