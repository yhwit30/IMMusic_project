package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrAboutController {

	@RequestMapping("/usr/about")
	public String showAbout() {

		return "usr/about/about";
	}
	
	
	
	
	
	

}
