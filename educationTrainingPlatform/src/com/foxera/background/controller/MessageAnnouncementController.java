package com.foxera.background.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 消息管理/公告消息 控制器
 * @author cxm
 *
 */
@RequestMapping("/background")
@Controller
public class MessageAnnouncementController {
	/**
	 * 公告消息
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/announcementMessage.html",method=RequestMethod.GET)
	public String BackAm(HttpServletRequest request){
		List<String> List = null ;
		request.setAttribute("announcementList", List);
		return "background/messageManage/announcementMessage";
	}

	/**
	 * 编辑页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/editorPage.html",method=RequestMethod.GET)
	public String BackEp(HttpServletRequest request){
		
		return "background/messageManage/editorPage";
	}

	/**
	 * 查看公告
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/previewPage.html",method=RequestMethod.GET)
	public String BackPp(HttpServletRequest request){
		return "background/messageManage/previewPage";
	}

	/**
	 * 置顶
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/setTopPage.html",method=RequestMethod.GET)
	public String BackSt(HttpServletRequest request){
		return "background/messageManage/setTopPage";
	}
}
