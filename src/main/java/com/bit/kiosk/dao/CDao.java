package com.bit.kiosk.dao;

import java.util.ArrayList;

import com.bit.kiosk.dto.CartDto;

public interface CDao {

//	cart 리스트 호출
	public ArrayList<CartDto> cartList();
	
//	cart 삭제
	public void cartDelete(int num);
}
