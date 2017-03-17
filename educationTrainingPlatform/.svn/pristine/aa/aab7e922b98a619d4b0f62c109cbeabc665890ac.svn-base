package com.foxera.background.dao;

import java.util.List;

import com.foxera.models.Groupinfo;
/**
 * 次集團事業群
 * @author kaiyinghu
 *
 */
public interface GroupDao {

	/**
	 * 新增次集團事業群
	 * @param groupinfo
	 * @return
	 */
	public boolean insertOrUpdateGroup(Groupinfo groupinfo);

	/**
	 * 删除次集團事業群
	 * @param groupinfo
	 * @return
	 */
	public boolean deleteGroup(Groupinfo groupinfo);
	
	/**
	 * 更新次集團事業群
	 * @param groupinfo
	 * @return
	 */
	public boolean updateGroup(Groupinfo groupinfo);
	
	/**
	 * 查询全部次集團事業群(分页)
	 * @param index 第几页
	 * @param pagesize 每页几条
	 * @return
	 */
	public List<Groupinfo> getGroups(int index,int pagesize);
	
	/**
	 * 按条件查询所有次集團事業群信息(分页)
	 * @param groupcode 次集團代码
	 * @param groupname 次集團名称
	 * @param businessgroupid 事業群代碼
	 * @param businessname 事業群名稱
	 * @param index 第几页
	 * @param pagesize 每页几条
	 * @return
	 */
	public List<Groupinfo> getGroups(String groupcode,String groupname,String businessgroupid,String businessname,int index,int pagesize);
	
	/**
	 * 根据groupid查询group
	 * @param groupid
	 * @return
	 */
	public Groupinfo getGroup(long groupid);
}
