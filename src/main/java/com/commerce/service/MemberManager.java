package com.commerce.service;

import com.commerce.entities.Member;

public class MemberManager extends ServiceManager_<Member> {

    static {
        tClass = Member.class;
    }
}
