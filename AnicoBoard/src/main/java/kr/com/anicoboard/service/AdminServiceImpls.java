package kr.com.anicoboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.com.anicoboard.dao.AdminDao;
import kr.com.anicoboard.model.Admin;

@Service
public class AdminServiceImpls implements AdminService {
	@Autowired
	private AdminDao adminDao;

	@Override
	public Admin adminLogin(Admin admin) {
		return adminDao.adminLogin(admin) ;
	}

	@Override
	public int adminJoin(Admin admin) {
		return adminDao.adminJoin(admin);
	}

	@Override
	public List<Admin> adminList() {
		return adminDao.adminList();
	}

	@Override
	public Admin adminConfirm(Admin admin) {
		return adminDao.adminConfirm(admin);
	}

	@Override
	public int adminDelete(Admin admin) {
		return adminDao.adminDelete(admin);
	}
}
