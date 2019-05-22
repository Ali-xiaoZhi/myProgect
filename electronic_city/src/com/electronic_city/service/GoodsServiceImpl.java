package com.electronic_city.service;

import com.electronic_city.dao.GoodsDao;
import com.electronic_city.dao.GoodsDaoImpl;
import com.electronic_city.pojo.Goods;
import com.electronic_city.pojo.Sort;

import java.util.ArrayList;
//商品实现
public class GoodsServiceImpl implements GoodsService {
    private GoodsDao gd = new GoodsDaoImpl();
    @Override
    public int add(Goods goods) {
        return 0;
    }

    @Override
    public int delete(int goods_id) {
        return 0;
    }

    @Override
    public int update(Goods goods) {
        return 0;
    }

    @Override
    public ArrayList query_byName(String gooos_name) {
        return null;
    }
    //通过id查找商品
    @Override
    public Goods query_byId(int goods_id) {
        return gd.query_byId(goods_id);
    }

    @Override
    public ArrayList query_bySort_four(String sort) {
        return gd.query_bySort_four(sort);
    }
    //按分类查找商品(所有的)
    @Override
    public ArrayList query_bySort_all(String sort) {
        return gd.query_bySort_all(sort);
    }

    @Override
    public int status(int goods_id) {
        return 0;
    }

    @Override
    public Sort query_sort() {
        return null;
    }

    @Override
    public int add_sort(Sort sort) {
        return 0;
    }
}
