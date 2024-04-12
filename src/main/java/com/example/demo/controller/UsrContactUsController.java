package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrContactUsController {

	
	@RequestMapping("/usr/contactUs/concert")
	public String contactUsconcert() {

		return "usr/contactUs/concert";
	}
	
	@RequestMapping("/usr/contactUs/application")
	public String contactUsapplication() {

		return "usr/contactUs/application";
	}


}
