package com.commerce.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commerce.service.CategoryManager;

@Controller
public class AdminCategoryController {
	CategoryManager categoryManager = new CategoryManager();

	@RequestMapping(value = "admin/category/details", params = { "id" })
	public String memberdetails(@RequestParam(value = "id") int id, HttpServletRequest request) {
		request.setAttribute("category", categoryManager.get(id));
		return "admin/category/details";
	}

}
