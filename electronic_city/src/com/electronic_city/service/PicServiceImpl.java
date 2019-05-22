package com.electronic_city.service;

import com.electronic_city.dao.PicDao;
import com.electronic_city.dao.PicDaoImpl;

import java.util.ArrayList;

public class PicServiceImpl implements PicService {
    PicDao pd = new PicDaoImpl();
    @Override
    public ArrayList query_pic(int goods_id) {
        return pd.query_pic(goods_id);
    }
}
