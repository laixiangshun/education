package com.foxera.background.service.impl;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.foxera.background.dao.TeacherDataDao;
import com.foxera.background.service.TeacherDataService;
import com.foxera.models.Teacherinfo;

@Transactional
@Service("teacherDataService")
public class TeacherDataServiceImpl implements TeacherDataService{
	@Autowired
	private TeacherDataDao teacherdatadao;
	
	@Override
	public Teacherinfo getTeacherData(Long teacherid){
		return teacherdatadao.selectTeacherData(teacherid);
	}
	
	@Override
	public List<Teacherinfo> getTeacherData(int index, int pagesize){
		return teacherdatadao.selectTeacherData(index,pagesize);
	}
	@Override
	public List<Teacherinfo> getTeacherData(String userName, String phone,
			String email, int i, int pagesize){
		return teacherdatadao.selectTeacherData(userName,phone,email,i,pagesize);
	}
	
	@Override
	public boolean addTeacherInfo(Long type, Long userid, String userNo,
			String userName, String phone, String email, String job,
			String resume, String highEducation, String education,
			String domain, String remark, String teachPerformance){
		Teacherinfo teacherinfo =new Teacherinfo();
		teacherinfo.setType(type);
		teacherinfo.setCreateuser(userid);
		teacherinfo.setJobnum(userNo);
		teacherinfo.setTeachername(userName);
		teacherinfo.setPhone(phone);
		teacherinfo.setEmail(email);
		teacherinfo.setJob(job);
		teacherinfo.setResume(resume);
		teacherinfo.setHigheducation(highEducation);
		teacherinfo.setEducation(education);
		teacherinfo.setDomain(domain);
		teacherinfo.setRemark(remark);
		teacherinfo.setTeachperformance(teachPerformance);
		teacherinfo.setCreatedate(new Date());	
		teacherinfo.setStatus(new Byte("0"));
		return teacherdatadao.insertTeacherData(teacherinfo);
	}
	
	@Override
	public boolean modifyTeacherInfo(String teacherid, Long type, Long userid,
			String userNo, String userName, String phone, String email,
			String job, String resume, String highEducation, String education,
			String domain, String remark, String teachPerformance,String createUser,Date createDate){
		
		Teacherinfo teacherinfo=new Teacherinfo();		
		teacherinfo.setTeacherid(Long.parseLong(teacherid));//将String转化为Long
		teacherinfo.setType(type);
		teacherinfo.setEdituser(userid);
		teacherinfo.setEditdate(new Date());
		teacherinfo.setJobnum(userNo);//工号
		teacherinfo.setTeachername(userName);
		teacherinfo.setPhone(phone);
		teacherinfo.setEmail(email);
		teacherinfo.setJob(job);
		teacherinfo.setResume(resume);
		teacherinfo.setHigheducation(highEducation);
		teacherinfo.setEducation(education);
		teacherinfo.setDomain(domain);
		teacherinfo.setRemark(remark);
		teacherinfo.setTeachperformance(teachPerformance);			
		teacherinfo.setCreateuser(Long.parseLong(createUser));
		teacherinfo.setCreatedate(createDate);
		return teacherdatadao.updateTeacherInfo(teacherinfo);
	}
	@Override
	public boolean DeleteTeacherData(Teacherinfo teainfo){
		boolean flag=teacherdatadao.DeleteTeacherData(teainfo);
		if(flag){
			return true;
		}else{
			return false;
		}
		
	}
	@Override
	public boolean DeleteTeacherData(List<Long> teachIDList){
		boolean flag=this.teacherdatadao.DeleteTeacherData(teachIDList);
		if(flag){
			return true;
		}else{
			return false;
		}
	}
}
