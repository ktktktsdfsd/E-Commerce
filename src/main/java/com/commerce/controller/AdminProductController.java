package com.commerce.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commerce.service.ProductManager;

@Controller
public class AdminProductController {

	ProductManager productManager = new ProductManager();
	
	@RequestMapping(value = "admin/product/details", params = {"id"})
    public String memberdetails(@RequestParam(value = "id") int id, HttpServletRequest request) {
        request.setAttribute("product", productManager.get(id));
        return "admin/product/details";
    }
}
