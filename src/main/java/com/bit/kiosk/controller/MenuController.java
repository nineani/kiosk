package com.bit.kiosk.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.kiosk.dao.MDao;

@Controller
public class MenuController {

	@Autowired
	SqlSession sqlsession;
	
//	MenuInsert 호출
	@RequestMapping(value = "/menuInsertView")
	public String menu() {
		
		return "menuInsertView";
	}
	
//	MenuList
	@RequestMapping(value = "/menuList")
	public String menuList(Model model) {
		MDao mDao = sqlsession.getMapper(MDao.class);
		model.addAttribute("menuList", mDao.menuList());
		return "menuList";
	}
	
//	insertMenu
	@RequestMapping(value = "/insertMenu")
	public String insertMenu(String name, String category, String price, @RequestParam("image") MultipartFile image, @RequestParam("image2") MultipartFile image2, int soldOut, String event) {
		MDao mDao = sqlsession.getMapper(MDao.class);
		mDao.insertMenu(name, category, price, image.getOriginalFilename(), image2.getOriginalFilename(), soldOut, event);
		
		String localPath = "C:/Spring/kiosk/src/main/webapp/resources/img/";
		System.out.println(localPath);
		Path path = Paths.get(localPath + image.getOriginalFilename());
		Path path1 = Paths.get(localPath + image2.getOriginalFilename());
		
		try {
			Files.write(path, image.getBytes());
			Files.write(path1, image2.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:menuList";
	}
	
//	deleteMenu
	@RequestMapping(value = "/deleteMenu")
	public String deleteMenu(int num) {
		MDao mDao = sqlsession.getMapper(MDao.class);
		mDao.deleteMenu(num);
		return "redirect:menuList";
	}
	
//	viewMenu (상세보기)
	@RequestMapping(value = "/viewMenu")
	public String viewMenu(int num, Model model) {
		MDao mDao = sqlsession.getMapper(MDao.class);
		model.addAttribute("viewMenu", mDao.viewMenu(num));
		return "viewMenu";
	}
	
//	modifyMenu
	@RequestMapping(value = "/modifyMenu")
	public String modify(String name, String category, String price, @RequestParam("image") MultipartFile image, @RequestParam("image2") MultipartFile image2, int soldOut, String event, int num) {
		MDao mDao = sqlsession.getMapper(MDao.class);
		mDao.modifyMenu(name, category, price, image.getOriginalFilename(), image2.getOriginalFilename(), soldOut, event, num);
		String localPath = "C:/Spring/kiosk/src/main/webapp/resources/img/";
		System.out.println(localPath);
		Path path = Paths.get(localPath + image.getOriginalFilename());
		Path path1 = Paths.get(localPath + image2.getOriginalFilename());
		
		try {
			Files.write(path, image.getBytes());
			Files.write(path1, image2.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:menuList";
	}
	
//	event
	@RequestMapping(value = "/eventList")
	public String eventList(String event, Model model) {
		MDao mDao = sqlsession.getMapper(MDao.class);
		model.addAttribute("event", mDao.eventList());
		return "eventList";
	}
}
