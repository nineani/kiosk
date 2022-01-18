package com.bit.kiosk.dao;

import java.util.ArrayList;

import com.bit.kiosk.dto.MenuDto;

public interface MDao {

//	메뉴 insert
	public void insertMenu(String name, String category, String price, String image, String image2, int soldOut, String event);
	
//	메뉴 select
	public ArrayList<MenuDto> menuList();
	
//	메뉴 delete
	public void deleteMenu(int num);
	
//	메뉴 view (상세보기)
	public MenuDto viewMenu(int num);

//	메뉴 modify
	public void modifyMenu(String name, String category, String price, String image, String image2, int soldOut, String event, int num);
	
//	메뉴 Event
	public ArrayList<MenuDto> eventList();



}
