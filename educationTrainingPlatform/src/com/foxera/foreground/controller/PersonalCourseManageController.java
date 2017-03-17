package com.foxera.foreground.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 前台：个人课程管理
 * @author fgg
 *
 */
@RequestMapping("foreground")
@Controller
public class PersonalCourseManageController {
	
	/**
	 * 前台：个人课程管理
	 * @param request 
	 * @return
	 */
	@RequestMapping(value="/personalCourseManage.html",method=RequestMethod.GET)
	public String PersonalCourseManage(HttpServletRequest request){
		return "foreground/personalCourseManage/personalCourseManage";
	}
	
	/**
	 * 前台：个人课程管理-超级管理员导入
	 * @param request 
	 * @return
	 */
	@RequestMapping(value="/personalCourseImport.html",method=RequestMethod.GET)
	public String PersonalCourseImport(HttpServletRequest request){
		return "foreground/personalCourseManage/personalCourseImport";
	}
	
	/**
	 * 前台：个人课程管理-查看课程详情
	 * @param request 
	 * @return
	 */
	@RequestMapping(value="/personalCourseDetail.html",method=RequestMethod.GET)
	public String PersonalCourseDetail(HttpServletRequest request){
		return "foreground/personalCourseManage/personalCourseDetail";
	}
}
