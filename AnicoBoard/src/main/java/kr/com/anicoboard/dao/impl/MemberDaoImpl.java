package kr.com.anicoboard.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.com.anicoboard.dao.MemberDao;
import kr.com.anicoboard.model.Member;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Override
	public int register(Member member) {
		return sessionTemplate.insert("register", member);
	}
	
}
