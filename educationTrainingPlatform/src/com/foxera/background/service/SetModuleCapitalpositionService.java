package com.foxera.background.service;

import java.util.Date;
import java.util.List;

import com.foxera.models.Levelinfo;

/**
 * 設定模組<b>資位表管理<b> service
 * @author Aaron
 *
 */
public interface SetModuleCapitalpositionService {
	
	/**
	 * 查詢所有資位信息
	 * @param index 第幾頁
	 * @param pageSize 每頁幾條數據
	 * @return
	 */
	public List<Levelinfo> getAllCapitalposition(int index, int pageSize);
	
	/**
	 * 按條件查詢資位信息
	 * @param levelid 資位代碼
	 * @param levelname 資位名稱
	 * @param index 第幾頁
	 * @param pageSize 每頁幾條數據
	 * @return
	 */
	public List<Levelinfo> getCapitalposition(Long levelid, String levelname,  int index, int pageSize);
	
	/**
	 * 新增資位信息
	 * @param levelid 資位代碼
	 * @param levelname 資位名稱
	 * @param createuser 創建用戶
	 * @param createdate 創建時間
	 * @param edituser 修改用戶
	 * @param editdate 修改時間
	 * @return
	 */
	public boolean AddCapitalposition(Long levelid, String levelname, Long createuser, Date createdate, Long edituser, Date editdate);
	
	/**
	 * 更新資位信息
	 * @param levelinfo 資位模型
	 * @return
	 */
	public boolean updateCapitalposition(Levelinfo levelinfo);
	
	/**
	 * 刪除資位信息
	 * @param levelid 資位代碼
	 * @return
	 */
	public boolean deleteCapitalposition(Long levelid);
}
