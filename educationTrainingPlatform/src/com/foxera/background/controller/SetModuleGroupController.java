package com.foxera.background.controller;

import java.io.IOException;
import java.util.List;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.foxera.background.service.SetModuleGroupService;
import com.foxera.models.Groupinfo;
import com.foxera.models.Userinfo;

/**
 * 次集團事業群設定
 * @author kaiyinghu
 *
 */

@RequestMapping("/background")
@Controller
public class SetModuleGroupController {

	@Autowired
	private SetModuleGroupService setModuleGroupService;
	
	/**
	 * 查询次集團事業群列表
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/groupManage.html",method=RequestMethod.GET)
	public String toFuncManagerPage(HttpServletRequest request){
		List<Groupinfo> funcs=this.setModuleGroupService.getGroupinfos(0, CommonComponent.PAGESIZE);
		request.setAttribute("functions", funcs);
		return "background/setModule/groupManage";
	}
	
	/**
	 * 按条件查询次集團信息
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/querygroups.action",method=RequestMethod.GET)
	public String doQueryFuncs(HttpServletRequest request){
		String groupcode=request.getParameter("groupcode");//次集團代码
		String groupname=request.getParameter("groupname");//次集團名称
		String businessgroupid=request.getParameter("businessgroupid");//事業群代碼
		String businessname=request.getParameter("businessname");//事業群名稱
		List<Groupinfo> funcs=this.setModuleGroupService.getGroupinfos(groupcode, groupname, businessgroupid, businessname, 0, CommonComponent.PAGESIZE);
		request.setAttribute("functions", funcs);
		return "background/setModule/groupManage";
	}
	
	/**
	 * 进入新增事業群资料页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/groupManageCreate.html",method=RequestMethod.GET)
	public String toAddGroupPage(HttpServletRequest request){
		return "background/setModule/groupManageCreate";
	}
	
	/**
	 * 执行新增功能资料操作
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="/addgroup.action",method=RequestMethod.GET)
	public void doAddFunc(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String groupcode=request.getParameter("groupcode");//次集團代码
		String groupname=request.getParameter("groupname");//次集團名稱
		String businessgroupid=request.getParameter("businessgroupid");//事業群代碼
		String businessname=request.getParameter("businessname");//事業群名稱

		Userinfo userinfo=(Userinfo) request.getSession().getAttribute("user");
		boolean flag=this.setModuleGroupService.addGroup(groupcode, groupname, businessgroupid, businessname, userinfo.getUserid());
		if(flag){
			response.getWriter().write("true");
		}else{
			response.getWriter().write("false");
		}
	}
	/**
	 * 进入修改资料页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/groupManageModify.html",method=RequestMethod.GET)
	public String toModifyFuncPage(HttpServletRequest request){
		String groupid=request.getParameter("functionid");
		Groupinfo func=this.setModuleGroupService.getGroupinfo(Long.parseLong(groupid));
		request.setAttribute("function", func);
		return "background/setModule/groupManageCreate";
	}
	
	/**
	 * 执行修改资料操作
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="/modifygroup.action",method=RequestMethod.GET)
	public void doModifyFunc(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String groupid = request.getParameter("groupid");
		String groupcode=request.getParameter("groupcode");//次集團代码
		String groupname=request.getParameter("groupname");//次集團名稱
		String businessgroupid=request.getParameter("businessgroupid");//事業群代碼
		String businessname=request.getParameter("businessname");//事業群名稱
		
		Userinfo userinfo=(Userinfo) request.getSession().getAttribute("user");

		boolean flag=this.setModuleGroupService.modifyGroup(groupid,groupcode, groupname, businessgroupid, businessname,userinfo.getUserid(), new Date(System.currentTimeMillis()));
		if(flag){
			response.getWriter().write("true");
		}else{
			response.getWriter().write("false");
		}
		
	}

}
