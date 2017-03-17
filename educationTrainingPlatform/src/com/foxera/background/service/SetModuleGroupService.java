package com.foxera.background.service;

import java.util.List;

import oracle.sql.DATE;

import com.foxera.models.Groupinfo;


public interface SetModuleGroupService {
	/**
	 * 分页查询所有功能信息
	 * @param index
	 * @param pagesize
	 * @return
	 */
	public List<Groupinfo> getGroupinfos(int index,int pagesize);
	
	/**
	 * 按条件分页查询所有次集團事業群信息
	 * @param groupcode 次集團代码
	 * @param groupname 次集團名称
	 * @param businessgroupid 事業群代碼
	 * @param businessname 事業群名稱
	 * @param index
	 * @param pagesize
	 * @return
	 */
	public List<Groupinfo> getGroupinfos(String groupcode,String groupname,String businessgroupid,String businessname,int index,int pagesize);

	/**
	 * 新增次集團事業群资料
	 * @param groupcode 次集團代码
	 * @param groupname 次集團名称
	 * @param businessgroupid 事業群代碼
	 * @param businessname 事業群名稱
	 * @param createuser 创建者
	 * @return
	 */
	public boolean addGroup(String groupcode,String groupname,String businessgroupid,String businessname,long createuser);
	
	/**
	 * 根据groupid查询group（修改group功能）
	 * @param groupid
	 * @return
	 */
	public Groupinfo getGroupinfo(long groupid);
	
	/**
	 * 修改group
	 * @param groupid
	 * @param groupcode 次集團代码
	 * @param groupname 次集團名称
	 * @param businessgroupid 事業群代碼
	 * @param businessname 事業群名稱
	 * @param edituser
	 * @param date
	 * @return
	 */
	public boolean modifyGroup(String groupid, String groupcode,String groupname,String businessgroupid,String businessname,long createuser,java.sql.Date date);

}
