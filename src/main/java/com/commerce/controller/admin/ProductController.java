package com.commerce.controller.admin;

import javax.servlet.http.HttpServletRequest;

import com.commerce.entities.Product;
import com.commerce.service.CategoryManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.commerce.service.ProductManager;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {

    ProductManager productManager = new ProductManager();
    CategoryManager categoryManager = new CategoryManager();

    @RequestMapping("admin/product/create")
    public String create(Model model) {
        model.addAttribute("categories", categoryManager.getList());
        return "admin/product/create";
    }

    @RequestMapping(value = "admin/product/details", params = {"id"})
    public String productdetails(@RequestParam(value = "id") int id, HttpServletRequest request) {
        request.setAttribute("product", productManager.get(id));
        request.setAttribute("categories", categoryManager.getList());
        return "admin/product/details";
    }


    @RequestMapping(value = "createProduct", method = RequestMethod.POST)
    public @ResponseBody
    void ajaxpostcreate(HttpServletRequest request) {

        Product product = new Product();
        product.setName(request.getParameter("name"));
        product.setTitle(request.getParameter("title"));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setDescription(request.getParameter("description"));
        product.setCategory(categoryManager.get(Integer.parseInt(request.getParameter("categoryId"))));

        productManager.insert(product);
    }

    @RequestMapping(value = "updateProduct", method = RequestMethod.POST)
    public @ResponseBody
    void ajaxpostupdate(HttpServletRequest request) {

        Product product = productManager.get(Integer.parseInt(request.getParameter("id")));
        product.setName(request.getParameter("name"));
        product.setTitle(request.getParameter("title"));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setDescription(request.getParameter("description"));
        product.setCategory(categoryManager.get(Integer.parseInt(request.getParameter("categoryId"))));

        productManager.update(product);
    }

    @RequestMapping(value = "deleteProduct", method = RequestMethod.POST)
    @ResponseBody
    void ajaxpostdelete(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productManager.get(id);
        product.setRemoved(true);
        productManager.update(product);
    }
}
