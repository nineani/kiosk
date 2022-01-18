package com.bit.kiosk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bit.kiosk.dto.CartDto;

@Controller
public class ConnectController {
	@RequestMapping(value = "/cash")
	public String Cash(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.removeAttribute("totalPrice");
		return "cash";
	}
	
	@RequestMapping(value = "/payForm")
	public String payForm()  {

		return "payForm";
	}
	
	
	
	@RequestMapping(value = "/chatpage")
	public String chatpage() {
		
		return "chatpage";
	}
	
	@RequestMapping(value = "/receipt")
	public String receipt() {
		
		return "receipt";
	}

	@RequestMapping(value = "/paymentProc")
	public String paymentProc() {
		
		return "paymentProc";
	}
	
	@RequestMapping(value = "/payProc")
	public String payProc() {
		
		return "payProc";
	}

	@RequestMapping(value = "/Main/togo")
	public ModelAndView test(HttpServletRequest request) throws Exception {
        
	    HttpSession session = request.getSession();
	    session.setAttribute("o_pickup", "O" );
	 
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("/Main");
	 
	    return mv;
	}
	


	
	
	
}
