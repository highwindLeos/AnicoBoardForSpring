package kr.com.anicoboard.dao;

import java.util.List;

import kr.com.anicoboard.model.Admin;

public interface AdminDao {
	
	public Admin adminLogin(Admin admin);
	public int adminJoin(Admin admin);
	public List<Admin> adminList();
	public Admin adminConfirm(Admin admin);
	public int adminDelete(Admin admin);
	
}
