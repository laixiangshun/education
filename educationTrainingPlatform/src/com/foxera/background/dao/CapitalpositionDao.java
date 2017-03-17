package com.foxera.background.dao;

import com.foxera.models.Levelinfo;
import java.util.List;

/**
 * <b>資位表設定<b>相關數據操作
 * @author Aaron
 *
 */
public interface CapitalpositionDao {
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
	 * @param levelinfo 資位模型
	 * @return
	 */
	public boolean insertCapitalposition(Levelinfo levelinfo);
	
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
