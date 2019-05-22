package com.electronic_city.dao;

import java.util.ArrayList;

//图片
public interface PicDao {
    //通过id查找图片
    public ArrayList query_pic(int goods_id);
}
