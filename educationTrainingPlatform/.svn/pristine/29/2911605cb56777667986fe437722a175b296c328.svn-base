package com.foxera.background.service;

import java.util.Date;
import java.util.List;

import com.foxera.models.Teacherinfo;


public interface TeacherDataService {

	public Teacherinfo getTeacherData(Long teacherid);	
	
	public boolean addTeacherInfo(Long type, Long userid, String userNo,
			String userName, String phone, String email, String job,
			String resume, String highEducation, String education,
			String domain, String remark, String teachPerformance);
	public boolean modifyTeacherInfo(String teacherid, Long type, Long userid,
			String userNo, String userName, String phone, String email,
			String job, String resume, String highEducation, String education,
			String domain, String remark, String teachPerformance,String createUser,Date createDate);
	public List<Teacherinfo> getTeacherData(int index, int pagesize);

	

	public boolean DeleteTeacherData(Teacherinfo teainfo);

	public boolean DeleteTeacherData(List<Long> teachIDList);

	public List<Teacherinfo> getTeacherData(String userName, String phone,
			String email, int i, int pagesize);


	

}
