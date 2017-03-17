package com.foxera.background.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

import com.foxera.background.service.SetModuleCapitalpositionService;
import com.foxera.models.Levelinfo;
import com.foxera.models.Userinfo;

/**
 * 設定模組-》資位表設定
 * @author Aaron
 *
 */
@RequestMapping("/background")
@Controller
public class SetModuleCapitalpositionController {
	@Autowired
	private SetModuleCapitalpositionService setModuleCapitalpositionService;
	
	/**
	 * 資位表設定頁面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/capitalpositionManage.html",method=RequestMethod.GET)
	public String CapitalpositionManage(HttpServletRequest request,HttpServletResponse response){
		List<Levelinfo> Levelinfos = new ArrayList<Levelinfo>();
		Levelinfos = this.setModuleCapitalpositionService.getAllCapitalposition(0, 10);
		request.setAttribute("capitalpositions", Levelinfos);
		return "background/setModule/capitalpositionManage";
	}
	
	/**
	 * 新增資位頁面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/capitalpositionManageCreate.html",method=RequestMethod.GET)
	public String CapitalpositionManageCreate(HttpServletRequest request,HttpServletResponse response){
		
		return "background/setModule/capitalpositionManageCreate";
	}
	
	/**
	 * 新增資位操作
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="/addCapital.action",method=RequestMethod.POST)
	public void doAddCapital(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String levelidStr = request.getParameter("levelid");// 資位代碼
		String levelname = request.getParameter("levelname");// 資位名稱
		Date createDate = new Date();
		/*Userinfo userinfo = (Userinfo) request.getSession()
				.getAttribute("user");*/
		Userinfo userinfo = new Userinfo();
		userinfo.setUserid(Long.parseLong("0"));
		Long levelid = Long.parseLong(levelidStr);userinfo.getUserid();
		boolean result = this.setModuleCapitalpositionService.AddCapitalposition(levelid, levelname, 
				userinfo.getUserid(), createDate, userinfo.getUserid(), createDate);
		if(result){
			response.getWriter().write("true");
		}else{
			response.getWriter().write("false");
		}
	}
	
	/**
	 * 修改資位
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/capitalpositionManageModify.html",method=RequestMethod.GET)
	public String CapitalpositionManageModify(HttpServletRequest request,HttpServletResponse response){
		return "background/setModule/capitalpositionManageCreate";
	}
	
	/**
	 * excel匯入
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/capitalpositionImportExcel.html",method=RequestMethod.GET)
	public String CapitalpositionManageImportExcel(HttpServletRequest request,HttpServletResponse response){
		return "background/setModule/capitalpositionImportExcel";
	}
}
