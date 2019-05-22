package com.electronic_city.service;

import com.electronic_city.pojo.Member;

public interface MemberService {
    //注册(增会员)
    public int registe(Member mb);
    //登录(单查)
    public Member loign(String user_name,String pwd);
    //删会员
    public int delete (int member_id);

    //改会员
    //多查会员
}
