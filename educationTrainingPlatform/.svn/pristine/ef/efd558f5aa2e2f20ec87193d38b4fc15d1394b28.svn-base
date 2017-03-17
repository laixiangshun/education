package com.foxera.background.dao.impl;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foxera.models.Timetag;
import com.foxera.background.dao.TimetagDao;


@Repository("timetagdao")
public class TimetagDaoImpl implements TimetagDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean insertOrUpdateTimetag(Timetag timetaginfo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteTimetag(Timetag timetaginfo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateTimetag(Timetag timetaginfo) {
		
		return false;
	}

	@Override
	public List<Timetag> getTimetags(int index, int pagesize) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Timetag> timetags = session.createQuery("from timetag t")
				.setFirstResult(index * pagesize)
				.setMaxResults(pagesize)
				.list();
		return timetags;
	}

	@Override
	public List<Timetag> getTimetags(long courseid, long regionid,
			Date entrydate, Date leavedate, int index, int pagesize) {
		
		return null;
	}

	@Override
	public Timetag getTimetag(long timetagid) {
		Session session = this.sessionFactory.getCurrentSession();
		Timetag timetag = (Timetag) session.createQuery("from timetag t where t.timetagid=:timetagid")
				.setLong("timetagid", timetagid).uniqueResult();
		return timetag;
	}

}
