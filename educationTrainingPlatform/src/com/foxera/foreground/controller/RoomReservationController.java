package com.foxera.foreground.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 前台：會議室/教室預約
 * @author Aaron
 *
 */
@RequestMapping("foreground")
@Controller
public class RoomReservationController {
	private String clickDate;
	
	@RequestMapping(value="/roomReservation.html",method=RequestMethod.GET)
	public String RoomReservation(HttpServletRequest request,HttpServletResponse response){
		return "foreground/roomReservation/roomReservation";
	}
	
	/**
	 * 前台：會議室/教室預約详情
	 * @param request 
	 * @return
	 */
	@RequestMapping(value="/roomReservationDetail.html",method=RequestMethod.GET)
	public String RoomReservationDetail(HttpServletRequest request){
		clickDate = "2017-03-15";
		request.setAttribute("clickDate", clickDate);
		return "foreground/roomReservation/roomReservationDetail";
	}
}
