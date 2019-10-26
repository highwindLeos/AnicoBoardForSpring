package kr.com.anicoboard.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.com.anicoboard.dao.SkillDao;
import kr.com.anicoboard.model.AnicoBoardSkillList;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class SkillDaoImpl implements SkillDao {
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Override
	public List<AnicoBoardSkillList> skillList() {
		return sessionTemplate.selectList(null);
	}
	
}
