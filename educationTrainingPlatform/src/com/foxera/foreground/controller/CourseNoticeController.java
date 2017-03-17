package com.foxera.foreground.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 前台:課程公告
 * @author Aaron
 *
 */
@RequestMapping("foreground")
@Controller
public class CourseNoticeController {
	
	@RequestMapping(value="/courseNotice.html",method=RequestMethod.GET)
	public String CourseNotice(HttpServletRequest request,HttpServletResponse response){
		return "foreground/courseNotice/courseNotice";
	}
	
	@RequestMapping(value="/popCourseNotice.html",method=RequestMethod.GET)
	public String PopCourseNotice(HttpServletRequest request,HttpServletResponse response){
		return "foreground/courseNotice/popCourseNotice";
	}
}
