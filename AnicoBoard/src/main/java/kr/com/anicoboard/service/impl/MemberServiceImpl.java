package kr.com.anicoboard.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.com.anicoboard.dao.MemberDao;
import kr.com.anicoboard.model.Member;
import kr.com.anicoboard.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public int register(Member member) {
		// 회원 가입 서비스 에서 Hasing Password 작업
		return memberDao.register(member);
	}


}
