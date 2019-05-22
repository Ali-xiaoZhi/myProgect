package com.electronic_city.service;

import com.electronic_city.dao.MemberDao;
import com.electronic_city.dao.MemberDaoImpl;
import com.electronic_city.pojo.Member;

public class MemberServiceImpl implements MemberService {
    private MemberDao memberDao = new MemberDaoImpl();
    @Override
    public int registe(Member mb) {

        return memberDao.registe(mb);
    }

    @Override
    public Member loign(String user_name,String pwd) {
        return memberDao.loign(user_name, pwd);
    }

    @Override
    public int delete(int member_id) {
        return memberDao.delete(member_id);
    }
}
