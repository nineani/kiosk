package com.bit.kiosk.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bit.kiosk.dto.CartDto;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes({"cart"})
public class CartController {
	
	public int total_price = 0;
	public int total_point = 0;
	
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(
			// cart라는 이름의 Model로 저장 (Request Scope)
			@ModelAttribute CartDto cartDto,
			// 세션에서 cart라는 이름의 Model을 가져와 cart에 할당
			@ModelAttribute("cart") List<CartDto> cart, Model model) {
		// cart라는 Model(ArrayList)에 사용자가 입력한 항목들을 가진 menu 객체를 Add
		cart.add(cartDto);
		total_price+=Integer.parseInt(cartDto.getP_price());
		total_point= total_price/100;
		System.out.println(total_point);
		// localhost:8080/cart로 요청을 보냄
		return "redirect:kioMenu";
	}

	
//	@RequestMapping(value = "remove", method = RequestMethod.POST)
//	public String remove(@ModelAttribute CartDto cartDto,
//			@ModelAttribute("cart") List<CartDto> cart, Model model) {
//		
//		 cart.remove(List<CartDto>);
//	
//
//		return "redirect:kioMenu";
//	}
//
	
//	@RequestMapping(value = "/Cart", method = RequestMethod.POST)
//	public String Cart(Model model, CartDto cartdto, MenuDto menudto) {
//		System.out.println("여기까지 옴 Post");
//		System.out.println(cartdto);
//		System.out.println(menudto);
//		// cart라는 Model(ArrayList)에 사용자가 입력한 항목들을 가진 menu 객체를 Add
//		model.addAttribute("cartdto",cartdto);
//		model.addAttribute("menudto",menudto);
//
//		// localhost:8080/cart로 요청을 보냄
//
//		return "redirect:kioMenu";
//	}
	
//	@RequestMapping(value = "/Cart", method = RequestMethod.GET)
//	public String Cartt(Model model) {
//		System.out.println("여기까지 옴 get");
//		return "Cart";
//	}

}
