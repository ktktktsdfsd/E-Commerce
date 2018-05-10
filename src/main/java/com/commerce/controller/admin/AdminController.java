package com.commerce.controller.admin;

import com.commerce.security.AdminFilter;
import com.commerce.service.CategoryManager;
import com.commerce.service.MemberManager;
import com.commerce.service.OrderManager;
import com.commerce.service.ProductManager;
import common.ErrorPage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    CategoryManager categoryManager = new CategoryManager();
    ProductManager productManager = new ProductManager();
    MemberManager memberManager = new MemberManager();
    OrderManager orderManager = new OrderManager();

    @RequestMapping("admin")
    public String index(HttpServletRequest request) {
        if (AdminFilter.adminFilter(request))
            return "admin/index";
        return ErrorPage.redirect404;
    }

    @RequestMapping("admin/categories")
    public String categories(HttpServletRequest request, Model model) {
        if (AdminFilter.adminFilter(request)) {
            model.addAttribute("categories", categoryManager.getList());
            return "admin/categories";
        }
        return ErrorPage.redirect404;
    }

    @RequestMapping("admin/members")
    public String members(HttpServletRequest request, Model model) {
        if (AdminFilter.adminFilter(request)) {
            model.addAttribute("members", memberManager.getList());
            return "admin/members";
        }
        return ErrorPage.redirect404;
    }

    @RequestMapping("admin/products")
    public String products(HttpServletRequest request) {
        if (AdminFilter.adminFilter(request)) {
            request.setAttribute("products", productManager.getList());
            return "admin/products";
        }
        return ErrorPage.redirect404;
    }

    @RequestMapping("admin/orders")
    public String orders(HttpServletRequest request) {
        if (AdminFilter.adminFilter(request)) {
            request.setAttribute("orders", orderManager.getList());
            return "admin/orders";
        }
        return ErrorPage.redirect404;
    }

    @RequestMapping("/adminLogout")
    public String logout(HttpServletRequest request) {
        request.getSession().setAttribute("user", null);
        return "redirect:/";
    }
}
