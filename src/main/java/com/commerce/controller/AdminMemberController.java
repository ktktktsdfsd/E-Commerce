package com.commerce.controller;

import com.commerce.service.MemberManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminMemberController {

    MemberManager memberManager = new MemberManager();

    @RequestMapping(value = "admin/member/details", params = {"id"})
    public String memberdetails(@RequestParam(value = "id") int id, HttpServletRequest request) {
        request.setAttribute("member", memberManager.get(id));
        return "admin/member/details";
    }
}
