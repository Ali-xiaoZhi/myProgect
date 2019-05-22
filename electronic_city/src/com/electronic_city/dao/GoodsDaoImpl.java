package com.electronic_city.dao;

import com.electronic_city.pojo.Goods;
import com.electronic_city.pojo.Sort;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//商品
public class GoodsDaoImpl extends BaseDao implements GoodsDao {
    //添加
    @Override
    public int add(Goods goods) {
        return 0;
    }
    //删除
    @Override
    public int delete(int goods_id) {
        return 0;
    }
    //修改
    @Override
    public int update(Goods goods) {
        return 0;
    }
    //按名称查找商品(模糊)
    @Override
    public ArrayList query_byName(String gooos_name) {
        return null;
    }
    //按id查找商品
    @Override
    public Goods query_byId(int goods_id) {
        String sql = "select * from goods where goods_id=? and status=1";
        Object []obj = {goods_id};
        ResultSet rs =executeQuery(sql,obj);
        Goods gds = new Goods();;
        try {
            while(rs.next()){

                gds.setGoods_id(rs.getInt(1));
                gds.setGoods_name(rs.getString(2));
                gds.setGoods_subtitle(rs.getString(3));
                gds.setPrice(rs.getFloat(5));
                gds.setInventory(rs.getInt(6));
                gds.setGoods_detail(rs.getString(7));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return gds;
    }

    //按分类查找商品(首页)
    @Override
    public ArrayList query_bySort_four(String sort) {
        ArrayList goods_list = new ArrayList();
        String sql = "select goods.goods_id,goods_name,goods_subtitle,price,inventory,goods_detail,purl,sale\n" +
                "from goods left join picture on goods.goods_id=picture.goods_id where sort_id like ? and status=1 " +
                "GROUP BY goods.goods_id order by sale desc limit 0,4";
        Object []obj = {sort+"_"};
        ResultSet rs =executeQuery(sql,obj);

        try {
            while(rs.next()){
                Goods gds = new Goods();
                gds.setGoods_id(rs.getInt(1));
                gds.setGoods_name(rs.getString(2));
                gds.setGoods_subtitle(rs.getString(3));
                gds.setPrice(rs.getFloat(4));
                gds.setInventory(rs.getInt(5));
                gds.setGoods_detail(rs.getString(6));
                gds.setPic(rs.getString(7));
                gds.setSale(rs.getInt(8));
                goods_list.add(gds);
        }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return goods_list;
    }
    //按分类查找商品(所有的)
    @Override
    public ArrayList query_bySort_all(String sort) {
        ArrayList goods_list = new ArrayList();
        String sql = "select goods.goods_id,goods_name,goods_subtitle,price,inventory,goods_detail,purl\n" +
                "from goods left join picture on goods.goods_id=picture.goods_id where sort_id like ? and status=1 " +
                "GROUP BY goods.goods_id order by sale desc";
        Object []obj = {sort+"_"};
        ResultSet rs =executeQuery(sql,obj);

        try {
            while(rs.next()){
                Goods gds = new Goods();
                gds.setGoods_id(rs.getInt(1));
                gds.setGoods_name(rs.getString(2));
                gds.setPrice(rs.getFloat(4));
                gds.setPic(rs.getString(7));
                goods_list.add(gds);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return goods_list;
    }
    //上下架
    @Override
    public int status(String goods_id) {
        return 0;
    }
    //查找分类
    @Override
    public Sort query_sort() {
        return null;
    }
    //添加分类
    @Override
    public int add_sort(Sort sort) {
        return 0;
    }
}
