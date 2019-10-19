package kr.com.anicoboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Index Page /anicoboard.
	 */
	@RequestMapping(value = "/")
	public String index(HttpServletRequest req, HttpServletResponse res,  Model model) {
				
//		String jspPageinitText = "Hellow World";
//		model.addAttribute("serverTime", jspPageinitText );
		
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
	
}
