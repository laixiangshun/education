function drawTable(id,template,dataTmp)
{
	var tbhtml="";
	var thtml="";
	/*var dataTmp = JSON.parse(data);
	var dataTmp = data;*/
	alert("length: " + dataTmp.result.length);
	for (var j = 0; j < dataTmp.result.length; j++)
	{
		var propItemObj = dataTmp.result[j];
		thtml=template;
		for(var propItem in propItemObj)
		{
			thtml=thtml.replace(propItem,propItemObj[propItem]);
		}
		thtml=thtml.replace("StatusID",j+1);
		alert(thtml);
		tbhtml+=thtml;
	}
	$("#"+id).html("");
	$("#"+id).html(tbhtml);
	
}



function builderPageControl(data){
	//验证翻页控件，调试成功封装为js文件直接调用
	/*var data = JSON.parse(data1);
	var data = data1;*/
	$("#pagecontroller").html("");
	var pagecontrolerHtml="";
	var pageSize=data.pageSize;
	var total=data.total;
	
	var pageCount = Math.ceil(total / pageSize);
	
	var pageIndex = data.pageIndex + 1;
	//alert("total:"+total+" pageCount:"+pageCount+" pageIndex:"+pageIndex);
	if (pageIndex == 1){
         pagecontrolerHtml += "<li class='disabled'><span aria-hidden='true'>&laquo;</span></li>";
	}else
	{
		pagecontrolerHtml += "<li><a aria-label='Previous' onclick='selectPage(this, \"" + (pageIndex-1)  + "\")'><span aria-hidden='true'>&laquo;</span></a></li>";
	}				
	
	var len = pageCount - pageIndex < 5 ? pageCount - pageIndex : 5;
	for (var index=pageIndex; index <= len + pageIndex; index++)
	{
	     if (pageIndex==index){
	        pagecontrolerHtml += "<li class='active'><a onclick='selectPage(this, \"" + index  + "\")'>" + index + "<span class='sr-only'>(current)</span></a></li>";
	     }else{
	         pagecontrolerHtml += "<li><a onclick='selectPage(this, \"" + index  + "\")'>" + index + "</a></li>";
	     }
	}
	pagecontrolerHtml += "<li><a onclick='selectPage(this, \"" + pageCount  + "\")'>" + "lastPage</a></li>";
	
	if (pageIndex >= pageCount){
		pagecontrolerHtml += "<li class='disabled'><span aria-hidden='true'>&raquo;</span></li>";
	}else{
		pagecontrolerHtml += "<li><a onclick='selectPage(this, \"" + (pageIndex+1)  + "\")' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>";
	}
	
	//alert(pagecontrolerHtml);
	$("#pagecontroller").html(pagecontrolerHtml);
}