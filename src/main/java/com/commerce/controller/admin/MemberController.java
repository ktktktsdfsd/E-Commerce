package com.commerce.controller.admin;

import com.commerce.entities.Member;
import com.commerce.security.AdminFilter;
import com.commerce.service.MemberManager;
import common.ErrorPage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MemberController {

    MemberManager memberManager = new MemberManager();

    @RequestMapping(value = "admin/member/details", params = {"id"})
    public String memberdetails(@RequestParam(value = "id") int id, HttpServletRequest request) {
        if (AdminFilter.adminFilter(request)) {
            request.setAttribute("member", memberManager.get(id));
            return "admin/member/details";
        }
        return ErrorPage.redirect404;
    }

    @RequestMapping(value = "updateMember", method = RequestMethod.POST)
    public @ResponseBody
    void ajaxpost(HttpServletRequest request) {

        Member member = memberManager.get(Integer.parseInt(request.getParameter("id")));
        member.setName(request.getParameter("name"));
        member.setSurname(request.getParameter("surname"));
        member.setMail(request.getParameter("mail"));
        member.setPassword(request.getParameter("password"));
        member.setAdress(request.getParameter("adress"));
        memberManager.update(member);
    }

    @RequestMapping(value = "deleteMember", method = RequestMethod.POST)
    @ResponseBody
    void ajaxpostdelete(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Member member = memberManager.get(id);
        member.setRemoved(true);
        memberManager.update(member);
    }

}
