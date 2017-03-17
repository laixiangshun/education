package com.foxera.background.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 課程管理-》課程討論區列表
 * @author Aaron
 *
 */
@RequestMapping("background")
@Controller
public class CourseManageDiscussController {
	/**
	 * 課程討論區列表頁面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/courseDiscuss.html",method=RequestMethod.GET)
	public String CourseDiscuss(HttpServletRequest request,HttpServletResponse response){
		return "background/courseManage/courseDiscuss";
	}
	
	/**
	 * 課程討論編輯頁面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/courseDiscussEdit.html",method=RequestMethod.GET)
	public String CourseDiscussEdit(HttpServletRequest request,HttpServletResponse response){
		return "background/courseManage/courseDiscussEdit";
	}
}
