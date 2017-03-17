package com.foxera.background.service;

import java.util.List;
import java.sql.Date;

import com.foxera.models.Timetag;

public interface CourseMgntTimetagService {

	/**
	 * 新增考勤記錄
	 * @param jobnum 工號
	 * @param username 姓名
	 * @param entrydate 上課時間
	 * @param leavedate 下課時間
	 * @param offdutydate 下班時間
	 * @param remark 備註
	 * @oaram writtenexam 筆試成績
	 * @param oralexam 口試成績
	 * @param createuser 創建人
	 * @param courseid 課程ID
	 * @param regionid 廠區ID
	 * @return
	 */
	public boolean addTimetag(String jobnum,String username,Date entrydate,Date leavedate,Date offdutydate,
			String remark,double writtenexam,double oralexam, long createuser,long courseid,long regionid);
	
	/**
	 * 刪除考勤記錄
	 * @param timetagid
	 * @return
	 */
	public boolean deleteTimetag(long timetagid);
	
	/**
	 * 修改考勤記錄
	 * 工號、姓名、課程ID、廠區ID不可修改
	 * @param timetagid
	 * @return
	 */
	public boolean modifyTimetag(String timetagid,String jobnum,String username, Date entrydate,Date leavedate,Date offdutydate,
			String remark,double writtenexam,double oralexam, long edituser,Date editdate,long courseid,long regionid);
	
	/**
	 * 根據考勤id查詢考勤記錄
	 * @param timetagid
	 * @return
	 */
	public Timetag getTimetag(long timetagid);
	
	/**
	 * 分頁查詢所有考勤信息
	 * @param index
	 * @param pagesize
	 * @return
	 */
	List<Timetag> getTimetaginfos(int index,int pagesize);
	
	/**
	 * 按條件分頁查詢考勤信息
	 * @param courseid 課程ID
	 * @param regionid 廠區ID
	 * @param entrydate 上課時間
	 * @param leavedate 下課時間
	 * @param index
	 * @param pagesize
	 * @return
	 */
	List<Timetag> getTimetaginfos(long courseid,long regionid,Date entrydate,Date leavedate,int index,int pagesize);
}
