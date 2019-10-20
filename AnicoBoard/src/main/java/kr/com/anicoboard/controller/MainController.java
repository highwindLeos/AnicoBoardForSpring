package kr.com.anicoboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.com.anicoboard.model.Member;
import kr.com.anicoboard.service.MemberService;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class MainController {

	@Autowired
	private MemberService memberService;
	
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
	 * /board/main
	 */
	@RequestMapping(value = "/skill")
	public String skill(HttpServletRequest req, HttpServletResponse res, Model model) {
		
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
