package com.bit.kiosk.dao;

import java.util.ArrayList;

import com.bit.kiosk.dto.OrderDto;

public interface ODao {
	
//	오더 받은 정보 출력
	public ArrayList<OrderDto> orderList();
	
//	오더 정보 삭제
	public void orderDelete(int num);
}
