<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>setTopPage</title>
    <style type="text/css">
    	.infotitle{
    		display: inline-block;
    	}
    </style>
  </head>
  <body>
    <div class="showinfo text-btn-group" style="width: 100%">
        <p class="infotitle">失效日期<font color="red"> *</font>：</p>
        <input type="text" class="form-control" id="showDate" style="width: 165px; margin-left: 5px;"
        		onfocus="selectDate('showDate');" readonly>
        <button type="button" class="btn btn-xs btn-primary  glyphicon glyphicon-calendar"
        		id="dateChoose" onclick="selectDate('showDate');" >
        </button>
    </div>
  </body>
</html>
