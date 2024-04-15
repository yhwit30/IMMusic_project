package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrArtistController {

	
	
	@RequestMapping("/usr/artist")
	public String showAbout() {

		return "usr/artist/artist";
	}

}
