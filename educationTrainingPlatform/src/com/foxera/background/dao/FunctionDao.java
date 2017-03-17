package com.foxera.background.dao;

import java.util.List;

import com.foxera.models.Functionalinfo;
import com.foxera.util.QueryCondition;
import com.foxera.viewmodels.ViewModel;

/**
 * <b>功能管理</b>相关数据操作
 * @author fox
 *
 */
public interface FunctionDao {
	/**
	 * 新增功能信息
	 * @param functionalinfo
	 * @return
	 */
	public boolean insertOrUpdateFunction(Functionalinfo functionalinfo);

	/**
	 * 删除功能信息
	 * @param functionalinfo
	 * @return
	 */
	public boolean deleteFunction(Functionalinfo functionalinfo);
	
	/**
	 * 更新功能信息
	 * @param functionalinfo
	 * @return
	 */
	public boolean updateFunction(Functionalinfo functionalinfo);
	
	/**
	 * 查询所有功能信息
	 * @return
	 */
	public List<Functionalinfo> getAllFunctions();
	
	/**
	 * 查询全部功能信息
	 * @return
	 */
	public ViewModel<Functionalinfo> getFunctions(QueryCondition condition);
	
	/**
	 * 按条件查询所有功能信息(分页)
	 * @param modulecode 模组代码
	 * @param functionname 功能名称（窗口名称）
	 * @param parentfunc 父模组代码
	 * @param index 第几页
	 * @param pagesize 每页几条
	 * @return
	 */
	public List<Functionalinfo> getFunctions(long modulecode,String functionname,long parentfunc,int index,int pagesize);
	
	/**
	 * 根据functionid查询function
	 * @param functionid
	 * @return
	 */
	public Functionalinfo getFunction(long functionid);
	
	/**
	 * 根据父级id查询所有下一层子级
	 * @param parentFuncId
	 * @return
	 */
	public List<Functionalinfo> getChildFunctions(Long parentFuncId);
}
