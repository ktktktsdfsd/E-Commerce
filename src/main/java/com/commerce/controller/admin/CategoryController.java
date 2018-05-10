package com.commerce.controller.admin;

import com.commerce.entities.Category;
import com.commerce.security.AdminFilter;
import com.commerce.service.CategoryManager;
import com.commerce.service.ProductManager;
import common.ErrorPage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CategoryController {

    CategoryManager categoryManager = new CategoryManager();

    @RequestMapping("admin/category/create")
    public String create(HttpServletRequest request) {
        if (AdminFilter.adminFilter(request))
            return "admin/category/create";
        return ErrorPage.redirect404;
    }

    @RequestMapping(value = "createCategory", method = RequestMethod.POST)
    public @ResponseBody
    void ajaxpostcreate(HttpServletRequest request) {
        categoryManager.insert(new Category(request.getParameter("name")));
    }

    @RequestMapping(value = "admin/category/update", params = {"id"})
    public String update(@RequestParam(value = "id") int id, HttpServletRequest request) {
        if (AdminFilter.adminFilter(request)){
            request.setAttribute("category", categoryManager.get(id));
            return "admin/category/update";
        }
        return ErrorPage.redirect404;
    }

    @RequestMapping(value = "updateCategory", method = RequestMethod.POST)
    public @ResponseBody
    void ajaxpostupdate(HttpServletRequest request) {
        Category category = categoryManager.get(Integer.parseInt(request.getParameter("id")));
        category.setName(request.getParameter("name"));

        categoryManager.update(category);
    }

    @RequestMapping(value = "deleteCategory", method = RequestMethod.POST)
    @ResponseBody
    String ajaxpostdelete(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        int count = categoryManager.get(id).getProductList().size();
        if (count > 0)
            return "ERROR";
        categoryManager.delete(id);
        return "OK";
    }
}
