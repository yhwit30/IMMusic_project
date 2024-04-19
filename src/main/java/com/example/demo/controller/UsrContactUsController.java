package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.util.Ut;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UsrContactUsController {

	
	@RequestMapping("/usr/contactUs/concert")
	public String contactUsconcert() {

		return "usr/contactUs/concert";
	}
	
	@RequestMapping("/usr/contactUs/signupconcert")
	@ResponseBody
	public String signupconcert(String loginId, String loginPw, String name, String nickname, String cellphoneNum,
			String email, HttpSession httpSession, HttpServletRequest req) {

		//name, emailId + emailoption, cellphoneNum, concertdate, postcode, address + detailAddress + extraAddress
		//inquiry, 
		return "/usr/home/main";
	}
	
	@RequestMapping("/usr/contactUs/application")
	public String contactUsapplication() {

		return "usr/contactUs/application";
	}
	
	@RequestMapping("/usr/contactUs/artist")
	public String showAboutArtist() {

		return "usr/contactUs/artist";
	}



}
