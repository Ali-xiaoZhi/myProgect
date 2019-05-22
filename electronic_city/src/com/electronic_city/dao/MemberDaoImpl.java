package com.electronic_city.dao;

import com.electronic_city.pojo.Member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
//会员
public class MemberDaoImpl extends BaseDao implements MemberDao {
    //注册
    @Override
    public int registe(Member mb) {
        String sql = "insert into member values(default,?,?,?,default,?,?,default,default)";
        Object[] obj = {mb.getMember_nick(), mb.getMember_name(), mb.getPassword(), mb.getPhone(), mb.getEmail()};
        return executeUpdate(sql, obj);
    }
    //登录
    @Override
    public Member loign(String user_name,String pwd)  {
        String sql = "select * from member where member_name=? and password=?";
        Object[] obj = {user_name,pwd};
        ResultSet rs =executeQuery(sql,obj);
        try {
            if (rs.next()) {
                Member mb = new Member();
                mb.setMember_id(rs.getInt(1));
                mb.setMember_nick(rs.getString(2));
                mb.setAddress(rs.getString(5));
                mb.setPhone(rs.getString(6));
                mb.setEmail(rs.getString(7));
                mb.setPoints(rs.getInt(8));
                mb.setHead_pic_url(rs.getString(9));
                System.out.println(mb.getMember_id());

                return mb;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //删除
    @Override
    public int delete(int member_id) {
        String sql = "delete from member where member_id=?";
        Object [] obj = {member_id};
        return executeUpdate(sql,obj);
    }
    //修改
    @Override
    public int update(Member member) {
        return 0;
    }
    //查找所有
    @Override
    public ArrayList query_all() {
        return null;
    }
    //添加积分
    @Override
    public int update_point() {
        return 0;
    }

}
