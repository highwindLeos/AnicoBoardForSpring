package kr.com.anicoboard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Index Page /anicoboard.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index( Model model) {
				
//		String jspPageinitText = "Hellow World";
//		model.addAttribute("serverTime", jspPageinitText );
		
		return "index";
	}
	
}
