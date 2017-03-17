package com.foxera.background.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.foxera.background.dao.CapitalpositionDao;
import com.foxera.background.service.SetModuleCapitalpositionService;
import com.foxera.models.Levelinfo;

@Transactional
@Service("SetModuleCapitalpositionService")
public class SetModuleCapitalpositionServiceImpl implements SetModuleCapitalpositionService{
	@Autowired
	private CapitalpositionDao capitalpositionDao;
	
	@Override
	public List<Levelinfo> getAllCapitalposition(int index, int pageSize) {
		// TODO Auto-generated method stub
		return this.capitalpositionDao.getAllCapitalposition(index, pageSize);
	}

	@Override
	public List<Levelinfo> getCapitalposition(Long levelid, String levelname,
			int index, int pageSize) {
		// TODO Auto-generated method stub
		return null;
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

	@Override
	public boolean AddCapitalposition(Long levelid, String levelname,
			Long createuser, Date createdate, Long edituser, Date editdate) {
		// TODO Auto-generated method stub
		Levelinfo levelinfo = new Levelinfo();
		levelinfo.setLevelid(levelid);
		levelinfo.setLevelname(levelname);
		levelinfo.setCreateuser(createuser);
		levelinfo.setCreatedate(createdate);
		levelinfo.setEdituser(edituser);
		levelinfo.setEditdate(editdate);
		return this.capitalpositionDao.insertCapitalposition(levelinfo);
	}

}
