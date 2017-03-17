package com.foxera.background.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foxera.background.dao.FunctionDao;
import com.foxera.models.Functionalinfo;
import com.foxera.util.ConditionHelp;
import com.foxera.util.QueryCondition;
import com.foxera.viewmodels.ViewModel;

@Repository("functiondao")
public class FunctionDaoImpl implements FunctionDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean insertOrUpdateFunction(Functionalinfo functionalinfo) {
		Session session=this.sessionFactory.getCurrentSession();
		try {
			session.saveOrUpdate(functionalinfo);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteFunction(Functionalinfo functionalinfo) {
		Session session=this.sessionFactory.getCurrentSession();
		try {
			session.delete(functionalinfo);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateFunction(Functionalinfo functionalinfo) {
		Session session=this.sessionFactory.getCurrentSession();
		try {
			session.update(functionalinfo);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public ViewModel<Functionalinfo> getFunctions(QueryCondition condition) {
		Session session=this.sessionFactory.getCurrentSession();
		ViewModel<Functionalinfo> result=new ViewModel<Functionalinfo>();
		
		String hql=" from Functionalinfo f where functionid>0";
		hql+=ConditionHelp.getConditionString(condition);
		Query query=session.createQuery(hql);
		Query queryTotal=session.createQuery("select count(functionid) "+hql);
		int total=((Number)queryTotal.uniqueResult()).intValue();
		
		List<Functionalinfo> funcs=query
				.setFirstResult(condition.getPageIndex()*condition.getPageSize())
				.setMaxResults(condition.getPageSize())
				.list();
		
		result.setPageIndex(condition.getPageIndex());
		result.setPageSize(condition.getPageSize());
		result.setTotal(total);
		result.setResult(funcs);
		
		return result;
	}

	@Override
	public List<Functionalinfo> getFunctions(long modulecode,
			String functionname, long parentfunc, int index, int pagesize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Functionalinfo getFunction(long functionid) {
		Session session=this.sessionFactory.getCurrentSession();
		Functionalinfo func=(Functionalinfo) session.createQuery("from Functionalinfo f where f.functionid=:functionid")
				.setLong("functionid", functionid).uniqueResult();
		return func;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Functionalinfo> getChildFunctions(Long parentFuncId) {
		Session session=this.sessionFactory.getCurrentSession();
		List<Functionalinfo> funcs=session.createQuery("from Functionalinfo f where f.parentfunc=:parentfunc")
				.setLong("parentfunc", parentFuncId).list();
		return funcs;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Functionalinfo> getAllFunctions() {
		Session session=this.sessionFactory.getCurrentSession();
		List<Functionalinfo> funcs=session.createQuery("from Functionalinfo f order by f.parentfunc asc, f.menuorder asc")
				.list();
		return funcs;
	}
}
