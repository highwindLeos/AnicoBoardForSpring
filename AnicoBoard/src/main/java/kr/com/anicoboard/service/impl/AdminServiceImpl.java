package kr.com.anicoboard.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.com.anicoboard.dao.impl.AdminDaoImpl;
import kr.com.anicoboard.model.Admin;
import kr.com.anicoboard.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDaoImpl adminDao;

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
