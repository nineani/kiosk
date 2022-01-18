package com.bit.kiosk.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.kiosk.dao.ODao;
import com.mysql.cj.log.Log;

@Controller
public class OrderController {

	@Autowired
	SqlSession sqlsession;
	
//	orderList출력
	@RequestMapping(value = "/orderList")
	public String orderList(Model model) {
		ODao oDao = sqlsession.getMapper(ODao.class);
		model.addAttribute("orderList", oDao.orderList());
		return "orderList";
	}
	
//	orderDelete
	@RequestMapping(value = "/orderDelete")
	public String orderDelete(int num) {
		ODao oDao = sqlsession.getMapper(ODao.class);
		oDao.orderDelete(num);
		return "redirect:orderList";
	}
	
}
