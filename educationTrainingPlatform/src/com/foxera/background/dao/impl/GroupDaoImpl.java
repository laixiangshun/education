package com.foxera.background.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foxera.background.dao.GroupDao;
import com.foxera.models.Groupinfo;;

@Repository("groupdao")

public class GroupDaoImpl implements GroupDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean insertOrUpdateGroup(Groupinfo groupinfo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteGroup(Groupinfo groupinfo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateGroup(Groupinfo groupinfo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Groupinfo> getGroups(int index, int pagesize) {
		Session session=this.sessionFactory.getCurrentSession();
		List<Groupinfo> groups=session.createQuery("from groupinfo g")
				.setFirstResult(index*pagesize)
				.setMaxResults(pagesize)
				.list();
		return groups;
	}

	@Override
	public List<Groupinfo> getGroups(String groupcode, String groupname,
			String businessgroupid, String businessname, int index, int pagesize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Groupinfo getGroup(long groupid) {
		Session session=this.sessionFactory.getCurrentSession();
		Groupinfo group=(Groupinfo) session.createQuery("from groupinfo g where g.functionid=:groupid")
				.setLong("functionid", groupid).uniqueResult();
		return group;
	}

}
