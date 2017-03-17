package com.foxera.background.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * 安控模组控制器
 * @author fgg
 */
@RequestMapping ("/background")
@Controller
public class SecurityModuleController {
	/**
	 * 用户管理
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/userManage.html",method=RequestMethod.GET)
	public String BackUm(HttpServletRequest request,HttpServletResponse response){
		return "background/securityModule/userManage";
	}

	/**
	 * 树状目录
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/organizationManageChoose.html",method=RequestMethod.GET)
	public String BackOm(HttpServletRequest request,HttpServletResponse response){
		return "background/systemSet/organizationManageChoose";
	}

	/**
	 * 新增，修改弹出层
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/userManagePopView.html",method=RequestMethod.GET)
	public String BackPop(HttpServletRequest request,HttpServletResponse response){
		return "background/securityModule/userManagePopView";
	}

	/**
	 * 复制用户信息弹出层
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/userInfoCopy.html",method=RequestMethod.GET)
	public String BackUIC(HttpServletRequest request,HttpServletResponse response){
		return "background/securityModule/userInfoCopy";
	}

	/**
	 * 修改密码
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/modifyPassword.html",method=RequestMethod.GET)
	public String BackPw(HttpServletRequest request,HttpServletResponse response){
		return "background/securityModule/modifyPassword";
	}
}
