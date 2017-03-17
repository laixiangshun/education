package com.foxera.background.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 課程管理-》管理開辦課程
 * @author Aaron
 *
 */
@RequestMapping("/background")
@Controller
public class CourseManageController {
	/**
	 * 管理開班課程
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/courseManage.html",method=RequestMethod.GET)
	public String CourseManage(HttpServletRequest request,HttpServletResponse response){
		return "background/courseManage/courseManage";
	}
	
	/**
	 * excal匯入
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/excelInput.html",method=RequestMethod.GET)
	public String excelInput(HttpServletRequest request,HttpServletResponse response){
		return "background/courseManage/excelInput";
	}
	
	/**
	 * 學分匯入
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/creditInput.html",method=RequestMethod.GET)
	public String CreditInput(HttpServletRequest request,HttpServletResponse response){
		return "background/courseManage/creditInput";
	}
}
