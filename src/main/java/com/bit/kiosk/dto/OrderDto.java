package com.bit.kiosk.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class OrderDto {
	
	private int o_num;
	private int p_num;	
	private String o_shot;
	private String o_iceHot;
	private String o_whipping;
	private String o_size;
	private String o_quantity;
	private String o_pickup;
	private String unique_num;
	
	@Override
	public String toString() {
		return "OrderDto [o_num=" + o_num + ", p_num=" + p_num + ", o_shot=" + o_shot + ", o_iceHot=" + o_iceHot
				+ ", o_whipping=" + o_whipping + ", o_size=" + o_size + ", o_quantity=" + o_quantity + ", o_pickup="
				+ o_pickup + ", unique_num=" + unique_num + "]";
	}
	
	
}
