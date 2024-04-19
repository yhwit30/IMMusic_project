package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Concert {
	private int id;
	private String c_name;
	private String c_email;
	private String c_phone;
	private String c_date;
	private String c_postcode;
	private String c_address;
	private String c_inquiry;
	private int c_check;
	private String regDate;
	private String updateDate;
	private int delStatus;
	private String delDate;
}

