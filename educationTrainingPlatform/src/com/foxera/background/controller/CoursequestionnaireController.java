package com.foxera.background.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 課程管理-》課程問卷調查報表
 * @author Aaron
 *
 */

@Controller
public class CoursequestionnaireController {
	@RequestMapping(value="/background/coursequestionnaireManage.html",method=RequestMethod.GET)
	public String CoursequestionnaireManage(HttpServletRequest request,HttpServletResponse response){
		return "background/reportFormsModule/coursequestionnaireManage";
	}
}
