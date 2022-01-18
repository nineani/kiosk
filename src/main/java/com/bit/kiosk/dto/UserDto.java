  package com.bit.kiosk.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class UserDto {
	
	private int u_num;
	private String u_id;
	private String u_pw;
	private String u_name;
	private String u_birth;
	private String u_email;
	private int sumPoint;
	private String u_address;
	private String u_phone;
	private int unique_num;
}
