package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrArtistController {
	
	@RequestMapping("/usr/artist")
	public String showArtist() {

		return "usr/artist/artist";
	}
	
	@RequestMapping("/usr/artist1")
	public String showArtist1() {
		
		return "usr/artist/artist1";
	}
	@RequestMapping("/usr/artist2")
	public String showArtist2() {
		
		return "usr/artist/artist2";
	}
	@RequestMapping("/usr/artist3")
	public String showArtist3() {
		
		return "usr/artist/artist3";
	}

}
