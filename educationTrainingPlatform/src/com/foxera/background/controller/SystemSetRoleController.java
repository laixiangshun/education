package com.foxera.background.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.foxera.background.service.SystemSetFunctionService;
import com.foxera.background.service.SystemSetRoleService;
import com.foxera.models.Functionalinfo;
import com.foxera.models.Role;
import com.foxera.models.Rolefunctional;
import com.foxera.models.Userinfo;
import com.foxera.util.BeanToJson;
import com.foxera.util.QueryCondition;
import com.foxera.util.QueryProperty;
import com.foxera.viewmodels.ParentFuncInfo;
import com.foxera.viewmodels.RoleFunction;
import com.foxera.viewmodels.ViewModel;

/**
 * ϵͳ�趨/��ɫ���� ������
 * @author rainbow
 *
 */
@Controller
public class SystemSetRoleController {
	@Autowired
	private SystemSetRoleService sesRoleService;
	@Autowired
	private SystemSetFunctionService systemSetFunctionService;
	/**
	 * ��ɫ�����ʼ��ҳ��
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	@RequestMapping(value="/background/roleManage.html",method=RequestMethod.GET)
	public String SystemSetRoleManageIndex(HttpServletRequest request,HttpServletResponse response) throws IOException, InstantiationException, IllegalAccessException{
		//String pageIndex = request.getParameter("pageindex");// �ڼ�ҳ
		QueryCondition condition = new QueryCondition(0,CommonComponent.PAGESIZE);
		for (String item : request.getParameterMap().keySet()) {
			String value = request.getParameter(item);
			/*if ((item.contains("pageindex") == false && item.toLowerCase()
					.contains("pagesize") == false)
					&& value != null
					&& value.length() > 0) {*/
			if(value != null && value.length() > 0){
				QueryProperty<RoleFunction> property = new QueryProperty<RoleFunction>(RoleFunction.class);
				property.setAliaName("r");
				property.setName(item);
				property.setValue(value);
				property.setOrderby(QueryProperty.ASC);
				property.setLogicSymbol(QueryProperty.AND);
				if (item.toLowerCase().contains("functionid"))
				{
					property.setAliaName("f");
				}
				if(item.equals("roleName"))
				{
					property.setComparesymbol(QueryProperty.LIKE);
				}else
				{
					property.setComparesymbol(QueryProperty.EQUALS);
				}
				condition.getqPropertys().add(property);
				if (item.toLowerCase().equals("pageindex")) {
					condition.setPageIndex(Integer.parseInt(value));
					condition.setPageSize(CommonComponent.PAGESIZE);
				}
			}
		}
		ViewModel<RoleFunction> rolefucntion = this.sesRoleService
				.getRoleAndFunctioninfos(condition);
		request.setAttribute("roleFunction", rolefucntion);
		return "background/systemSet/roleManage";
	}
	/**
	 * ��ɫ����������ҳ��
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value="/background/roleManageCreate.html",method=RequestMethod.GET)
	public String SystemSetRoleManageAddRole(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		return "background/systemSet/roleManageCreate";
		
	}
	/**
	 * ��ɫ��������ȡ��ɫȨ��ҳ��
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value="/background/rolePermissionChoose.html",method=RequestMethod.GET)
	public String SystemSetRolePermissionChoose(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		List<Functionalinfo> funcs = this.systemSetFunctionService.getAllFunctionalinfos();
		List<ParentFuncInfo> pfs = new ArrayList<ParentFuncInfo>();
		pfs = getChildFuncs2(funcs, null);
		String result = BeanToJson.beanToJson(pfs);
		request.setAttribute("funcs", result);
		return "background/systemSet/rolePermissionChoose";
	}
	/**
	 * ���طֲ�ģ��
	 * @param funcs
	 * @param parent
	 * @return
	 */
	public List<ParentFuncInfo> getChildFuncs2(List<Functionalinfo> funcs,
			ParentFuncInfo parent) {
		List<ParentFuncInfo> result = new ArrayList<ParentFuncInfo>();
		ParentFuncInfo item = null;
		for (int i = 0; i < funcs.size(); i++) {
			Functionalinfo f = funcs.get(i);
			item = new ParentFuncInfo(f.getFunctionid(), f.getFunctionname(),
					f.getUrls());
			if (f.getParentfunc() <= 0) {
				result.add(item);
			}
			List<Functionalinfo> childFuncs = this.systemSetFunctionService
					.getChildFunctions(f.getFunctionid());
			if (childFuncs.size() > 0) {
				List<ParentFuncInfo> temp = getChildFuncs2(childFuncs, item);
				if (parent != null) {
					parent.addChildNote(item);
				}
			} else {
				if (parent != null) {
					item.setNodes(null);
					parent.addChildNote(item);
				}
			}
		}
		return result;

	}

	/**
	 * ��ɫ������������ɫ
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/background/roleManageAdd.action",method=RequestMethod.POST)
	public void roleManageAdd(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String roleCode=request.getParameter("roleCode");
		String roleName=request.getParameter("roleName");
		roleCode.replaceAll("<", "&lt;");
		roleCode.replaceAll(">", "&gt;");
		roleName.replaceAll("<", "&lt;");
		roleName.replaceAll(">", "&gt;");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		//String[] rolePermission=request.getParameterValues("functionids");
		String rolePermission=request.getParameter("functionids");
		String[] rolefunctionids=rolePermission.split(",");
		Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user");
		Role role=new Role();
		role.setRolecode(roleCode);
		role.setRolename(roleName);
		//role.setCreateuser(userinfo.getUserid());
		role.setCreateuser(Long.parseLong("123"));
		Date date=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyyy/MM/dd HH:mm");
		String dataString=format.format(date);
		Date dateformat = null;
		try {
			dateformat = format.parse(dataString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		role.setCreatedate(dateformat);
		role.setStatus(Long.parseLong("1"));
		role.setContactstate(Long.parseLong("1"));
		//role.setFunctionId(Long.parseLong("1"));
		Role r=this.sesRoleService.SelectRoleByCode(role.getRolecode());
		if(r==null)
		{
			boolean flag=this.sesRoleService.AddRole(role,rolefunctionids);
			if(flag)
			{	
				response.getWriter().write("������ɫ�ɹ�");
			}else
			{
				response.getWriter().write("������ɫʧ��");
			}
		}else{
			response.getWriter().write("�ý�ɫ�Ѿ����ڣ������ظ�����");
		}
	}
	/**
	 * ��ɫ������ɾ��ѡ�н�ɫ
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/background/deleteRole.action",method=RequestMethod.POST)
	public void roleManageDelete(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String[] roleIds=request.getParameterValues("roleIdList");
		String[] roleidList=roleIds[0].split(",");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		if(roleidList.length==1)
		{
			Long roleId=(Long.parseLong(roleIds[0]));
			Role role=this.sesRoleService.SelectRoleById(roleId);
			if(role!=null)
			{
				//Role role=new Role(roleId);
				boolean flag=this.sesRoleService.DeleteRoleAndFunctionIds(role);
				if(flag)
				{
					response.getWriter().write("ɾ���ɹ�");
				}else
				{
					response.getWriter().write("ɾ��ʧ��");
				}
			}else
			{
				response.getWriter().write("ɾ��ʧ��");
			}
		}else
		{
			//List<Long> roleIdList=Arrays.asList(roleIds);
			List<Long> roleIdList=new ArrayList<>();
			//String[] roleids=roleIds[0].split(",");
			for (String roleId : roleidList) {
				roleIdList.add(Long.parseLong(roleId));
			}
			
			boolean flag=this.sesRoleService.DeleteRoles(roleIdList);
			if(flag)
			{
				response.getWriter().write("ɾ���ɹ�");
			}else
			{
				response.getWriter().write("ɾ��ʧ��");
			}
		}
	}
	/**
	 * ��ɫ������������ѯ
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value="/background/inquiryRole.html",method=RequestMethod.GET)
	public String RoleManageInquiry(HttpServletRequest request,HttpServletResponse response) throws IOException{
		try {
			/*String roleCode=request.getParameter("roleCode");
			String roleName=request.getParameter("roleName");
			roleCode.replaceAll("<", "&lt;");
			roleCode.replaceAll(">", "&gt;");
			roleName.replaceAll("<", "&lt;");
			roleName.replaceAll(">", "&gt;");
			String rolePermissionid=request.getParameter("rolePermission");
			List<RoleFunction> roleFunctionList=this.sesRoleService.SelectRolesByCodeByNameByFunction(roleCode,roleName,Long.parseLong(rolePermissionid),1,CommonComponent.PAGESIZE);
			if(roleFunctionList!=null)
			{
				request.setAttribute("RoleFunctionList", roleFunctionList);
			}*/
			//String pageIndex = request.getParameter("pageindex");// �ڼ�ҳ
			QueryCondition condition = new QueryCondition(0,CommonComponent.PAGESIZE);
			for (String item : request.getParameterMap().keySet()) {
				String value = request.getParameter(item);
				/*if ((item.contains("pageindex") == false && item.toLowerCase()
						.contains("pagesize") == false)
						&& value != null
						&& value.length() > 0) {*/
				if(value != null && value.length() > 0){
					QueryProperty<RoleFunction> property = new QueryProperty<RoleFunction>(RoleFunction.class);
					property.setAliaName("r");
					property.setName(item);
					property.setValue(value);
					property.setOrderby(QueryProperty.ASC);
					property.setLogicSymbol(QueryProperty.AND);
					if (item.toLowerCase().contains("functionid"))
					{
						property.setAliaName("f");
					}
					if(item.equals("roleName"))
					{
						property.setComparesymbol(QueryProperty.LIKE);
					}else
					{
						property.setComparesymbol(QueryProperty.EQUALS);
					}
					condition.getqPropertys().add(property);
					if (item.toLowerCase().equals("pageindex")) {
						condition.setPageIndex(Integer.parseInt(value));
						condition.setPageSize(CommonComponent.PAGESIZE);
					}
				}
			}
			ViewModel<RoleFunction> rolefucntion = this.sesRoleService.getRoleAndFunctioninfos(condition);
			request.setAttribute("roleFunction", rolefucntion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/background/systemSet/roleManage";
	}
	
	/**
	 * ��ɫ�������޸�ҳ���ʼҳ��
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value="/background/roleManageModify.html",method=RequestMethod.GET)
	public String ModifyRole(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String roleid=request.getParameter("roleid");
		Role role=this.sesRoleService.SelectRoleById(Long.parseLong(roleid));
		if(role!=null)
		{
			String roleCode=role.getRolecode();
			String roleName=role.getRolename();
			RoleFunction roleFunction=this.sesRoleService.SelectRoleFunctionByCodeByName(roleCode,roleName);
			request.setAttribute("roleFunction", roleFunction);
		}
		return "/background/systemSet/roleManageCreate";
	}
	/**
	 * ��ɫ�������޸��ύ����
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/background/roleModidy.html",method=RequestMethod.GET)
	public void RoleModidy(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String roleCode=request.getParameter("roleCode").trim();
		String roleName=request.getParameter("roleName").trim();
		roleCode.replaceAll("<", "&lt;");
		roleCode.replaceAll(">", "&gt;");
		roleName.replaceAll("<", "&lt;");
		roleName.replaceAll(">", "&gt;");
		String[] permissions=request.getParameterValues("permission");
		
	}
}
