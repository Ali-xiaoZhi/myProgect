package com.electronic_city.dao;

import com.electronic_city.pojo.Picture;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PicDaoImpl extends BaseDao implements PicDao {
    @Override
    public ArrayList query_pic(int goods_id) {
            String sql = "select purl from picture where goods_id=?";
            Object []obj = {goods_id};
            ResultSet rs =executeQuery(sql,obj);
            ArrayList<Picture> pic_list = new ArrayList<>();
            Picture pic ;
            try {
                while(rs.next()){
                    pic = new Picture();
                    pic.setPurl(rs.getString(1));
                    pic_list.add(pic);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return pic_list;
    }
}
