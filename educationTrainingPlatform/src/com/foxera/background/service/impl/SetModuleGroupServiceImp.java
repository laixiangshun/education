package com.foxera.background.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.foxera.background.service.SetModuleGroupService;
import com.foxera.models.Groupinfo;

@Transactional
@Service("SetModuleGroupService")
public class SetModuleGroupServiceImp implements SetModuleGroupService {

	@Override
	public List<Groupinfo> getGroupinfos(int index, int pagesize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Groupinfo> getGroupinfos(String groupcode, String groupname,
			String businessgroupid, String businessname, int index, int pagesize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addGroup(String groupcode, String groupname,
			String businessgroupid, String businessname, long createuser) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Groupinfo getGroupinfo(long groupid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modifyGroup(String groupid, String groupcode, String groupname,
			String businessgroupid, String businessname, long createuser,
			Date date) {
		// TODO Auto-generated method stub
		return false;
	}

}
