package com.electronic_city.dao;

import com.electronic_city.pojo.Order;
import com.electronic_city.pojo.Order_goods;

import java.util.ArrayList;

public interface OrderDao {
    //生成订单
    public int add(Order order);
    //'删除'订单(后台仍可见,会员不可见)
    public int update(int order_id);
    //彻底删除订单(都不可见)
    public int delete(int order_id);
    //修改订单
    public int update(Order order);
    //取消订单
    public int cancel_order(int order_id);
    //查找所有订单
    public ArrayList query_all();
    //根据商品名查找一个订单(模糊)
    public Order query_orderByName(int goods_name);
    //根据订单号查找一个订单
    public Order query_orderById(int order_id);
    //查找同一个订单的商品
    public Order_goods query_goods(int goods_id);
}
