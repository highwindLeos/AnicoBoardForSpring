package kr.com.anicoboard.service;

import java.util.List;

import kr.com.anicoboard.model.Admin;

public interface AdminService {
	
	public Admin adminLogin(Admin admin);
	public int adminJoin(Admin admin);
	public List<Admin> adminList();
	public Admin adminConfirm(Admin admin);
	public int adminDelete(Admin admin);

}
