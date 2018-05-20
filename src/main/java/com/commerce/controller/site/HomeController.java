package com.commerce.controller.site;

import com.commerce.entities.Member;
import com.commerce.security.UserFilter;
import com.commerce.service.MemberManager;
import common.ErrorPage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    MemberManager memberManager = new MemberManager();

    @RequestMapping("/")
    public String index() {
        return "home/index";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        if (!UserFilter.userFilter(request))
            return "home/login";
        return ErrorPage.redirect404;
    }

    @RequestMapping(value = "/loginControl", method = RequestMethod.POST)
    public String loginControl(HttpServletRequest request) {

        String mail = request.getParameter("email");
        String password = request.getParameter("password");

        Member member = memberManager.get(x -> x.getMail().equals(mail) && x.getPassword().equals(password));
        if (mail.isEmpty())
            member = null;

        if (member != null) {
            request.getSession().setAttribute("user", member);
            if (member.isAdmin())
                return "redirect:admin";
            else
                return "redirect:/";
        }
        return "redirect:login";
    }

    @RequestMapping("/signUp")
    public String signUp(HttpServletRequest request, Model model) {
        if (!UserFilter.userFilter(request))
            return "home/signUp";
        return ErrorPage.redirect404;
    }

    @RequestMapping(value = "/logout")
    public String logOut(HttpServletRequest request) {
        request.getSession().setAttribute("user", null);
        return "redirect:/";
    }

    @RequestMapping(value = "/signUpControl", method = RequestMethod.POST)
    public String signUpControl(HttpServletRequest request, Model model) {

        String mail = request.getParameter("email");
        String password = request.getParameter("password");

        if (memberManager.get(x -> x.getMail().equals(mail)) == null) {
            Member member = new Member(mail, password);
            memberManager.insert(member);
            request.getSession().setAttribute("user", member);
            return "redirect:/";
        }
        return "redirect:signUp";
    }

    @RequestMapping("/profile")
    public String memberProfile(HttpServletRequest request) {
        if (UserFilter.userFilter(request)) {
            Member member = (Member) request.getSession().getAttribute("user");
            request.setAttribute("member", memberManager.get(member.getId()));
            return "admin/member/details";
        }
        return ErrorPage.redirect404;
    }

    @RequestMapping("/notfound")
    public String error() {
        return "404";
    }

}
