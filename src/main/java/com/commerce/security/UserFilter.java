package com.commerce.security;

import com.commerce.entities.Member;

import javax.servlet.http.HttpServletRequest;

public class UserFilter {

    public static boolean userFilter(HttpServletRequest request) {
        Member member = (Member) request.getSession().getAttribute("user");
        if (member != null)
            return true;
        return false;
    }
}
