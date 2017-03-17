package com.foxera.background.dao;

import java.util.List;

import com.foxera.models.Role;
import com.foxera.models.Rolefunctional;
import com.foxera.util.QueryCondition;
import com.foxera.viewmodels.RoleFunction;
import com.foxera.viewmodels.ViewModel;

/**
 * 角色管理dao层
 * @author rainbow
 *
 */
public interface RoleDao {
	/**
	 *新增角色
	 * @param role
	 * @return
	 */
	public boolean insertRole(Role role);
	
	/**
	 * 删除角色
	 * @param role
	 * @return
	 */
	public boolean deleteRole(Role role);
	
	/**
	 * 根据角色id删除多个角色
	 * @param roleid
	 * @return
	 */
	public boolean deleteRoles(List<Long> roleids);
	
	/**
	 * 修改角色
	 * @param role
	 * @return
	 */
	public boolean updateRole(Role role);
	
	/**
	 * 根据角色id查找角色
	 * @param roleid
	 * @return
	 */
	public Role SelectRoleById(Long roleid);
	
	/**
	 * 根据角色rolecode查找角色
	 * @param rolecode
	 * @return
	 */
	public Role SelectRoleBycode(String rolecode);
	
	/**
	 * 根据角色id列表查找多条数据
	 * @param roles
	 * @return
	 */
	public List<Role> SelectRoleByIds(List<Long> roles);
	/**
	 * 分页查找角色
	 * @param index 当前页
	 * @param pagesize 每页数据大小
	 * @return
	 */
	public List<Role> getRoles(int index,int pagesize);

	/**
	 * 根据条件查找角色
	 * @param rolecode 
	 * @param rolename 
	 * @param functionid 
	 * @param index �
	 * @param pagesize 
	 * @return
	 */
	public List<RoleFunction> getRoles(String rolecode,String rolename,Long functionid,int index,int pagesize);
	
	/**
	 * 添加Rolefunctional
	 * @param rolefunction
	 * @return
	 */
	public boolean AddRoleFunction(Rolefunctional rolefunction);
	
	/**
	 * 根据roleId在roleFunctional查找
	 * @param roleId
	 * @return
	 */
	public List<Rolefunctional> SelectRoleFunctionalByRoleId(Long roleId);
	
	/**
	 * 在roleFunctional中根据roleids删除
	 * @param roleFunctionalIds
	 * @return
	 */
	public boolean DeleteRoleFunctionalByIds(List<Long> roleFunctionalIds);
	
	/**
	 * 在rolefunctional中根据角色id列表删除多条数据
	 * @param roleIds
	 * @return
	 */
	public boolean DeleteRoleFunctionalByRoleids(List<Long> roleIds);
	/**
	 *根据角色id获取功能名称
	 * @param roleId
	 * @return
	 */
	public List<String> GetFunctionNameByRoleId(Long roleId);
	
	/**
	 * 根据rolecode和rolename查找对应的RoleFunction
	 * @param rolecode
	 * @param rolename
	 * @return
	 */
	public RoleFunction SelectRoleFunctionByCodeByName(String rolecode,String rolename);
	
	/**
	 * 条件查询角色及对应的权限
	 * @param currentPage
	 * @param pageSize
	 * @param condition
	 * @return
	 */
	public ViewModel<RoleFunction> getRoleAndFunctioninfos(QueryCondition condition);
}
