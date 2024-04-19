package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ContactUsService;
import com.example.demo.vo.Concert;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UsrContactUsController {
	
	@Autowired
	private ContactUsService contactUsService;
	
	@RequestMapping("/usr/contactUs/concert")
	public String contactUsconcert() {

		return "usr/contactUs/concert";
	}
	
	@RequestMapping("/usr/contactUs/signupconcert")
	@ResponseBody
	public String signupconcert(String name, String emailId, String emailoption, String cellphoneNum, String concertdate,
			String postcode, String address, String detailAddress, String extraAddress, String inquiry, int check, HttpSession httpSession, HttpServletRequest req) {
		
		String fullaemail = emailId + "@" + emailoption;
		String fulladdress = address + detailAddress + extraAddress;
		
		contactUsService.signup();
		
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
