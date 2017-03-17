package com.foxera.background.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 設定模組-》技委會設定
 * @author Aaron
 *
 */
@RequestMapping("/background")
@Controller
public class SetModuleTechnicalCommittee {
	/**
	 * 技委會設定頁面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/technicalCommitteeManage.html",method=RequestMethod.GET)
	public String TechnicalCommitteeManage(HttpServletRequest request,HttpServletResponse response){
		return "background/setModule/technicalcommitteeManage";
	}
	
	/**
	 * 新增技委會
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/technicalCommitteeManageCreate.html",method=RequestMethod.GET)
	public String TechnicalCommitteeManageCreate(HttpServletRequest request,HttpServletResponse response){
		return "background/setModule/technicalcommitteeManageCreate";
	}
	
	/**
	 * 修改技委會
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/technicalCommitteeManageModify.html",method=RequestMethod.GET)
	public String TechnicalCommitteeManageModify(HttpServletRequest request,HttpServletResponse response){
		return "background/setModule/technicalcommitteeManageCreate";
	}
	
	/**
	 * excel匯入
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/technicalCommitteeImportExcel.html",method=RequestMethod.GET)
	public String TechnicalCommitteeManageImportExcel(HttpServletRequest request,HttpServletResponse response){
		return "background/setModule/technicalcommitteeImportExcel";
	}
}
