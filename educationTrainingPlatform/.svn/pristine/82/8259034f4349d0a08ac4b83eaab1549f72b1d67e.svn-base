package com.foxera.background.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;

import com.foxera.background.service.TeacherDataService;
import com.foxera.models.Teacherinfo;
import com.foxera.models.Userinfo;

/**
 * 讲师资料库 控制器
 * @author aaa
 *
 */
@Controller
public class TeacherDataController {
	/**
	 * 讲师满意度调查表
	 * @param request
	 * @param response
	 * @return
	 */
	@Autowired
	private TeacherDataService teacherDataService;
	@RequestMapping(value="/background/teacherSatisfySurvey.html",method=RequestMethod.GET)
	public String TeacherSatisfySurvey(HttpServletRequest request,HttpServletResponse response){
		
		return "background/teacherData/teacherSatisfySurvey";
	}

	/**
	 * 进入教师列表页面
	 * @param request
	 * @param response
	 * @return
	 */

	@RequestMapping(value="/background/teacherList.html",method=RequestMethod.GET)
	public String ClassroomList(HttpServletRequest request,HttpServletResponse response){
		List<Teacherinfo> teacher=this.teacherDataService.getTeacherData(0, CommonComponent.PAGESIZE);		
		request.setAttribute("teachers", teacher);
		return "background/teacherData/teacherList";
	}
	
	/**
	 * 进入新增教师信息页面
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value="/background/teacherCreate.html",method=RequestMethod.GET)
	public String CreateCourse(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		return "background/teacherData/teacherCreate";
	}
	/**
	 * 进入修改教师信息页面
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	String teachr;
	@RequestMapping(value="/background/teacherModify.html",method=RequestMethod.GET)
	public String UpdateCourse(HttpServletRequest request,HttpServletResponse response,@RequestParam(value="teacherid") String teacherid) throws IOException {
		//欠缺根据teacherid的查询并放到页面显示
		
//		String teachids=request.getParameterValues("teacherid");
//		for(int i=0;i<teachids.length;i++){
//			if(teachids.length>0){
//				teachr=teachids[0];
//			}
//		}
		//String[] Teachid=request.getParameterValues("teacherid");
		//teachr=Teachid[0];
		String teachid=request.getParameter("teacherid");
		Teacherinfo teach=(Teacherinfo)this.teacherDataService.getTeacherData(Long.parseLong(teachid));
		
		
		request.setAttribute("teacher", teach);
		return "background/teacherData/teacherModify";
	}
	
	
	/**
	 * 教师新增功能操作
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/background/teacherCreate.action",method=RequestMethod.GET)
	public void addTeacherInfo(HttpServletRequest request,HttpServletResponse response) throws IOException {
		 String TeacherType=request.getParameter("type");
		 Long type =Long.parseLong(TeacherType);
		 //Userinfo userinfo=(Userinfo)request.getSession().getAttribute("user");//获取当前登录的用户
		 Long userid=Long.parseLong("124587");
		 String UserNo=request.getParameter("userno");//工号		 
		 String UserName=request.getParameter("name");
		 String phone=request.getParameter("phone");
		 String email=request.getParameter("email");
	     String job=request.getParameter("job");
		 String resume=request.getParameter("resume");
		 String HighEducation=request.getParameter("highEducation");
		 String Education=request.getParameter("education");
	     String domain=request.getParameter("domain");
		 String Remark=request.getParameter("Remark");
		 String TeachPerformance=request.getParameter("teachPerformance");
		  
		 boolean flag=this.teacherDataService.addTeacherInfo(type,userid,UserNo,
		 UserName,phone,email,job,resume,HighEducation,Education,domain,Remark,TeachPerformance);
//		 
	//String Awe;
//		 boolean flag2;
		 //boolean flag3=this.teacherDataService.addTeacherInfo(new Long(1), new Long("124545"), "F111111", "测试测试", "1111111", "1111111@121212", "we", "we", "we", "we", "we", "haha测试用途", "wewerr");
		 if(flag){
			 response.getWriter().write("true");
		 }else{
			 response.getWriter().write("false");
		 }		 	
	}
	
	/**
	 * 修改教师信息的功能操作
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	
	Date createDate;
	@RequestMapping(value="/background/teacherModify.action",method=RequestMethod.GET)
	public void ModifyCourse(HttpServletRequest request,HttpServletResponse response) throws IOException {
		     String teacherid=request.getParameter("teacherid");	
		     //String teacherid="5";
		     String TeacherType=request.getParameter("type");
			 Long type =Long.parseLong(TeacherType);
			 //Userinfo userinfo=(Userinfo)request.getSession().getAttribute("user");//获取当前登录的用户
			 Long userid=Long.parseLong("124587");//因还未做登录，故先暂时固定插入
			 String UserNo=request.getParameter("userno");
			 String UserName=request.getParameter("name");
			 String phone=request.getParameter("phone");
			 String email=request.getParameter("email");
			 String job=request.getParameter("job");
			 String resume=request.getParameter("resume");
			 String HighEducation=request.getParameter("highEducation");
			 String Education=request.getParameter("education");
			 String domain=request.getParameter("domain");
			 String Remark=request.getParameter("Remark");
			 String TeachPerformance=request.getParameter("teachPerformance");
			 String createUser=request.getParameter("createUser");
			 String CreateDateStr=request.getParameter("createDate");
			 DateFormat sdf=new SimpleDateFormat("YYYY/MM/DD");
			 Date date=null;			 
			 date=java.sql.Date.valueOf(CreateDateStr);
			 System.out.println(date);  
			 //Date createDate=Date(request.getParameter("createDate"));
			 //Teacherinfo teacherinfo=new Teacherinfo(TeacherType,userinfo.getUserid(),UserNo,UserName,phone,
			 //		 email,job,resume,HighEducation,Education,domain,Remark,TeachPerformance);
			 //
			 
			 
			boolean flag=this.teacherDataService.modifyTeacherInfo(teacherid,type,userid,UserNo,UserName,phone,
					 email,job,resume,HighEducation,Education,domain,Remark,TeachPerformance,createUser,date);
			
			 if(flag){
				 response.getWriter().write("true");
			 }else{
				 response.getWriter().write("false");
			 }			
		}
	/**
	 * 删除教师信息的功能操作
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/background/teacherdelete.html",method=RequestMethod.GET)
	public void DeleteCourse(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String[] teachids=request.getParameterValues("teacherids");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		if(teachids.length==1){
			Long teachid=Long.parseLong(teachids[0]);			
			Teacherinfo teainfo=this.teacherDataService.getTeacherData(teachid);
			Boolean flag=this.teacherDataService.DeleteTeacherData(teainfo);
			if(flag){
				 response.getWriter().write("true");
			 }else{
				 response.getWriter().write("false");
			 }				
		}
		if(teachids.length>1){
			List<Long> teachIDList=new ArrayList<>();
			for(String teachid:teachids){
				teachIDList.add(Long.parseLong(teachid));
			}
			Boolean flag2=this.teacherDataService.DeleteTeacherData(teachIDList);
			if(flag2){
				 response.getWriter().write("true");
			 }else{
				 response.getWriter().write("false");
			 }	
		}
	}
	@RequestMapping(value="/background/teacherQuery.html",method=RequestMethod.GET)
	public String TeacherDataQuery(HttpServletRequest request,HttpServletResponse response){
		String UserName=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		List<Teacherinfo> teacher=this.teacherDataService.getTeacherData(UserName,phone,email,0, CommonComponent.PAGESIZE);		
		request.setAttribute("teachers", teacher);
		return "background/teacherData/teacherList";
	}
		
}
