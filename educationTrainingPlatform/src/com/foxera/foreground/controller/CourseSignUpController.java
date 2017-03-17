package com.foxera.foreground.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 前台：課程報名
 * @author Aaron
 *
 */
@RequestMapping("foreground")
@Controller
public class CourseSignUpController {
	
	/**
	 * 課程顯示列表
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/courseList.html",method=RequestMethod.GET)
	public String CourseList(HttpServletRequest request,HttpServletResponse response){
		return "foreground/courseSignUp/courseList";
	}

	/**
	 * 報名頁面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/courseSignUp.html",method=RequestMethod.GET)
	public String CourseSignUp(HttpServletRequest request,HttpServletResponse response){
		return "foreground/courseSignUp/courseSignUp";
	}
	
	/**
	 * 團體報名頁面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/courseGroupSignUp.html",method=RequestMethod.GET)
	public String CourseGroupSignUp(HttpServletRequest request,HttpServletResponse response){
		return "foreground/courseSignUp/courseGroupSignUp";
	}
	
	/**
	 * 團體報名匯入彈出頁面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/courseGroupSignUpImportExcel.html",method=RequestMethod.GET)
	public String CourseGroupSignUpImportExcel(HttpServletRequest request,HttpServletResponse response){
		return "foreground/courseSignUp/courseGroupSignUpImportExcel";
	}
}
