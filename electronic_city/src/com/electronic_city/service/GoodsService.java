package com.electronic_city.service;

import com.electronic_city.pojo.Goods;
import com.electronic_city.pojo.Sort;

import java.util.ArrayList;

public interface GoodsService {
    //添加商品
    public int add(Goods goods);
    //删除商品
    public int delete(int goods_id);
    //修改商品
    public int update(Goods goods);
    //按名称查找商品(模糊)
    public ArrayList query_byName(String gooos_name);
    //按id查找商品
    public Goods query_byId(int goods_id);
    //按分类查找商品(首页4个)
    public ArrayList query_bySort_four(String sort);
    //按分类查找商品(所有的)
    public ArrayList query_bySort_all(String sort);
    //商品上下架(修改)
    public int status(int goods_id);
    //查询所有商品分类
    public Sort query_sort();
    //添加商品分类
    public int add_sort(Sort sort);
}
