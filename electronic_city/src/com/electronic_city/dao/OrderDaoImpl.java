package com.electronic_city.dao;

import com.electronic_city.pojo.Order;
import com.electronic_city.pojo.Order_goods;

import java.util.ArrayList;

public class OrderDaoImpl extends BaseDao implements OrderDao {
    //生成订单
    @Override
    public int add(Order order) {
        return 0;
    }
    //'删除'订单(后台仍可见,会员不可见)
    @Override
    public int update(int order_id) {
        return 0;
    }
    //彻底删除订单(都不可见)
    @Override
    public int delete(int order_id) {
        return 0;
    }
    //修改订单
    @Override
    public int update(Order order) {
        return 0;
    }
    //取消订单
    @Override
    public int cancel_order(int order_id) {
        return 0;
    }
    //查找所有订单
    @Override
    public ArrayList query_all() {
        return null;
    }
    //根据商品名查找一个订单的所有商品(模糊)
    @Override
    public Order query_orderByName(int goods_name) {
        return null;
    }
    //根据订单号查找一个订单
    @Override
    public Order query_orderById(int order_id) {
        return null;
    }
    //查找同一个订单的商品
    @Override
    public Order_goods query_goods(int goods_id) {
        return null;
    }

}
