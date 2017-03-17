package com.foxera.background.controller;


import java.io.IOException;
import java.util.List;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;







import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.foxera.background.service.CourseMgntTimetagService;
import com.foxera.models.Timetag;
import com.foxera.models.Userinfo;

@RequestMapping("/background")
@Controller
public class CourseMgntTimetagController {

	@Autowired
	private CourseMgntTimetagService courseMgntTimetagService;
	
	/**
	 * 查詢教育訓練考勤信息
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/timetag.html",method=RequestMethod.GET)
	public String toTimetagPage(HttpServletRequest request){
		List<Timetag> timetags=this.courseMgntTimetagService.getTimetaginfos(0, CommonComponent.PAGESIZE);
		request.setAttribute("timetags", timetags);
		return "background/courseManage/timetag";
	}
	
	/**
	 * 按条件查询考勤信息
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/querytimetags.action",method=RequestMethod.GET)
	public String doQueryTimetags(HttpServletRequest request){
		long courseid= Long.parseLong(request.getParameter("courseid"));//課程ID
		long regionid= Long.parseLong(request.getParameter("regionid"));//廠區ID
		Date entrydate = Date.valueOf(request.getParameter("entrydate"));//上課時間
		Date leavedate = Date.valueOf(request.getParameter("leavedate"));//下課時間
		List<Timetag> timetags=this.courseMgntTimetagService.getTimetaginfos(courseid, regionid, entrydate, leavedate,0,CommonComponent.PAGESIZE);
		request.setAttribute("timetags", timetags);
		return "background/courseManage/timetag";
	}
	
	/**
	 * 进入新增事業群资料页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/timetagCreate.html",method=RequestMethod.GET)
	public String toAddTimetagPage(HttpServletRequest request){
		return "background/courseManage/timetagCreate";
	}
	
	/**
	 * 执行新增考勤信息操作
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="/addtimetag.action",method=RequestMethod.GET)
	public void doAddTimetag(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String jobnum = request.getParameter("jobnum");//工號
		String username = request.getParameter("username");//姓名
		Date entrydate = Date.valueOf(request.getParameter("entrydate"));//上課時間
		Date leavedate = Date.valueOf(request.getParameter("leavedate"));//下課時間
		Date offdutydate = Date.valueOf(request.getParameter("offdutydate"));//下班時間
		String remark = request.getParameter("remark");//備註
		double writtenexam = Double.parseDouble(request.getParameter("writtenexam"));//筆試成績
		double oralexam = Double.parseDouble(request.getParameter("oralexam"));//口試成績
		long courseid = Long.parseLong(request.getParameter("courseid"));//課程ID
		long regionid = Long.parseLong(request.getParameter("regionid"));//廠區ID

		Userinfo userinfo=(Userinfo) request.getSession().getAttribute("user");
		boolean flag=this.courseMgntTimetagService.addTimetag(jobnum, username, entrydate, leavedate, offdutydate, remark, writtenexam, oralexam, userinfo.getUserid(), courseid, regionid) ;
		if(flag){
			response.getWriter().write("true");
		}else{
			response.getWriter().write("false");
		}
	}
	/**
	 * 进入修改资料页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/timetagModify.html",method=RequestMethod.GET)
	public String toModifyTimetagPage(HttpServletRequest request){
		String timetagid=request.getParameter("timetagid");
		Timetag timetag=this.courseMgntTimetagService.getTimetag(Long.parseLong(timetagid));
		request.setAttribute("timetag", timetag);
		return "background/courseManage/timetagCreate";
	}
	
	/**
	 * 执行修改资料操作
	 * 工號、姓名、課程ID、廠區ID不可修改
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="/modifytimetag.action",method=RequestMethod.GET)
	public void doModifyTimetag(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String timetagid = request.getParameter("timetagid");//工號
		String jobnum = request.getParameter("jobnum");//工號
		String username = request.getParameter("username");//姓名
		Date entrydate = Date.valueOf(request.getParameter("entrydate"));//上課時間
		Date leavedate = Date.valueOf(request.getParameter("leavedate"));//下課時間
		Date offdutydate = Date.valueOf(request.getParameter("offdutydate"));//下班時間
		String remark = request.getParameter("remark");//備註
		double writtenexam = Double.parseDouble(request.getParameter("writtenexam"));//筆試成績
		double oralexam = Double.parseDouble(request.getParameter("oralexam"));//口試成績
		long  courseid = Long.parseLong(request.getParameter("courseid"));//課程id
		long regionid = Long.parseLong(request.getParameter("regionid"));//廠區id
		
		Userinfo userinfo=(Userinfo) request.getSession().getAttribute("user");

		boolean flag=this.courseMgntTimetagService.modifyTimetag(timetagid,jobnum,username, entrydate, leavedate, offdutydate, remark, writtenexam, oralexam, userinfo.getUserid(), new Date(System.currentTimeMillis()),courseid,regionid);
		if(flag){
			response.getWriter().write("true");
		}else{
			response.getWriter().write("false");
		}
		
	}
	
	/**
	 * 課程管理-教育訓練出勤比對-新增-課程選擇
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/courseChoose.html",method=RequestMethod.GET)
	public String courseChoose(HttpServletRequest request,HttpServletResponse response){
		return "background/courseManage/courseChoose";
	}
	
	/**
	 * 課程管理-教育訓練出勤比對-新增-產區選擇
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/regionChoose.html",method=RequestMethod.GET)
	public String regionChoose(HttpServletRequest request,HttpServletResponse response){
		return "background/courseManage/regionChoose";
	}
}
