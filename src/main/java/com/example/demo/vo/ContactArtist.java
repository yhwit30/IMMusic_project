package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ContactArtist {
	private int id;
	private String a_name;
	private String a_birth;
	private int a_gender;
	private String a_phone;
	private String a_email;
	private String a_address;
	private String a_major;
	private String a_sns;
	private String a_photo;
	private String a_career;
	private String a_introduction;
	private int a_check;
	private String regDate;
	private String updateDate;
	private int delStatus;
	private String delDate;
}

