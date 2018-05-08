package com.commerce.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commerce.service.OrderManager;

@Controller
public class AdminOrderController {
	    
	    OrderManager orderManager = new OrderManager();
	     
	    @RequestMapping(value = "admin/order/details", params = {"id"})
	    public String memberdetails(@RequestParam(value = "id") int id, HttpServletRequest request) {
	        request.setAttribute("order", orderManager.get(id));
	        return "admin/order/details";
	    }
}
