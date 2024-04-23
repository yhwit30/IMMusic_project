package com.example.demo.repository;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.demo.vo.Concert;
import com.example.demo.vo.Member;

@Mapper
public interface ContactUsRepository {

	@Insert("""
			INSERT INTO
			concert SET
			c_name = #{name},
		    c_email = #{fullemail},
		    c_phone = #{cellphoneNum},
		    c_date = #{concertdate},
		    c_postcode = #{postcode},
		    c_address = #{fulladdress},
		    c_inquiry = #{inquiry},
		    c_check = #{check},
		    regDate = NOW(),
		    updateDate = NOW()
			""")
	public void signup(String name, String fullemail, String cellphoneNum, String concertdate,
			String postcode, String fulladdress, String inquiry, int check);
	
	@Insert("""
			INSERT INTO
			artist SET
			a_name = #{name},
			a_birth = #{birth},
		    a_gender = #{gender},
		    a_phone = #{cellphoneNum},
		    a_email = #{fullemail},
		    a_postcode = #{postcode},
		    a_address = #{fulladdress},
		    a_major = #{major},
		    a_sns = #{sns},
		    a_introduction = #{introduction},
		    a_check = #{check},
		    regDate = NOW(),
		    updateDate = NOW()
			""")
	public void join(String name, String birth, String gender, String cellphoneNum, String fullemail, String postcode,
			String fulladdress, String major, String sns, String introduction, int check);


}