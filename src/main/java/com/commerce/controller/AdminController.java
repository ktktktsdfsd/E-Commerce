package com.commerce.controller;

import com.commerce.service.CategoryManager;
import com.commerce.service.MemberManager;
import com.commerce.service.OrderManager;
import com.commerce.service.ProductManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class AdminController {

    CategoryManager categoryManager = new CategoryManager();
    ProductManager productManager = new ProductManager();
    MemberManager memberManager = new MemberManager();
    OrderManager orderManager = new OrderManager();

    @RequestMapping("admin")
    public String index() {

        return "admin/index";
    }

    @RequestMapping("admin/categories")
    public String categories(Model model) {
        model.addAttribute("categories", categoryManager.getList());
        return "admin/categories";
    }

    @RequestMapping("admin/members")
    public String members(Model model) {
        model.addAttribute("members", memberManager.getList());
        return "admin/members";
    }

    @RequestMapping("admin/products")
    public String products(HttpServletResponse response, HttpServletRequest request) {
        request.setAttribute("products", productManager.getList());
        return "admin/products";
    }

    @RequestMapping("admin/orders")
    public String orders(HttpServletRequest request) {
        request.setAttribute("orders", orderManager.getList());
        return "admin/orders";
    }

}
