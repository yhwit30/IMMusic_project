package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ContactUsRepository;
import com.example.demo.vo.Concert;
import com.example.demo.vo.Member;
import com.example.demo.vo.ResultData;

@Service
public class ContactUsService {
	
	@Autowired
	private ContactUsRepository contactUsRepository;
	
	public ResultData<Integer> signup(String name, String fullemail, String cellphoneNum, String concertdate,
			String postcode, String fulladdress, String inquiry, int check) {
		
		contactUsRepository.signup(name, fullemail, cellphoneNum, concertdate, postcode, fulladdress, inquiry, check);
		
		return ResultData.from("S-1", "연주문의가 완료되었습니다.");
	}

	public ResultData<Integer> join(String name, String birth, String gender, String cellphoneNum, String fullemail,
			String postcode, String fulladdress, String major, String sns, String introduction, int check) {

		contactUsRepository.join(name, birth, gender, cellphoneNum, fullemail, postcode, fulladdress, major, sns, introduction, check);
		
		return ResultData.from("S-1", "연주자 가입신청이 완료되었습니다.");
	}

}