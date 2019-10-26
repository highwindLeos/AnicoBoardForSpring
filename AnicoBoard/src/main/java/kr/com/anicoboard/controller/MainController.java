package kr.com.anicoboard.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.com.anicoboard.model.AnicoBoardSkillList;
import kr.com.anicoboard.model.Member;
import kr.com.anicoboard.service.MemberService;
import kr.com.anicoboard.service.SkillService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class MainController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private SkillService skillService;
	
	/**
	 * Index Page /anicoboard.
	 */
	@RequestMapping(value = "/")
	public String index(HttpServletRequest req, HttpServletResponse res,  Model model) {
				
		return "index";
	}
	
	/**
	 * /board/main
	 */
	@RequestMapping(value = "/board")
	public String mainBoard(HttpServletRequest req, HttpServletResponse res,  Model model) {
		
		return "/board/boardListView";
	}
	
	/**
	 * /skill/skill
	 */
	@RequestMapping(value = "/skill")
	public String skill(HttpServletRequest req, HttpServletResponse res, Model model) {
		
		List<AnicoBoardSkillList> skillLsit = skillService.skillList();
		log.info(skillLsit.toString());
		
		model.addAllAttributes(skillLsit);
		
		return "/skill/skill";
	}
	
	/**
	 * /member/regist
	 */
	@RequestMapping(value = "/member/regist")
	public String regist(HttpServletRequest req, HttpServletResponse res, Model model, Member member) {

		int result = memberService.register(member);
		model.addAttribute("registerResult", result);
		
		return "/index";
	}
	
}
