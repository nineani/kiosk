package com.bit.kiosk.dao;

import java.util.ArrayList;

import com.bit.kiosk.dto.UserDto;

public interface UDao {

//	회원 정보 출력
	public ArrayList<UserDto> userList();

//	회원 가입 심심해서 해봄
	public void signUp(String id, String pw, String name, String birth, String email, String address, String phone);

//	회원 정보 상세보기
	public UserDto userView(int num);

//	회원 정보 수정
	public void userUpdate(String id, String pw, String name, String birth, String email, String address, String phone, int num);

//	회원 정보 삭제
	public void userDelete(int num);

}
