package com.foxera.background.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.foxera.background.service.SystemSetOrganizationService;

/**
 * 系统设定/组织管理 控制器
 * @author cxm
 *
 */
@RequestMapping("/background")
@Controller
public class SystemSetOrganizationController {
	/**
	 * 组织管理
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/organizationManage.html",method=RequestMethod.GET)
	public String OrganizationManage(HttpServletRequest request,HttpServletResponse response){
		return "background/systemSet/organizationManage";
	}
	/**
	 * 组织管理->新增
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/organizationManageCreate.html",method=RequestMethod.GET)
	public String OrganizationManageCreate(HttpServletRequest request,HttpServletResponse response){
		return "background/systemSet/organizationManageCreate";
	}
	/**
	 * 组织管理->修改
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/organizationManageModify.html",method=RequestMethod.GET)
	public String OrganizationManageModify(HttpServletRequest request,HttpServletResponse response){
		return "background/systemSet/organizationManageCreate";
	}
}
