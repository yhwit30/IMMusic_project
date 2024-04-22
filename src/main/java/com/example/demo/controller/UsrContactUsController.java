package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ContactUsService;
import com.example.demo.util.Ut;
import com.example.demo.vo.Concert;
import com.example.demo.vo.ResultData;

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
		
		String fullemail = emailId + "@" + emailoption;
		String fulladdress = address + detailAddress + extraAddress;
		
		ResultData<Integer> signupRd = contactUsService.signup(name, fullemail, cellphoneNum, concertdate, postcode, fulladdress, inquiry, check);
		
		return Ut.jsReplace("S-1", signupRd.getMsg(), "../home/main");
	}
	
	@RequestMapping("/usr/contactUs/application")
	public String contactUsapplication() {
		
		return "usr/contactUs/application";
	}
	
	@RequestMapping("/usr/contactUs/joinapplication")
	public String joinapplication(String name, String birth, String gender, String cellphoneNum, String emailId, String emailoption,
			String postcode, String address, String detailAddress, String extraAddress, String major, String sns, String photo, String career, String introduce, int check, HttpSession httpSession, HttpServletRequest req) {
		
		String fullemail = emailId + "@" + emailoption;
		String fulladdress = address + detailAddress + extraAddress;
		
		ResultData<Integer> joinRd = contactUsService.join(name, birth, gender, cellphoneNum, fullemail, postcode, fulladdress, major, sns, introduce, check);
	
		return Ut.jsReplace("S-1", joinRd.getMsg(), "../home/main");
	}
	
	
	@RequestMapping("/usr/contactUs/artist")
	public String showAboutArtist() {

		return "usr/contactUs/artist";
	}



}
