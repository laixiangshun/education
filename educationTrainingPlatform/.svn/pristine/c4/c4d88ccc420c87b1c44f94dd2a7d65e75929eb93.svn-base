package com.foxera.background.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 教室管理/會議室預約列表 控制器
 * @author cxm
 *
 */
@RequestMapping("/background")
@Controller
public class ClassroomManageController {
	@RequestMapping(value="/classroomList.html",method=RequestMethod.GET)
	public String ClassroomList(HttpServletRequest request,HttpServletResponse response){
		return "background/classroomManage/classroomManage";
	}
	/**
	 * 新增教室
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/classroomCreate.html",method=RequestMethod.GET)
	public String ClassroomCreate(HttpServletRequest request,HttpServletResponse response){
		return "background/classroomManage/classroomCreate";
	}
	/**
	 * 修改教室
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/classroomModify.html",method=RequestMethod.GET)
	public String ClassroomModify(HttpServletRequest request,HttpServletResponse response){
		return "background/classroomManage/classroomCreate";
	}
}
