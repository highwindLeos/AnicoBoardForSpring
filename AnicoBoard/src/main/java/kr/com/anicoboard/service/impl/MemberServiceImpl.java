package kr.com.anicoboard.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.com.anicoboard.dao.MemberDao;
import kr.com.anicoboard.dao.impl.MemberDaoImpl;
import kr.com.anicoboard.model.Member;
import kr.com.anicoboard.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public int register(Member member) {
		log.info("member" + member.toString());
		return memberDao.register(member);
	}


}
