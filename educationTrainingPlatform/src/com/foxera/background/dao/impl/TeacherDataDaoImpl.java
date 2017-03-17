package com.foxera.background.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foxera.background.dao.TeacherDataDao;
import com.foxera.models.Teacherinfo;

@Repository("teacherDataDao")
public class TeacherDataDaoImpl implements TeacherDataDao{
	@Autowired
	private SessionFactory sessionFactory; //通过接口调用，而不是实现类
	
	public List<Teacherinfo> selectTeacherData(){
		return null;
	}
	@Override
	public List<Teacherinfo> selectTeacherData(int index, int pagesize){
		Session session=this.sessionFactory.getCurrentSession();
		List<Teacherinfo> teachers=session.createQuery("from Teacherinfo")
				.setFirstResult(index*pagesize)
				.setMaxResults(pagesize)
				.list();
		return teachers;
	}
	
	@Override
	public Teacherinfo selectTeacherData(Long teacherid){
		Session session=this.sessionFactory.getCurrentSession();
		Teacherinfo teach=(Teacherinfo)session.createQuery("from Teacherinfo u where u.teacherid=:teacherid").setLong("teacherid", teacherid).uniqueResult();
	    return teach;
	}
	@Override
	public List<Teacherinfo> selectTeacherData(String userName, String phone,
			String email, int i, int pagesize){
		Session session=this.sessionFactory.getCurrentSession();
//		List<Teacherinfo> teachers=session.createQuery("from Teacherinfo u where (u.teachername=:teachername or :teachername is null) and (u.phone =:teacherphone or :teacherphone is null) and (u.email =:teacheremail or :teacheremail is null)")
//				.setString("teachername", userName).setString("teacherphone", phone).setString("teacheremail", email)
//				.setFirstResult(i*pagesize)
//				.setMaxResults(pagesize)
//				.list();
		List<Teacherinfo> teachers=session.createQuery("from Teacherinfo u where u.teachername=:teachername and u.phone =:teacherphone and u.email =:teacheremail")
				.setString("teachername", userName).setString("teacherphone", phone).setString("teacheremail", email)
				.setFirstResult(i*pagesize)
				.setMaxResults(pagesize)
				.list();
		return teachers;
	}
	
	
	
	/**
	 * 新增教师信息
	 */
	@Override
	public boolean insertTeacherData(Teacherinfo teacherinfo){
		Session session=this.sessionFactory.getCurrentSession();
		try {
			session.clear();
			session.save(teacherinfo);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return false;
		}		
	}
	
	/**
	 * 修改教师信息
	 */
	@Override
	public boolean updateTeacherInfo(Teacherinfo teacherinfo){	
		
		Session session=this.sessionFactory.getCurrentSession();
		try {
			session.clear();
			session.update(teacherinfo);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return false;
		}		
		
	}
	@Override
	public boolean DeleteTeacherData(Teacherinfo teainfo){
		Session session=this.sessionFactory.getCurrentSession();
		try {
			session.clear();
			session.delete(teainfo);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return false;
		}
	}
	@Override
	public boolean DeleteTeacherData(List<Long> teachIDList){
		Session session=this.sessionFactory.getCurrentSession();
		try {
			session.clear();
			Query q=session.createQuery("Teacherinfo u where u.teacherid in (:teacherids)");
			q.setParameterList("teacherids", teachIDList);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated cae.printStackTrace();
			return false;
		}
		
	}
	
}
