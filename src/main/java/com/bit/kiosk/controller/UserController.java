package com.bit.kiosk.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.kiosk.dao.UDao;

@Controller
public class UserController {

	@Autowired
	private SqlSession sqlSession;
	
//	main 호출
	@RequestMapping(value = "/adminMain")
	public String adminMain() {
		
		return "adminMain";
	}
	
//	유저 소환
	@RequestMapping(value = "/userList")
	public String userList(Model model) {
		UDao dao = sqlSession.getMapper(UDao.class);
		model.addAttribute("userList", dao.userList());
		return "userList";
	}
	
//	유저 정보 입력창
	@RequestMapping(value = "/signUpView")
	public String signUpView() {
		
		return "signUpView"; //signUp.jsp 호출
	}
	
//	유저 정보 처리 (가입)
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUp(String id, String pw, String name, String birth, String email, String address, String phone) {
		int Unum = (int)(Math.random() * 80000);
		UDao dao = sqlSession.getMapper(UDao.class);
		dao.signUp(id, pw, name, birth, email, address, phone);
		return "redirect:userList";
	}
	
//	유저 정보 (상세보기)
	@RequestMapping(value = "/userView")
	public String userView(int num, Model model) {
		UDao dao = sqlSession.getMapper(UDao.class);
		model.addAttribute("userView", dao.userView(num));
		return "userView";
	}
	
//	유저 정보 수정
	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
	public String userUpdate(String id, String pw, String name, String birth, String email, String address, String phone, int num) {
		UDao dao = sqlSession.getMapper(UDao.class);
		dao.userUpdate(id, pw, name, birth, email, address, phone, num);
		return "redirect:userList";
	}
	
//	유저 정보 삭제
	@RequestMapping(value = "/userDelete")
	public String userDelete(int num) {
		UDao dao = sqlSession.getMapper(UDao.class);
		dao.userDelete(num);
		return "redirect:userList";
	}
	
	
	@GetMapping("/menu")
	public String menu() { 
		
		return "img";
	}
	
	@PostMapping("/imgInsert")
	public String insert(@RequestParam("file") MultipartFile file) { 
		System.out.println(file.getOriginalFilename());
		//중복 방지를 위한 UUID클래스 (파일명과 임의의 랜덤문자열과 더한다)
        UUID uuid = UUID.randomUUID();
        String uuidFileName = uuid + "_" + file.getOriginalFilename();
        //파일을 저장할 경로
        String LocalFilePath = "C://Spring//workspace-sts-3.9.17.RELEASE//kiosk//target//m2e-wtp//web-resources//";
        //파일경로와 UUID를 붙인 파일명을 지정한다
        Path filePath = Paths.get(LocalFilePath + uuidFileName);
        //파일저장
        try {
			Files.write(filePath,file.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "img";
	}
	
//	/admin/test 호출연습
	@RequestMapping(value = "test")
	public String test() {
		return "admin/test";
	}
	
}
