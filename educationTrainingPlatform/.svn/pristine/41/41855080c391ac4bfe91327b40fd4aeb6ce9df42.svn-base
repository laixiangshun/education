package com.foxera.util;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;
/**
 * Excel表格文件上传
 * @author rianbow lai
 *
 */
public class UploadFile {
	/**
	 * 根据request请求，使用SpringMVC 的CommonsMultipartResolver上传文件
	 * @param request
	 * @param response
	 * @return 上传后保存的路径
	 * @throws IOException
	 */
	public static String uploadFile(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String path="";
		try {
			//将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
			  CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(request.getSession().getServletContext());
			//检查form中是否有enctype="multipart/form-data"
			  if(multipartResolver.isMultipart(request))
		        {
		            //将request变成多部分request
		            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
		           //获取multiRequest 中所有的文件名
		            Iterator iter=multiRequest.getFileNames();
		            while(iter.hasNext())
		            {
		                //一次遍历所有文件
		                MultipartFile file=multiRequest.getFile(iter.next().toString());
		                if(file!=null)
		                {
		                    //String path="E:/springUpload"+file.getOriginalFilename();
		                	String fileName=file.getOriginalFilename();//获取文件名
		                	String rule="";
		                	if(fileName!=null || fileName.indexOf(".")!=-1)
		                	{
		                		rule=fileName.substring(fileName.indexOf(".")+1, fileName.length());
		                		if(!rule.equals("xls") && !rule.equals("xlsx"))
		                		{
		                			//request.setAttribute("message", "请上传xls或者xlsx为后缀的Excel文件！");
		                			//String FileRuleError="请上传xls或者xlsx为后缀的Excel文件！";
		                			return "FileRuleError";
		                		}
		                		if(rule.equals("xlsx"))
		                		{
		                			rule="xls";
		                		}
		                	}else{
		                		//request.setAttribute("message", "请选择正确的文件上传！");
		                		//String NoFile="请选择正确的文件上传！";
	                			return "NoFile";
		                	}
		                	//根据配置文件创建指定目录
		                	File files=new File(HttpsUtil.getConfig("upload_path").replace("/", File.separator));
		                	if(!files.exists())
		                	{
		                		files.mkdirs();//创建多层目录
		                	}
		                	//将文件名转换为unique编码
		                	char [] chars=fileName.substring(0, fileName.indexOf(".")).toCharArray();
		                	String fileNameEcode="";
		                	for(int i=0;i<chars.length;i++)
		                	{
		                		fileNameEcode+=Integer.toString(chars[i], 16);
		                	}
		                	path=(HttpsUtil.getConfig("upload_path")+fileNameEcode+"."+rule).replace("/", File.separator);
		                	 //上传文件
		                    file.transferTo(new File(path));
		                }
		                 
		            }
		           
		        }
			  
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			try {
				doException(e,request);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			//request.setAttribute("message", "上传文件失败");
		}
		return path;
	}

	@ExceptionHandler
	public static ModelAndView doException(Exception e,HttpServletRequest request) throws Exception {
	    Map<String,Object> map = new HashMap<String,Object>(); 
	    if (e instanceof MaxUploadSizeExceededException) {
	        long maxSize = ((MaxUploadSizeExceededException) e)
	                .getMaxUploadSize();
	        map.put("error", "上传文件太大，不能超过" + maxSize / 1024 + "k");
	    }else if(e instanceof RuntimeException){
	        map.put("error", "未选中文件");
	    }else{
	        map.put("error", "上传失败");
	    }
	    return new ModelAndView("upload",map);
	
	}
}
