package kr.com.anicoboard.service.impl;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.com.anicoboard.dao.SkillDao;
import kr.com.anicoboard.model.AnicoBoardSkillList;
import kr.com.anicoboard.service.SkillService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SkillServiceImpl implements SkillService {
	
	@Autowired
	private SkillDao skillDao;

	@Override
	public List<AnicoBoardSkillList> skillList() {
		
		return skillDao.skillList();
	}


}
