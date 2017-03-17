package com.foxera.background.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.foxera.background.dao.RoleDao;
import com.foxera.background.service.SystemSetRoleService;
import com.foxera.models.Role;
import com.foxera.models.Rolefunctional;
import com.foxera.util.QueryCondition;
import com.foxera.viewmodels.RoleFunction;
import com.foxera.viewmodels.ViewModel;

/**
 * 角色管理——service层实现
 * @author rainbow
 *
 */
@Transactional
@Service("SystemSetRoleService")
public class SystemSetRoleServiceImpl implements SystemSetRoleService{
	@Autowired
	private RoleDao roleDao;

	@Override
	public boolean AddRole(Role role,String[] rolePermission) {
		boolean flag=this.roleDao.insertRole(role);
		if(flag)
		{
			try {
				Long roleid=role.getRoleid();
				List<Long> rolefunctionids=new ArrayList<>();
				List<String> rolePermissions=Arrays.asList(rolePermission);
				for(int i=0;i<rolePermissions.size();i++)
				{
					Long tunctionid=Long.valueOf(rolePermissions.get(i));
					rolefunctionids.add(tunctionid);
				}
				for(Long rolefunctionid : rolefunctionids) {
					Rolefunctional roleFunction=new Rolefunctional(roleid,rolefunctionid);
					boolean flag2=this.roleDao.AddRoleFunction(roleFunction);
					if(flag2==false)
					{
						throw new RuntimeException("插入失败");
					}
				}
				/*boolean flag2=this.roleDao.AddRoleFunction(roleFunction);
				if(flag2==false)
				{
					throw new RuntimeException("插入失败");
					return false;
				}*/
				return true;
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("插入失败");
			}
			
		}else{
		 throw new RuntimeException("插入失败");
		}
	}

	@Override
	public boolean DeleteRoleAndFunctionIds(Role role) {
		try {
			boolean flag=this.roleDao.deleteRole(role);
			if(flag)
			{
				List<Rolefunctional> roleFunctional=this.roleDao.SelectRoleFunctionalByRoleId(role.getRoleid());
				List<Long> roleFunctionalIdList=new ArrayList<>();
				for (Rolefunctional rolefunctional : roleFunctional) {
					roleFunctionalIdList.add(rolefunctional.getRfId());
				}
				if(roleFunctionalIdList != null)
				{
					boolean flag2=this.roleDao.DeleteRoleFunctionalByIds(roleFunctionalIdList);
					if(flag2 ==false)
					{
						throw new RuntimeException("删除角色和权限失败");
					}
					return true;
				}else
				{
					throw new RuntimeException("删除角色和权限失败");
				}
				
			}else
			{
				throw new RuntimeException("删除角色和权限失败");
			}
		} catch (Exception e) {
			throw new RuntimeException("删除角色和权限失败");
		}
	}

	@Override
	public boolean DeleteRoles(List<Long> idList) {
		
		try {
			List<Role> roleList=this.roleDao.SelectRoleByIds(idList);
			if(roleList!=null)
			{
				boolean flag=this.roleDao.deleteRoles(idList);
				if(flag)
				{
					/*for(int i=0;i<idList.size();i++)
					{
						Long roleId=idList.get(i);
						List<Rolefunctional> roleFunctionals=this.SelectRoleFunctional(roleId);
						List<Long> rolefunctionalIdList=new ArrayList<>();
						for (Rolefunctional rolefunctional : roleFunctionals) {
							rolefunctionalIdList.add(rolefunctional.getRfId());
						}
						if(rolefunctionalIdList!=null)
						{
							flag2=this.sesRoleService.DeleteRoleFunctionById(rolefunctionalIdList);
						}
					}*/
					boolean flag2=this.roleDao.DeleteRoleFunctionalByRoleids(idList);
					if(flag2==false)
					{
						throw new RuntimeException("删除多个角色失败");
					}
					return true;
				}else
				{
					throw new RuntimeException("删除多个角色失败");
				}
			}else
			{
				throw new RuntimeException("删除多个角色失败");
			}
		} catch (Exception e) {
			throw new RuntimeException("删除多个角色失败");
		}
	}

	@Override
	public boolean ModifyRole(Role role) {
		boolean flag=this.roleDao.deleteRole(role);
		if(flag)
		{
			return true;
		}else{
			return false;
		}
	}
	
	@Override
	public Role SelectRoleById(Long roleid) {
		Role role=this.roleDao.SelectRoleById(roleid);
		if(role!=null)
		{
			return role;
		}
		return null;
	}

	@Override
	public Role SelectRoleByCode(String roelcode) {
		try {
			Role role=this.roleDao.SelectRoleBycode(roelcode);
			return role;
		} catch (Exception e) {
			throw new RuntimeException("查找失败");
		}
	}

	@Override
	public List<String> GetFunctionNameByRoleId(Long roleId) {
		List<String> functionNames=this.roleDao.GetFunctionNameByRoleId(roleId);
		if(functionNames!=null)
		{
			return functionNames;
		}
		return null;
	}

	@Override
	public List<Role> selectRoles(int currentPage, int pageSize) {
		List<Role> roleList=this.roleDao.getRoles(currentPage, pageSize);
		if(roleList!=null && roleList.size()>0)
		{
			return roleList;
		}else{
			return null;
		}
		
	}

	@Override
	public List<RoleFunction> SelectRolesByCodeByNameByFunction(String roleCode,
			String roleName, Long functionid, int currentPage,
			int pageSize) {
		List<RoleFunction> roleFunctionList=this.roleDao.getRoles(roleCode, roleName, functionid, currentPage, pageSize);
		if(roleFunctionList!=null)
		{
			return roleFunctionList;
		}
		return null;
	}

	@Override
	public boolean AddRoleFunction(Long roleid,String[] rolefunction) {
		if(rolefunction!=null)
		{
			for (String rolefunctionid : rolefunction) {
				Rolefunctional roleFunction=new Rolefunctional(roleid,Long.parseLong(rolefunctionid));
				boolean flag=this.roleDao.AddRoleFunction(roleFunction);
				if(flag==false)
				{
					return false;
				}
			}
			return true;
		}else
		{
			return false;
		}
			
	}

	@Override
	public List<Rolefunctional> SelectRoleFunctional(Long roleId) {
		List<Rolefunctional> roleFunctionalList=this.roleDao.SelectRoleFunctionalByRoleId(roleId);
		if(roleFunctionalList!=null)
		{
			return roleFunctionalList;
		}
		return null;
	}

	@Override
	public boolean DeleteRoleFunctionById(List<Long> roleFunctionIdList) {
		boolean flag=this.roleDao.DeleteRoleFunctionalByIds(roleFunctionIdList);
		if(flag)
		{
			return true;
		}
		return false;
	}

	@Override
	public RoleFunction SelectRoleFunctionByCodeByName(String roleCode,
			String roleName) {
		RoleFunction rolefunction=this.roleDao.SelectRoleFunctionByCodeByName(roleCode,roleName);
		if(rolefunction!=null)
		{
			return rolefunction;
		}
		return null;
	}

	@Override
	public ViewModel<RoleFunction> getRoleAndFunctioninfos(QueryCondition condition) {
		ViewModel<RoleFunction> roleModel=this.roleDao.getRoleAndFunctioninfos(condition);
		if(roleModel!=null)
		{
			return roleModel;
		}
		return null;
	}
	
	
}
