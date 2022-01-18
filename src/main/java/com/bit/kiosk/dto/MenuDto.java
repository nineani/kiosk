package com.bit.kiosk.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter

public class MenuDto {
	
	private int p_num;
	private String p_name;
	private String p_category;
	private String p_price;
	private String p_image;
	private String p_image2;
	private int p_soldOut;
	private String p_event;
	
	@Override
	public String toString() {
		return "MenuDto [p_num=" + p_num + ", p_name=" + p_name + ", p_category=" + p_category + ", p_price=" + p_price
				+ ", p_image=" + p_image + ", p_image2=" + p_image2 + ", p_soldOut=" + p_soldOut + ", p_event="
				+ p_event + "]";
	}
	
	
}
