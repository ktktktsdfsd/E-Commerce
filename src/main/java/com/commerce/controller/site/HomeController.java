package com.commerce.controller.site;

import com.commerce.entities.Member;
import com.commerce.service.MemberManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String index() {
        return "home/index";
    }

    @RequestMapping("/login")
    public String login() {
        return "home/login";
    }

    @RequestMapping("/loginControl")
    public String login(HttpServletRequest request) {

        MemberManager memberManager = new MemberManager();

        String mail = request.getParameter("email");
        String password = request.getParameter("password");

        Member member = memberManager.get(x -> x.getMail().equals(mail) && x.getPassword().equals(password));

        if (member != null) {
            if (member.isAdmin())
                return "redirect:admin";
            else
                return "redirect:/";

        }
        return "redirect:login";
    }

}
