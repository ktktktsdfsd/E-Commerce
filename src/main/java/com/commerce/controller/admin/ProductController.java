package com.commerce.controller.admin;

import javax.servlet.http.HttpServletRequest;

import com.commerce.entities.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commerce.service.ProductManager;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {

	ProductManager productManager = new ProductManager();
	
	@RequestMapping(value = "admin/product/details", params = {"id"})
    public String memberdetails(@RequestParam(value = "id") int id, HttpServletRequest request) {
        request.setAttribute("product", productManager.get(id));
        return "admin/product/details";
    }

    @RequestMapping("admin/product/update")
    public @ResponseBody
    String ajaxpost(HttpServletRequest request) {

        Product product = productManager.get(Integer.parseInt(request.getParameter("id")));




        productManager.update(product);
        return null;
    }

}
