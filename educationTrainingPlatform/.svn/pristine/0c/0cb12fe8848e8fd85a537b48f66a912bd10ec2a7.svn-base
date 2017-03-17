package com.foxera.background.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foxera.background.dao.CapitalpositionDao;
import com.foxera.models.Levelinfo;

@Repository("CapitalpositionDao")
public class CapitalpositionDaoImpl implements CapitalpositionDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Levelinfo> getAllCapitalposition(int index, int pageSize) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Levelinfo";
		List<Levelinfo> Levelinfos = session.createQuery(hql)
				.setFirstResult(index * pageSize)
				.setMaxResults(pageSize)
				.list();
		return Levelinfos;
	}

	@Override
	public List<Levelinfo> getCapitalposition(Long levelid, String levelname,
			int index, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertCapitalposition(Levelinfo levelinfo) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.clear();
			session.save(levelinfo);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}	
	}

	@Override
	public boolean updateCapitalposition(Levelinfo levelinfo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteCapitalposition(Long levelid) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	
}
