package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrContactUsController {

	
	@RequestMapping("/usr/contactUs/contactUs")
	public String showAbout() {

		return "usr/contactUs/contactUs";
	}
	
	@RequestMapping("/usr/contactUs/artist")
	public String showAboutArtist() {

		return "usr/contactUs/artist";
	}


}
