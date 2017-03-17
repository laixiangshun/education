package com.foxera.foreground.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 前台：課程討論版
 * @author Aaron
 *
 */
@RequestMapping("foreground")
@Controller
public class CourseDiscussController {
	
	@RequestMapping(value="/courseDiscuss.html",method=RequestMethod.GET)
	public String CourseDiscuss(HttpServletRequest request,HttpServletResponse response){
		return "foreground/courseDiscuss/courseDiscuss";
	}
	
	@RequestMapping(value="/popDiscuss.html",method=RequestMethod.GET)
	public String PopDiscuss(HttpServletRequest request,HttpServletResponse response){
		return "foreground/courseDiscuss/popDiscuss";
	}
}
