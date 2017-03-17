package com.foxera.background.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.foxera.background.dao.FunctionDao;
import com.foxera.background.service.SystemSetFunctionService;
import com.foxera.models.Functionalinfo;
import com.foxera.util.QueryCondition;
import com.foxera.viewmodels.ViewModel;

@Transactional
@Service("SystemSetFunctionService")
public class SystemSetFunctionServiceImpl implements SystemSetFunctionService{
	@Autowired
	private FunctionDao functionDao;

	@Override
	public ViewModel<Functionalinfo> getFunctionalinfos(QueryCondition condition) {
		
		return this.functionDao.getFunctions(condition);
	}

	@Override
	public List<Functionalinfo> getFunctionalinfos(String modulecode,
			String functionname, String parentfunc, int index, int pagesize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addFunc(String modulecode, String menuorder,
			String parentfunc, String functionname, String urls,
			String description, String functioncode, String functiondesc,long createuser) {
		Date createdate=new Date();
		Functionalinfo func=new Functionalinfo();
		func.setFunctionname(functionname);
		func.setCreateuser(createuser);
		func.setCreatedate(createdate);
		func.setStatus(new Long("0"));
		func.setUrls(urls);
		func.setModulecode(modulecode);
		func.setMenuorder(menuorder);
		func.setParentfunc(parentfunc==null?0:new Long(parentfunc));
		func.setDescription(description);
		func.setFunctioncode(functioncode);
		func.setFunctiondesc(functiondesc);
		return this.functionDao.insertOrUpdateFunction(func);
	}

	@Override
	public Functionalinfo getFunctionalinfo(long functionid) {
		return this.functionDao.getFunction(functionid);
	}

	@Override
	public boolean modifyFunc(String functionid, String modulecode,
			String menuorder, String parentfunc, String functionname,
			String urls, String description, String functioncode,
			String functiondesc, long edituser) {
		Functionalinfo func=this.functionDao.getFunction(Long.parseLong(functionid));
		func.setFunctionname(functionname);
		func.setEdituser(edituser);
		func.setEditdate(new Date());
		func.setStatus(new Long("0"));
		func.setUrls(urls);
		func.setModulecode(modulecode);
		func.setMenuorder(menuorder);
		func.setParentfunc(parentfunc==null?null:new Long(parentfunc));
		func.setDescription(description);
		func.setFunctioncode(functioncode);
		func.setFunctiondesc(functiondesc);
		return this.functionDao.insertOrUpdateFunction(func);
	}

	@Override
	public List<Functionalinfo> getChildFunctions(Long parentFuncId) {
		return this.functionDao.getChildFunctions(parentFuncId);
	}

	@Override
	public List<Functionalinfo> getAllFunctionalinfos() {
		return this.functionDao.getAllFunctions();
	}
	
}
