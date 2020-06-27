package com.controller;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.service.GoodService;
import com.service.OrderService;
import com.service.TypeService;
import com.service.UserService;

@Controller
@RequestMapping("/index")
public class PayController {

	@Resource
	private UserService userService;
	@Resource
	private OrderService orderService;
	@Resource
	private GoodService goodService;
	@Resource
	private TypeService typeService;
	
	@RequestMapping(value="/close",method=RequestMethod.POST)
	public String close(ServletRequest request, Model model) {
	
	
		return "/index/pay/alipay.trade.close.jsp";
		
		
		
	}
	@RequestMapping(value="/refundquery",method=RequestMethod.POST)
	public String back(ServletRequest request, Model model) {
	
	
		return "/index/pay/alipay.trade.fastpay.refund.query.jsp";
		
		
		
	}
	@RequestMapping(value="/refund",method=RequestMethod.POST)
	public String refund(ServletRequest request, Model model) {
	
	
		return "/index/pay/alipay.trade.refund.jsp";
		
		
		
	}
	@RequestMapping(value="/query",method=RequestMethod.POST)
	public String query(ServletRequest request, Model model) {
	
	
		return "/index/pay/alipay.trade.query.jsp";
		
		
		
	}
	@RequestMapping(value="/alipay",method=RequestMethod.POST)
	public String payage(ServletRequest request, Model model) {
	
	
		return "/index/pay/alipay.trade.page.pay.jsp";
		
		
		
	}
	@RequestMapping(value="/notify",method=RequestMethod.POST)
	public String notify(ServletRequest request, Model model) {
	
	
		return "/index/pay/alipay.trade.notify_url.jsp";
		
		
		
	}

}
