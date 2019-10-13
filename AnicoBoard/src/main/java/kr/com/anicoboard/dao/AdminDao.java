package kr.com.anicoboard.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.com.anicoboard.model.Admin;

@Repository
public class AdminDao implements IAdminDao {
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public Admin adminLogin(Admin admin) {
		return sessionTemplate.selectOne("adminlogin", admin);
	}

	@Override
	public int adminJoin(Admin admin) {
		return sessionTemplate.insert("adminJoin", admin);
	}

	@Override
	public List<Admin> adminList() {
		return sessionTemplate.selectList("adminList");
	}

	@Override
	public Admin adminConfirm(Admin admin) {
		return sessionTemplate.selectOne("adminConfirm", admin);
	}

	@Override
	public int adminDelete(Admin admin) {
		return sessionTemplate.delete("adminDelete", admin);
	}

}
