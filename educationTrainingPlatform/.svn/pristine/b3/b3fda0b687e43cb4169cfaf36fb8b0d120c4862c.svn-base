package com.foxera.foreground.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 前台：課程討論版
 * @author ljy
 *
 */
@RequestMapping("foreground")
@Controller
public class InstructorInformationController {

	@RequestMapping(value="/instructorinformationManage.html",method=RequestMethod.GET)
	public String ToInstructorInformationManage(HttpServletRequest request,HttpServletResponse response){
		return "foreground/InstructorInformation/instructorInformationManage";
	}
	
	@RequestMapping(value="/instructorinformationInfo.html",method=RequestMethod.GET)
	public String ToInstructorInformationInfo(HttpServletRequest request,HttpServletResponse response){
		return "foreground/InstructorInformation/instructorInformationInfo";
	}
	
	@RequestMapping(value="/satisfactionQuestionnaire.html",method=RequestMethod.GET)
	public String ToSatisfactionQuestionnaire(HttpServletRequest request,HttpServletResponse response){
		return "foreground/InstructorInformation/satisfactionQuestionnaire";
	}
}
