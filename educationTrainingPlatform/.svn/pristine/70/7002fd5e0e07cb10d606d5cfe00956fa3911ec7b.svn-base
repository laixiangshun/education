package com.foxera.background.dao;

import java.util.List;
import java.sql.Date;
import com.foxera.models.Timetag;

public interface TimetagDao {


	/**
	 * 新增考勤信息
	 * @param timetaginfo
	 * @return
	 */
	public boolean insertOrUpdateTimetag(Timetag timetaginfo);

	/**
	 * 删除考勤信息
	 * @param timetaginfo
	 * @return
	 */
	public boolean deleteTimetag(Timetag timetaginfo);
	
	/**
	 * 更新考勤信息
	 * @param timetaginfo
	 * @return
	 */
	public boolean updateTimetag(Timetag timetaginfo);
	
	/**
	 * 查询全部考勤信息(分页)
	 * @param index 第几页
	 * @param pagesize 每页几条
	 * @return
	 */
	public List<Timetag> getTimetags(int index,int pagesize);
	
	/**
	 * 按条件查询所有考勤信息(分页)
	 * @param courseid 課程代碼
	 * @param regionid 廠區ID
	 * @param entrydate 刷卡起始時間
	 * @param leavedate 刷卡截止時間
	 * @param index 第几页
	 * @param pagesize 每页几条
	 * @return
	 */
	public List<Timetag> getTimetags(long courseid,long regionid,Date entrydate, Date leavedate, int index,int pagesize);
	
	/**
	 * 根据timetagid查询考勤
	 * @param timetagid
	 * @return
	 */
	public Timetag getTimetag(long timetagid);
}