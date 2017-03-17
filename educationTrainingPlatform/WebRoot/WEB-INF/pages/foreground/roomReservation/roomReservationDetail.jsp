<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>roomReservationDetail</title>
    <style type="text/css">
    	.roomDetail{
    		margin-left:10%;
    		width: 80%;
    	}
    	.pagination{
    		position: relative;
    		float: right;
    	}
    	.infotitle {
            width: 110px;
            text-align: right;
            display: inline-block;
        }
        .reservationDetail{
        	margin-top: 60px;
        }
        .roomReservationDetail .form-control{
        	width: 160px;
        }
        #reservationtitle{
        	position:relative;
        	left:200px;
        	width:120px;
        	text-align:left;
        	background-color: #337AB7;
        	color: white;
        }
    </style>
  </head>
  <body>
  	<div class="roomReservationDetail">
	    <div class="roomDetail">
	    	<p id="roomtitle" style="text-align: left;">${requestScope.clickDate }</p>
	    	<table class="table table-bordered table-striped table-hover" style="margin-bottom: 5px;">
	    		<thead>
	    			<tr>
	    				<th>序號</th>
	    				<th>教室</th>
	    				<th>借用時段</th>
	    				<th>事業群</th>
	    				<th>名字</th>
	    				<th>分機號碼</th>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<tr>
	    				<td>1</td>
	    				<td>阿基米德</td>
	    				<td>08:00至10:00</td>
	    				<td>CCPBG</td>
	    				<td>林候選</td>
	    				<td>6666666</td>
	    			</tr>
	    			<tr>
	    				<td>2</td>
	    				<td>阿基米德</td>
	    				<td>10:00至12:00</td>
	    				<td>CESBG</td>
	    				<td>林候選</td>
	    				<td>6666666</td>
	    			</tr>
	    			<tr>
	    				<td>3</td>
	    				<td>阿基米德</td>
	    				<td>12:00至14:00</td>
	    				<td>CNSBG</td>
	    				<td>林候選</td>
	    				<td>6666666</td>
	    			</tr>
	    			<tr>
	    				<td>4</td>
	    				<td>阿基米德</td>
	    				<td>14:00至16:00</td>
	    				<td>CCPBG</td>
	    				<td>林候選</td>
	    				<td>6666666</td>
	    			</tr>
	    			<tr>
	    				<td>5</td>
	    				<td>阿基米德</td>
	    				<td>16:00至18:00</td>
	    				<td>CESBG</td>
	    				<td>林候選</td>
	    				<td>6666666</td>
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
	    <div class="reservationDetail">
	    	<p id="reservationtitle">會議室/教室預約</p>
	    	<div class="showinfo">
	        	<p class="infotitle">教室<font color="red"> *</font>：</p>
		        <select class="form-control">
		        	<option>阿基米德1</option>
		        	<option>阿基米德2</option>
		        	<option>...</option>
		        </select>
		    </div>
		    <div class="showinfo">
		        <p class="infotitle">借用開始時間<font color="red"> *</font>：</p>
		        <select class="form-control" style="width: 80px;">
		        	<option>08點</option>
		        	<option>09點</option>
		        	<option>...</option>
		        </select>
		        <select class="form-control" style="width: 80px;">
		        	<option>00分</option>
		        	<option>01分</option>
		        	<option>...</option>
		        </select>
		    </div>
		    <div class="showinfo">
		        <p class="infotitle">次集團<font color="red"> *</font>：</p>
		        <select class="form-control">
		        	<option>A次集團</option>
		        	<option>B次集團</option>
		        	<option>...</option>
		        </select>
		    </div>
		    <div class="showinfo">
		        <p class="infotitle">事業群<font color="red"> *</font>：</p>
		        <select class="form-control">
		        	<option>CCPBG</option>
		        	<option>CESBG</option>
		        	<option>...</option>
		        </select>
		    </div>
		    <div class="showinfo">
	        	<p class="infotitle">工號<font color="red"> *</font>：</p>
		        <input type="text" class="form-control">
		    </div>
		    <div class="showinfo">
	        	<p class="infotitle">姓名<font color="red"> *</font>：</p>
		        <input type="text" class="form-control">
		    </div>
		    <div class="showinfo">
	        	<p class="infotitle">手機  ：</p>
		        <input type="text" class="form-control">
		    </div>
		    <div class="showinfo">
	        	<p class="infotitle">分機號碼<font color="red"> *</font>：</p>
		        <input type="text" class="form-control">
		    </div>
		    <div class="showinfo">
	        	<p class="infotitle">費用代碼<font color="red"> *</font>：</p>
		        <input type="text" class="form-control">
		    </div>
		    <div class="showinfo">
	        	<p class="infotitle">email<font color="red"> *</font>：</p>
		        <input type="text" class="form-control">
		    </div>
		    <div class="showinfo">
	        	<p class="infotitle">使用目的<font color="red"> *</font>：</p>
		        <textarea class="form-control" style="display: inline-block;"></textarea>
		    </div>
		    
	    </div>
    </div>
  </body>
</html>
