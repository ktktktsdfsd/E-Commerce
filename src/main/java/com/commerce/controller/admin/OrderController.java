package com.commerce.controller.admin;

import com.commerce.entities.Order;
import com.commerce.service.OrderManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class OrderController {

    OrderManager orderManager = new OrderManager();

    @RequestMapping(value = "admin/order/details", params = {"id"})
    public String memberdetails(@RequestParam(value = "id") int id, HttpServletRequest request) {
        request.setAttribute("order", orderManager.get(id));
        return "admin/order/details";
    }

    @RequestMapping(value = "deleteOrder", method = RequestMethod.POST)
    @ResponseBody
    void ajaxpostdelete(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Order order = orderManager.get(id);
        order.setRemoved(true);
        orderManager.update(order);
    }
}
