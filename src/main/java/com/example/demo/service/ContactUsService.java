package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ContactUsRepository;
import com.example.demo.vo.Concert;
import com.example.demo.vo.Member;

@Service
public class ContactUsService {
	
	@Autowired
	private static ContactUsRepository contactUsRepository;

	public void signup() {
		contactUsRepository.signup();
	}

}