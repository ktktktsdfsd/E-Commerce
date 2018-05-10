package com.commerce.security;

import com.commerce.entities.Member;

import javax.servlet.http.HttpServletRequest;

public class AdminFilter {

    public static boolean adminFilter(HttpServletRequest request) {
        Member member = (Member) request.getSession().getAttribute("user");
        if (member != null)
            if (member.isAdmin())
                return true;
        return false;
    }
}
