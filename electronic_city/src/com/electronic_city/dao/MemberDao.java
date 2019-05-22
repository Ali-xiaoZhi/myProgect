package com.electronic_city.dao;

import com.electronic_city.pojo.Member;

import java.util.ArrayList;

/**
 * 会员相关操作方法设计
 */
public interface MemberDao {
    //注册(增会员)
    public int registe(Member mb);
    //登录(单查)
    public Member loign(String user_name, String pwd);
    //删会员(后台)
    public int delete (int member_id);
    //修改会员信息(前后台)
    public int update(Member member);
    //多查会员(后台)
    public ArrayList query_all();
    //添加积分
    public int update_point();
}
