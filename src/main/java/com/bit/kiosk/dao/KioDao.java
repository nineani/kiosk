package com.bit.kiosk.dao;

import java.util.ArrayList;

import com.bit.kiosk.dto.MenuDto;

public interface KioDao {
	
	//	메뉴 select
	public ArrayList<MenuDto> findMenuAll();
	public ArrayList<String> findCategoryList();
	
	//메뉴출력
	public ArrayList<MenuDto> kioMenu(String p_category);
	
	public MenuDto kioNum(int p_num);
	
}
